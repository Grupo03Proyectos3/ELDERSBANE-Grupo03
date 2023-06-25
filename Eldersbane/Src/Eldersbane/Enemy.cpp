#include "Enemy.h"
#include "ECS/ManagerFunctions.h"

#include "FlamingoBase/Scene.h"
#include "FlamingoBase/SceneManager.h"
#include "FlamingoExport/FlamingoCore.h"
#include "PlayerMovement.h"
#include <FlamingoUtils/SVector2.h>

namespace Eldersbane
{
    Enemy::Enemy()
        : BehaviourScript()
    {
    }

    Enemy::~Enemy()
    {
        delete m_tree_attack_timer;
    }

    Flamingo::BehaviourScript* Enemy::clone()
    {
        return new Enemy();
    }
    bool Eldersbane::Enemy::initValues(std::unordered_map<std::string, std::string> t_args)
    {
        auto it_speed = t_args.find("t_speed");
        auto it_dist = t_args.find("t_max_distance");

        if (it_speed != t_args.end() && it_dist != t_args.end())
        {
            m_speed = std::stof(it_speed->second);
            m_max_distance = std::stof(it_dist->second);
            return true;
        }

        return false;
    }
    void Enemy::start()
    {
        m_tr = Flamingo::getComponent<Flamingo::Transform>(this->gameObject());

        auto m_sceneMngr = Flamingo::FlamingoCore::getSceneManager();
        m_tr_player = Flamingo::getComponent<Flamingo::Transform>(m_sceneMngr->getSceneActive()->getObject("player"));

        m_time_last_dir = 0;
        m_time_last_move = 0;
        m_velocity = Flamingo::SVector3(0, 0, 0);
        m_wandering = true;
        m_attacking = false;

        m_tree_attack_timer = new Flamingo::Timer();

        m_blue_enemy = Flamingo::getComponent<Eldersbane::BlueEnemy>(this->gameObject());
        m_red_enemy = Flamingo::getComponent<Eldersbane::RedEnemy>(this->gameObject());
        m_purple_enemy = Flamingo::getComponent<Eldersbane::PurpleEnemy>(this->gameObject());
        m_black_enemy = Flamingo::getComponent<Eldersbane::BlackEnemy>(this->gameObject());
        m_tree_enemy = Flamingo::getComponent<Eldersbane::TreeEnemy>(this->gameObject());
        if (m_blue_enemy != nullptr)
        {
            m_damage = m_blue_enemy->getDamage();
            m_lives = m_blue_enemy->getLives();
        }
        else if (m_red_enemy != nullptr)
        {
            m_damage = m_red_enemy->getDamage();
            m_lives = m_red_enemy->getLives();
        }
        else if (m_purple_enemy != nullptr)
        {
            m_damage = m_purple_enemy->getDamage();
            m_lives = m_purple_enemy->getLives();
        }
        else if (m_black_enemy != nullptr)
        {
            m_damage = m_black_enemy->getDamage();
            m_lives = m_black_enemy->getLives();
        }
        else if (m_tree_enemy != nullptr)
        {
            m_damage = m_tree_enemy->getDamage();
            m_lives = m_tree_enemy->getLives();
            m_tree_attack_cooldown = m_tree_enemy->getCooldown();
        }

        auto anim = Flamingo::getComponent<Flamingo::Animator>(gameObject());
        if (anim)
            anim->setAnimation("my_animation", true, true);

        m_dyingAnimation = false;
        m_currentDyingSteps = 0;
        m_totalDyingSteps = 30;
    }

    void Enemy::update(float t_delta_time)
    {
        checkDistance(m_tr_player->getPosition());
        if (!m_attacking && !m_dyingAnimation)
            enemyMovement(t_delta_time);
        if (m_dyingAnimation)
            dyingAnimation();
    }

    void Enemy::onCollisionEnter(Flamingo::GameObject* t_other)
    {
        if (m_tree_enemy == nullptr)
        {
            if (Flamingo::hasComponent<Eldersbane::PlayerMovement>(t_other))
            {
                m_attacking = true;
            }
        }
    }

    void Enemy::onCollisionExit(Flamingo::GameObject* t_other)
    {
        if (Flamingo::hasComponent<Eldersbane::PlayerMovement>(t_other))
        {
            m_attacking = false;
        }
    }

