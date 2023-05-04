#include "PlayerAttack.h"
#include "ECS/ManagerFunctions.h"
#include "FlamingoBase/SceneManager.h"
#include <FlamingoExport/FlamingoCore.h>
#include <ECS/InputHandlerContainer.h>
namespace Eldersbane{
    PlayerAttack::PlayerAttack()
    {
    }

    PlayerAttack::~PlayerAttack()
    {
    }

    Flamingo::BehaviourScript* PlayerAttack::clone(){
        return new PlayerAttack();
    }


    void PlayerAttack::start()
    {
        m_sword = Flamingo::getComponent<Sword>(Flamingo::FlamingoCore::getSceneManager()->getSceneActive()->getObject("sword"));
        m_Swordtransform = Flamingo::getComponent<Flamingo::Transform>(m_sword->gameObject());
        m_transform = Flamingo::getComponent<Flamingo::Transform>(gameObject());
        playerMovement = Flamingo::getComponent<PlayerMovement>(gameObject());

        m_sword->gameObject()->setActive(false);
       
    }

    void PlayerAttack::update(float t_deltaTime)
    {
        Flamingo::SVector3 offset = {200, 0, 0};
        m_Swordtransform->setPosition(m_transform->getPosition() + offset);

        auto trpTarget = m_transform;
        auto mtrp = m_Swordtransform;

        Flamingo::SVector3 newOffset = trpTarget->getRotation().Rotate(offset);
        mtrp->setPosition(trpTarget->getPosition() - newOffset);
        mtrp->setRotation(trpTarget->getRotation(), Flamingo::STransformSpace::WORLD);
    

        if (Flamingo::Input().mouseButtonEvent() && Flamingo::Input().getMouseButtonState(Flamingo::LEFT))
        {
            m_sword->gameObject()->setActive(true);
        }
    }
    void PlayerAttack::desactivarColliderEspada()
    {
        m_sword->gameObject()->setActive(false);
    }
} // namespace Eldersbane