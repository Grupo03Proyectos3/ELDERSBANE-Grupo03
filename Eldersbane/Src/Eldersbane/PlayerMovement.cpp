#include "PlayerMovement.h"
#include "ECS/ManagerFunctions.h"
#include <ECS/InputHandlerContainer.h>
#include <FlamingoBase/SceneManager.h>
#include <FlamingoExport/FlamingoCore.h>
#include <FlamingoUtils/FlamingoKeys.h>

#include "BluePotion.h"
#include "FlowersEnemy.h"
#include "RedPotion.h"
#include <FlamingoUtils/SVector2.h>
#include <cmath>

namespace Eldersbane
{
    PlayerMovement::PlayerMovement()
    {
    }

    PlayerMovement::~PlayerMovement()
    {
    }

    Flamingo::BehaviourScript* PlayerMovement::clone()
    {
        return new PlayerMovement();
    }
    bool Eldersbane::PlayerMovement::initValues(std::unordered_map<std::string, std::string> t_args)
    {
        auto it_speed = t_args.find("t_speed");
        auto it_sens = t_args.find("t_sensitivity");

        if (it_speed != t_args.end() && it_sens != t_args.end())
        {
            m_speed = std::stof(it_speed->second);
            m_sensitivity = std::stof(it_sens->second);

            return true;
        }

        return false;
    }
    void PlayerMovement::start()
    {
        m_transform = Flamingo::getComponent<Flamingo::Transform>(this->gameObject());
        m_animator = Flamingo::getComponent<Flamingo::Animator>(this->gameObject());
        percentRotate = 0;
        m_camera = Flamingo::getComponent<Flamingo::Camera>(Flamingo::FlamingoCore::getSceneManager()->getSceneActive()->getObject("myCamera"));
        auto sword_obj = Flamingo::FlamingoCore::getSceneManager()->getSceneActive()->getObject("sword");
        if (sword_obj != nullptr)
            m_sword = Flamingo::getComponent<Eldersbane::Sword>(sword_obj); // m_camera->lookAt({0, 0, 0}, Flamingo::WORLD);

        m_camera->setTarget(gameObject());
        m_camera->setOffset({-700, -200, 0});
        m_camera->FollowTarget();
        m_rb = Flamingo::getComponent<Flamingo::RigidBody>(this->gameObject());
        m_rb->setKinematic(true);
        m_animator->setAnimation("Atacar", true, true);
        m_forward = {1, 0, 0};
        m_right = {0, 0, 1};
        controlAnim = false;
        m_transform->setPosition({m_transform->getPosition().getX(), m_transform->getPosition().getY(), m_transform->getPosition().getZ()});

        m_forward = getOrientation(percentRotate);
        m_right = getOrientation(percentRotate + 90);

        m_key_left = Flamingo::FLM_a;
        m_key_right = Flamingo::FLM_d;
        m_key_up = Flamingo::FLM_w;
        m_key_down = Flamingo::FLM_s;

        m_keys_changed = false;
        m_time_keys = 0;

        m_dash_sound = Flamingo::getComponent<Flamingo::AudioSource>(Flamingo::FlamingoCore::getSceneManager()->getSceneActive()->getObject("AudioDash"));
        m_parts = Flamingo::getComponent<Flamingo::ParticleSystem>(this->gameObject());
        
    }

