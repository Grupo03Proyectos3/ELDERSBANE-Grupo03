#include "PlayerMovement.h"
#include <ECS/Components.h>
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

        auto m_sceneMngr = Flamingo::FlamingoCore::getSceneManager();
        auto x = Flamingo::getComponent<Flamingo::Animator>(m_sceneMngr->getSceneActive()->getObject("dragon"));
        x->setAnimation("my_animation", true, true);
    }

    void PlayerMovement::update(float t_deltaTime)
    {
        Flamingo::SVector3 traslation;
        double rotacion;
        if (Flamingo::Input().isKeyDown(Flamingo::FLM_w))
        {
            std::cout << "W PRESSED\n";
            traslation += Flamingo::SVector3(speed, 0, 0);
        }
        else if (Flamingo::Input().isKeyDown(Flamingo::FLM_s))
        {
            std::cout << "S PRESSED\n";
            traslation -= Flamingo::SVector3(speed, 0, 0);
        }
        if (Flamingo::Input().isKeyDown(Flamingo::FLM_d))
        {
            std::cout << "D PRESSED\n";
            traslation += Flamingo::SVector3(0, 0, speed);
        }
        else if (Flamingo::Input().isKeyDown(Flamingo::FLM_a))
        {
            std::cout << "A PRESSED\n";
            traslation -= Flamingo::SVector3(0, 0, speed);
        }

        if (Flamingo::Input().mouseMotionEvent())
        { // rotar al player
            std::cout << "ROTACION PLAYER\n";
            rotacion = Flamingo::Input().getMouseMotionPos().first * 0.1;
            m_transform->setRotation(m_transform->getRotation() + Flamingo::SQuaternion(rotacion, Flamingo::SVector3(0, 1, 0)));
        }

        if (traslation.lenght() > speed)
        {
            traslation = traslation.normalized() * speed;
        }
        m_transform->translate(traslation);

        // std::cout << "dfsasdadfs\n";
    }
} // namespace Eldersbane