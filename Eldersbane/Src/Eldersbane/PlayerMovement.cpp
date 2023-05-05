#include "PlayerMovement.h"
#include "ECS/ManagerFunctions.h"
#include <ECS/InputHandlerContainer.h>
#include <FlamingoBase/SceneManager.h>
#include <FlamingoExport/FlamingoCore.h>
#include <FlamingoUtils/FlamingoKeys.h>

#include "BluePotion.h"
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
        //Rotacion del jugador
        if (Flamingo::Input().mouseMotionEvent())
        { // rotar al player
            lookAtMouse(t_deltaTime);
        }

        if (Flamingo::Input().isKeyDown(Flamingo::FLM_a))
        {
            traslation += m_right;
        }
        else if (Flamingo::Input().isKeyDown(Flamingo::FLM_d))
        {
            traslation -= m_right;
        }
        if (Flamingo::Input().isKeyDown(Flamingo::FLM_w))
        {
            traslation += m_forward;
        }
        else if (Flamingo::Input().isKeyDown(Flamingo::FLM_s))
        {
            traslation -= m_forward;
        }

        traslation = traslation.normalized() * speed * t_deltaTime;           

        traslation = Flamingo::SVector3(traslation.getX(), 0, traslation.getZ());
        
        m_transform->translate(traslation, Flamingo::LOCAL);

        m_camera->FollowTarget();
       
    }
    void PlayerMovement::onCollisionEnter(Flamingo::GameObject* t_other)
    {
       
        if (auto bluePotion = Flamingo::getComponent<Eldersbane::BluePotion>(t_other))
        {
            speed *= bluePotion->getSpeedMultiplier();
            t_other->setAlive(false);
        }
    }
    float PlayerMovement::getRotSensitivity()
    {
        return sensitivity;
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
    Flamingo::SVector3 PlayerMovement::getForward() {
        return m_forward;
    }

    void PlayerMovement::lookAtMouse(float t_deltaTime)
    {
        Flamingo::SQuaternion quat = Flamingo::SQuaternion((percentRotate += Flamingo::Input().getMouseMotionPos().first * sensitivity * t_deltaTime * -1), Flamingo::SVector3(0, 1, 0));
        m_transform->setRotation(quat);

        m_forward = getOrientation(percentRotate);
        m_right = getOrientation(percentRotate + 90);
    }
} // namespace Eldersbane