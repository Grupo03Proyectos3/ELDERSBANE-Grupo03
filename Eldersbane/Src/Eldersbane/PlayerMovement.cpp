#include "PlayerMovement.h"
#include "ECS/ManagerFunctions.h"
#include <ECS/InputHandlerContainer.h>
#include <FlamingoBase/SceneManager.h>
#include <FlamingoExport/FlamingoCore.h>
#include <FlamingoUtils/FlamingoKeys.h>

#include "BluePotion.h"
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
        m_camera = Flamingo::getComponent<Flamingo::Camera>(Flamingo::FlamingoCore::getSceneManager()->getSceneActive()->getObject("myCamera"));
        m_sword = Flamingo::getComponent<Eldersbane::Sword>(Flamingo::FlamingoCore::getSceneManager()->getSceneActive()->getObject("sword"));
        //m_camera->lookAt({0, 0, 0}, Flamingo::WORLD);
        m_camera->setTarget(gameObject());
        m_camera->setOffset({-700, -200, 0});       
        m_camera->FollowTarget();
        m_rb = Flamingo::getComponent<Flamingo::RigidBody>(this->gameObject());
        m_rb->setKinematic(true);
        m_animator->setAnimation("Correr", true, true);
        m_forward = {1, 0, 0};
        m_right = {0, 0, 1};
        controlAnim = false;
        m_transform->setPosition({m_transform->getPosition().getX(), 500, m_transform->getPosition().getZ()});
    }

    void PlayerMovement::update(float t_deltaTime)
    {
        Flamingo::SVector3 traslation = {0, 0, 0};
        double rotacion;
        if (m_sword->isActive())
        {
            controlAnim = true;
            m_animator->setAnimation("Correr", false, false);
            m_animator->setAnimation("Atacar", true, false);
        }
        else if (controlAnim)
        {
            controlAnim = false;
            m_animator->setAnimation("Atacar", false, false);
            m_animator->setAnimation("Correr", true, true);
        }
        //Rotacion del jugador
        if (Flamingo::Input().mouseMotionEvent())
        { // rotar al player
            //std::cout << "ROTACION PLAYER " << Flamingo::Input().getMouseMotionPos().second << " \n";
            Flamingo::SQuaternion quat = Flamingo::SQuaternion((percentRotate += Flamingo::Input().getMouseMotionPos().first * sensitivity * t_deltaTime * -1), Flamingo::SVector3(0, 1, 0));
            m_transform->setRotation(quat);
            //m_forward = quat.Rotate({0,1,0});
            
            m_forward = getOrientation(percentRotate);
            m_right = getOrientation(percentRotate + 90);
           // std::cout << "Forward:x= " << m_forward.getX() << "Forward:y= " << m_forward.getY() << "Forward:z= " << m_forward.getZ() << '\n';     
        }

        if (Flamingo::Input().isKeyDown(Flamingo::FLM_a))
        {
           // std::cout << "A PRESSED\n";
            traslation += m_right;
        }
        else if (Flamingo::Input().isKeyDown(Flamingo::FLM_d))
        {
            //std::cout << "D PRESSED\n";
            traslation -= m_right;
        }
        if (Flamingo::Input().isKeyDown(Flamingo::FLM_w))
        {
            //std::cout << "W PRESSED\n";
            traslation += m_forward;
        }
        else if (Flamingo::Input().isKeyDown(Flamingo::FLM_s))
        {
            //std::cout << "S PRESSED\n";
            traslation -= m_forward;
        }

        traslation = traslation.normalized() * speed * t_deltaTime;           

        traslation = Flamingo::SVector3(traslation.getX(), 0, traslation.getZ());
        
        m_transform->translate(traslation, Flamingo::LOCAL);
        //m_rb->setLinearVelocity(traslation);

        m_camera->FollowTarget();
       
    }
    void PlayerMovement::onCollisionEnter(Flamingo::GameObject* t_other)
    {
        auto bluePotion = Flamingo::getComponent<Eldersbane::BluePotion>(t_other);
        if (bluePotion!=nullptr)
        {
            std::cout << "Coge la pocion AZUL"
                      << "\n";
            speed *= bluePotion->getSpeedMultiplier();
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
        float xRel = x / std::abs(x), zRel = z / std::abs(z);
        return Flamingo::SVector3(x * x * xRel, 0, z * z * zRel);
    }
} // namespace Eldersbane