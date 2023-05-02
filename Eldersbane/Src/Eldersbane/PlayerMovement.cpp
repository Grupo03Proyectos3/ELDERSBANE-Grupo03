#include "PlayerMovement.h"
#include "ECS/ManagerFunctions.h"
#include <ECS/InputHandlerContainer.h>
#include <FlamingoBase/SceneManager.h>
#include <FlamingoExport/FlamingoCore.h>
#include <FlamingoUtils/FlamingoKeys.h>
#include <Render/Animator.h>

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

        m_camera = Flamingo::getComponent<Flamingo::Camera>(Flamingo::FlamingoCore::getSceneManager()->getSceneActive()->getObject("myCamera"));
        m_camera->setTarget(gameObject());
        m_camera->setOffset({-700, -250, 0});       
        m_camera->FollowTarget();
    }

    void PlayerMovement::update(float t_deltaTime)
    {
        Flamingo::SVector3 traslation;
        double rotacion;
        if (Flamingo::Input().isKeyDown(Flamingo::FLM_a))
        {
            std::cout << "A PRESSED\n";
            traslation += Flamingo::SVector3(speed, 0, 0);
        }
        else if (Flamingo::Input().isKeyDown(Flamingo::FLM_d))
        {
            std::cout << "D PRESSED\n";
            traslation -= Flamingo::SVector3(speed, 0, 0);
        }
        if (Flamingo::Input().isKeyDown(Flamingo::FLM_w))
        {
            std::cout << "W PRESSED\n";
            traslation += Flamingo::SVector3(0, 0, speed);
        }
        else if (Flamingo::Input().isKeyDown(Flamingo::FLM_s))
        {
            std::cout << "S PRESSED\n";
            traslation -= Flamingo::SVector3(0, 0, speed);
        }
        else if (Flamingo::Input().isKeyDown(Flamingo::FLM_g))
        {
            std::cout << "G PRESSED\n";
            m_transform->setRotation(Flamingo::SQuaternion((percentRotate+=20*t_deltaTime), Flamingo::SVector3(0, 1, 0)));
        }

        if (Flamingo::Input().mouseMotionEvent())
        { // rotar al player
            std::cout << "ROTACION PLAYER " << percentRotate << " \n";
            m_transform->setRotation(Flamingo::SQuaternion((percentRotate += Flamingo::Input().getMouseMotionPos().first*0.01 * t_deltaTime), Flamingo::SVector3(0, 1, 0)));
        }

        if (traslation.lenght() > speed)
        {
            traslation = traslation.normalized() * speed;           
        }

        traslation = Flamingo::SVector3(traslation.getX(), 0, traslation.getZ());
        
        m_transform->translate(traslation,Flamingo::LOCAL);

        m_camera->FollowTarget();
       
    }
} // namespace Eldersbane