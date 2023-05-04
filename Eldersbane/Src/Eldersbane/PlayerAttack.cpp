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

    void PlayerAttack::start(){
        m_sword = Flamingo::getComponent<Sword>(Flamingo::FlamingoCore::getSceneManager()->getSceneActive()->getObject("SwordCollider"));
    }

    void PlayerAttack::update(float t_deltaTime){
        if (Flamingo::Input().mouseButtonEvent() && Flamingo::Input().getMouseButtonState(Flamingo::LEFT)){
            m_sword->setActive(true);
        }
    }
    Flamingo::SVector3 PlayerAttack::getOrientation(float rad)
    {
        return Flamingo::SVector3();
    }
} // namespace Eldersbane