    void PlayerMovement::update(float t_deltaTime)
    {
        Flamingo::SVector3 traslation = {0, 0, 0};
        double rotacion;
        if (m_sword != nullptr && m_sword->gameObject()->getActive())
        {
            controlAnim = true;
            m_animator->setAnimation("Correr", false, false);
            m_animator->setAnimation("Atacar", true, true);
        }
        else if ((m_sword != nullptr && !m_sword->gameObject()->getActive()))
        {
            controlAnim = false;
            m_animator->setAnimation("Atacar", false, false);
            m_animator->setAnimation("Correr", true, true);
        }
        // Rotacion del jugador
        if (Flamingo::Input().mouseMotionEvent())
        { // rotar al player
            lookAtMouse(t_deltaTime);
        }

        if (Flamingo::Input().isKeyDown(m_key_left))
        {
            traslation += m_right;
        }
        else if (Flamingo::Input().isKeyDown(m_key_right))
        {
            traslation -= m_right;
        }
        if (Flamingo::Input().isKeyDown(m_key_up))
        {
            traslation += m_forward;
        }
        else if (Flamingo::Input().isKeyDown(m_key_down))
        {
            traslation -= m_forward;
        }
        else if (Flamingo::Input().isKeyDown(Flamingo::FLM_g))
        {
            m_key_up = Flamingo::FLM_c;
        }

        traslation = traslation.normalized() * m_speed * t_deltaTime;

        traslation = Flamingo::SVector3(traslation.getX(), 0, traslation.getZ());

        m_transform->translate(traslation, Flamingo::LOCAL);

        m_camera->FollowTarget();

        timerKeys(t_deltaTime);

        if (m_is_dashing)
        {
            m_dash_timer -= t_deltaTime;

            if (m_dash_timer <= 0.0f)
            {
                m_is_dashing = false;
            }
        }

        if (Flamingo::Input().isKeyDown(Flamingo::FLM_o) && !m_is_dashing)
        {
            // Realizar el dash
            performDash();
        }
        m_parts->updatePosition();
       
    }
    void PlayerMovement::onCollisionEnter(Flamingo::GameObject* t_other)
    {
        if (auto bluePotion = Flamingo::getComponent<Eldersbane::BluePotion>(t_other))
        {
            m_speed *= bluePotion->getSpeedMultiplier();
            t_other->setAlive(false);
        }
        else if (auto flower = Flamingo::getComponent<Eldersbane::FlowersEnemy>(t_other))
        {
            if (!m_keys_changed)
                changeKeys(true);
            // t_other->setAlive(false);
        }
    }
    float PlayerMovement::getRotSensitivity()
    {
        return m_sensitivity;
    }

    Flamingo::SVector3 PlayerMovement::getOrientation(float degree)
    {
        float x, z;
        float rad = degree * 3.14159265 / 180;
        x = std::sin(rad);
        z = std::cos(rad);
        if (x == 0)
            x = 0.01;
        if (z == 0)
            z = 0.01;
        float xRel = x / std::abs(x), zRel = z / std::abs(z);
        return Flamingo::SVector3(x * x * xRel, 0, z * z * zRel);
    }
    Flamingo::SVector3 PlayerMovement::getForward()
    {
        return m_forward;
    }

    void PlayerMovement::lookAtMouse(float t_deltaTime)
    {
        Flamingo::SQuaternion quat = Flamingo::SQuaternion((percentRotate += Flamingo::Input().getMouseMotionPos().first * m_sensitivity * t_deltaTime * -1), Flamingo::SVector3(0, 1, 0));
        m_transform->setRotation(quat);

        m_forward = getOrientation(percentRotate);
        m_right = getOrientation(percentRotate + 90);
    }

    void PlayerMovement::changeKeys(bool t_state)
    {
        if (t_state)
        {
            m_keys_changed = true;
            m_key_left = Flamingo::FLM_d;
            m_key_right = Flamingo::FLM_a;
            m_key_up = Flamingo::FLM_s;
            m_key_down = Flamingo::FLM_w;
        }
        else
        {
            m_keys_changed = false;
            m_key_left = Flamingo::FLM_a;
            m_key_right = Flamingo::FLM_d;
            m_key_up = Flamingo::FLM_w;
            m_key_down = Flamingo::FLM_s;
        }
    }
    void PlayerMovement::timerKeys(float t_delta_time)
    {
        if (!m_keys_changed)
            return;
        m_time_keys += t_delta_time;

        //  Si ha pasado suficiente tiempo, resetea teclas a la normalidad
        if (m_time_keys >= 15000.0f)
        {
            // Reinicia el contador de tiempo
            m_time_keys = 0;
            changeKeys(false);
        }
    }
    void PlayerMovement::performDash()
    {
        // Obtener la dirección hacia la cual el jugador está orientado
        Flamingo::SVector3 dashDirection = getForward();

        // Calcular la nueva posición del jugador después del dash
        Flamingo::SVector3 newPosition = m_transform->getPosition() + dashDirection * 1500.0f;

        // Establecer la nueva posición del jugador
        m_transform->setPosition(newPosition);

        // Iniciar el enfriamiento del dash
        m_is_dashing = true;
        m_dash_timer = m_dash_cooldown;
        if (m_dash_sound)
        {
            m_dash_sound->playAudio();
        }
    }
} // namespace Eldersbane