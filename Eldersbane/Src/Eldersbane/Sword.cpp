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

    void Sword::start()
    {
    }

    void Sword::update(float t_delta_time)
    {
    }

    void Sword::onCollisionEnter(Flamingo::GameObject* t_other)
    {
    }

    void Sword::onCollisionExit(Flamingo::GameObject* t_other)
    {
    }

} // namespace Eldersbane
