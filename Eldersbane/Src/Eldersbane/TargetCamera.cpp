#include "TargetCamera.h"
#include "ECS/ManagerFunctions.h"
#include <FlamingoExport/FlamingoCore.h>
#include <ECS/InputHandlerContainer.h>
#include "PlayerMovement.h"

Eldersbane::TargetCamera::TargetCamera()
{
}

Eldersbane::TargetCamera::~TargetCamera()
{
}

Flamingo::BehaviourScript* Eldersbane::TargetCamera::clone()
{
    return new TargetCamera;
}

void Eldersbane::TargetCamera::start()
{
    m_transform = Flamingo::getComponent<Flamingo::Transform>(this->gameObject());
    m_camera = Flamingo::getComponent<Flamingo::Camera>(Flamingo::FlamingoCore::getSceneManager()->getSceneActive()->getObject("myCamera"));
    m_camera->setTarget(gameObject()); 
    m_camera->setOffset({-700, -100, 0}); 
    m_camera->FollowTarget();
    m_followTarget = Flamingo::getComponent<Flamingo::Transform>(Flamingo::FlamingoCore::getSceneManager()->getSceneActive()->getObject("player"));

    m_offset = Flamingo::SVector3(250, -50, 50);
    m_transform->setPosition(m_followTarget->getPosition() + m_offset);
    rotSpeed = Flamingo::getComponent<Eldersbane::PlayerMovement>(Flamingo::FlamingoCore::getSceneManager()->getSceneActive()->getObject("player"))->getRotSensitivity();
}

void Eldersbane::TargetCamera::update(float t_deltaTime)
{
    if (Flamingo::Input().mouseMotionEvent())
    { // rotar al nodo
        m_transform->setRotation(Flamingo::SQuaternion((percentRotate += Flamingo::Input().getMouseMotionPos().first * rotSpeed * t_deltaTime * -1), Flamingo::SVector3(0, 1, 0)));
    }
    followPlayer();
    m_camera->FollowTarget();
}

void Eldersbane::TargetCamera::followPlayer()
{
    m_transform->setPosition(m_followTarget->getPosition() + m_offset);

    auto trpTarget = m_followTarget;
    auto mtrp = m_transform;

    Flamingo::SVector3 newOffset = trpTarget->getRotation().Rotate(m_offset);
    mtrp->setPosition(trpTarget->getPosition() - newOffset);
    mtrp->setRotation(trpTarget->getRotation(), Flamingo::STransformSpace::WORLD);
}