    void Enemy::checkDistance(Flamingo::SVector3 t_player_pos)
    {
        double distancia = Flamingo::SVector3::distance(m_tr->getPosition(), t_player_pos);
        if (distancia >= m_max_distance)
        {
            m_attacking = false;
            m_wandering = true;
        }
        // Si esta cerca
        else if (distancia <= m_max_distance && !m_attacking)
        {
            // si es Makoy le sigue
            if (m_tree_enemy == nullptr)
                followPlayer(t_player_pos);
            // si es Arbol mágico le ataca con manzanas
            else
            {
                m_wandering = false;
                m_attacking = true;
                m_tree_attack_timer->reset();
                treeAttackPlayer(t_player_pos);
            }
        }
        // Si esta al lado, no merodea sino ataca
        else
            m_wandering = false;
    }

    void Enemy::followPlayer(Flamingo::SVector3 t_player_pos)
    {
        m_direction =
            {t_player_pos.getX() - m_tr->getPosition().getX(),
             t_player_pos.getY() - m_tr->getPosition().getY(),
             t_player_pos.getZ() - m_tr->getPosition().getZ()};
        m_direction.normalize();
    }

    void Enemy::treeAttackPlayer(Flamingo::SVector3 t_player_pos)
    {
        if (m_tree_attack_timer->getElapsedTime() >= m_tree_attack_cooldown)
        {
            // LANZAR MANZANA
            auto m_apple = Flamingo::getComponent<Apple>(Flamingo::FlamingoCore::getSceneManager()->getSceneActive()->getObject("Manzana"));
            m_direction =
                {t_player_pos.getX() - m_tr->getPosition().getX(),
                 t_player_pos.getY() - m_tr->getPosition().getY(),
                 t_player_pos.getZ() - m_tr->getPosition().getZ()};
            m_direction.normalize();
            m_apple->addVelocity({200000, 0, 0});
            m_tree_attack_timer->reset();
        }
    }

    int Enemy::getDamage()
    {
        return m_damage;
    }

    void Enemy::recieveDamage(int t_damage)
    {
        m_lives -= t_damage;
        if (m_lives <= 0)
        {
            m_dyingAnimation = true;
            m_reductionPercent = m_tr->getScale().getX() / m_totalDyingSteps;
        }
    }

    bool Enemy::isAlive()
    {
        return !(m_lives <= 0);
    }

    void Enemy::enemyMovement(float t_delta_time)
    {
        m_time_last_dir += t_delta_time;
        if (m_wandering && !m_attacking)
        {
            //  Si ha pasado suficiente tiempo, cambia la direccion del enemigo
            if (m_time_last_dir >= 5000.0f)
            {
                float x = ((float)rand() / RAND_MAX) * 2.0f - 1.0f;
                float y = 0;
                float z = ((float)rand() / RAND_MAX) * 2.0f - 1.0f;

                // Crea un vector con estos valores y normal�zalo
                m_direction = Flamingo::SVector3(x, y, z);
                m_direction.normalize();

                // Asigna una velocidad constante a lo largo de esta direcci�n
                m_velocity = m_direction * 0.2f;

                // Reinicia el contador de tiempo
                m_time_last_dir = 0;
            }
            //   Mueve el enemigo mientras no haya pasado suficiente tiempo
            if (m_time_last_dir < 2000.0f)
            {
                m_tr->translate(Flamingo::SVector3(m_velocity * t_delta_time * m_speed));
            }
            else
            {
                m_velocity = Flamingo::SVector3(0, 0, 0);
            }
        }
        else if (!m_wandering && !m_attacking && m_tree_enemy == nullptr)
        {
            // Asigna una velocidad constante a lo largo de esta direcci�n
            m_velocity = m_direction * 0.2f;
            m_tr->translate(Flamingo::SVector3(m_velocity * t_delta_time * m_speed));
        }

        lookAtWhereIAmMoving();
    }

    void Enemy::dyingAnimation()
    {
        if (m_currentDyingSteps >= m_totalDyingSteps)
        {
            gameObject()->setAlive(false);
        }
        else
        {
            m_currentDyingSteps++;

            m_tr->setScale(m_tr->getScale() -
                           Flamingo::SVector3(m_reductionPercent, m_reductionPercent, m_reductionPercent));
        }
    }

    void Enemy::lookAtWhereIAmMoving()
    {
        Flamingo::SVector2 vNorm = {m_velocity.getX(), m_velocity.getZ()};
        vNorm.normalize();
        double degrees = atan2(vNorm.getX(), vNorm.getY()) * 180 / 3.1415926535;
        Flamingo::SQuaternion q = {degrees, Flamingo::SVector3(0, 1, 0)};
        Flamingo::SQuaternion q1 = {-90, Flamingo::SVector3(1, 0, 0)};
        q *= q1;
        m_tr->setRotation(q);
    }
} // namespace Eldersbane
