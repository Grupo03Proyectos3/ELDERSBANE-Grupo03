#include "Enemy.h"
#include "ECS/ManagerFunctions.h"

#include "FlamingoBase/Scene.h"
#include "FlamingoBase/SceneManager.h"
#include "FlamingoExport/FlamingoCore.h"
#include "PlayerMovement.h"

namespace Eldersbane
{
    Enemy::Enemy()
        : BehaviourScript()
    {
    }

    Enemy::~Enemy()
    {
    }

    Flamingo::BehaviourScript* Enemy::clone()
    {
        return new Enemy();
    }

    void Enemy::start()
    {
        m_tr = Flamingo::getComponent<Flamingo::Transform>(this->gameObject());
        auto b = Flamingo::getComponent<Eldersbane::BlueEnemy>(this->gameObject());
        auto r = Flamingo::getComponent<Eldersbane::RedEnemy>(this->gameObject());
        auto p = Flamingo::getComponent<Eldersbane::PurpleEnemy>(this->gameObject());
        auto k = Flamingo::getComponent<Eldersbane::BlackEnemy>(this->gameObject());
        if (b != nullptr)
            m_damage = b->getDamage();
        else if (r != nullptr)
            m_damage = r->getDamage();
        else if (p != nullptr)
            m_damage = p->getDamage();
        else if (k != nullptr)
            m_damage = k->getDamage();

        auto m_sceneMngr = Flamingo::FlamingoCore::getSceneManager();
        m_tr_player = Flamingo::getComponent<Flamingo::Transform>(m_sceneMngr->getSceneActive()->getObject("player"));
        m_max_distance = 1500.0f;
        m_time_last_dir = 0;
        m_time_last_move = 0;
        m_velocity = Flamingo::SVector3(0, 0, 0);
        m_wandering = true;
        m_attacking = false;
        m_lives = 2;
    }

    void Enemy::update(float t_delta_time)
    {
        checkDistance(m_tr_player->getPosition());
        if (m_attacking)
            attack();
        else
            enemyMovement(t_delta_time);
    }

    void Enemy::onCollisionEnter(Flamingo::GameObject* t_other)
    {
        if (Flamingo::hasComponent<Eldersbane::PlayerMovement>(t_other))
        {
            std::cout << "Choque: Jugador-Enemigo  " << m_lives << std::endl;
            //m_lives--;
            m_attacking = true;
            getDamage();
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
        // std::cout << distancia << std::endl;
        if (distancia >= m_max_distance)
        {
            m_attacking = false;
            m_wandering = true;
        }
        // Sigue al jugador
        else if (distancia <= m_max_distance && !m_attacking)
        {
            followPlayer(t_player_pos);
            m_wandering = false;
        }
        // Si esta al lado, no merodea sino ataca
        else
            m_wandering = false;
    }

    void Enemy::followPlayer(Flamingo::SVector3 t_player_pos)
    {
       // std::cout << "Te estoy siguiendo: X" << t_player_pos.getX() << " Y" << t_player_pos.getY() << "Z"<< t_player_pos.getZ() << std::endl;
        m_direction =
            {t_player_pos.getX() - m_tr->getPosition().getX(),
             t_player_pos.getY() - m_tr->getPosition().getY(),
             t_player_pos.getZ() - m_tr->getPosition().getZ()};
        m_direction.normalize();
    }

    void Enemy::attack()
    {
        /* std::cout << "ATAQUE" << std::endl;
        getDamage();*/
    }

    void Enemy::getDamage()
    {
        if (isAlive())
        {
            m_lives-=m_damage;
        }
        else
        {
            m_ent->setActive(false);
            m_ent->setAlive(false);
        }
    }

    bool Enemy::isAlive()
    {
        return !(m_lives <= 0);
    }

    void Enemy::enemyMovement(float t_delta_time)
    {
        m_time_last_dir += t_delta_time;
        // std::cout << m_timeSinceLastDirectionChange << std::endl;
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
                m_tr->translate(Flamingo::SVector3(m_velocity * t_delta_time));
            }
            else
            {
                m_velocity = Flamingo::SVector3(0, 0, 0);
            }
        }
        else if (!m_wandering && !m_attacking)
        {
            // Asigna una velocidad constante a lo largo de esta direcci�n
            m_velocity = m_direction * 0.2f;
            m_tr->translate(Flamingo::SVector3(m_velocity * t_delta_time));
        }
    }

   
} // namespace Eldersbane
