#include "PickUp.h"
#include <FlamingoBase/SceneManager.h>
#include <FlamingoExport/FlamingoCore.h>
#include "ECS/ManagerFunctions.h"
#include "RedPotion.h"

namespace Eldersbane
{
    PickUp::PickUp()
    {
    }
    PickUp::~PickUp()
    {
    }
    Flamingo::BehaviourScript* Eldersbane::PickUp::clone()
    {
        return new PickUp();
    }

    void PickUp::onCollisionEnter(Flamingo::GameObject* t_other)
    {
        if (Flamingo::getComponent<Eldersbane::RedPotion>(t_other))
        {
            std::cout << "Coge la pocion"
                      << "\n";
        }
    }
}