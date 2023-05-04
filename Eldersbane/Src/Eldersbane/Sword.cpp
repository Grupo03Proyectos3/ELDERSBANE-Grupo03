#include "Sword.h"
#include "ECS/ManagerFunctions.h"

#include "FlamingoBase/Scene.h"
#include "FlamingoBase/SceneManager.h"
#include "FlamingoExport/FlamingoCore.h"


namespace Eldersbane
{
    Sword::Sword()
        : BehaviourScript()
    {
    }

    Sword::~Sword()
    {
    }

    Flamingo::BehaviourScript* Sword::clone()
    {
        return new Sword();
    }

    void Sword::start(){
        active = false;
    }

    void Sword::onCollisionEnter(Flamingo::GameObject* t_other)
    {
    }

    void Sword::onCollisionExit(Flamingo::GameObject* t_other)
    {
    }

    void Sword::setActive(bool active){
        m_active = active;
    }

} // namespace Eldersbane
