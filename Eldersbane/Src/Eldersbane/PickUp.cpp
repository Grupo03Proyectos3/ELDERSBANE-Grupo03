#include "PickUp.h"
#include <FlamingoBase/SceneManager.h>
#include <FlamingoExport/FlamingoCore.h>
#include "ECS/ManagerFunctions.h"
#include "BluePotion.h"
#include "GreenPotion.h"

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
        std::cout << "Colision del jugador"
                  << "\n";
       
        if (Flamingo::getComponent<Eldersbane::GreenPotion>(t_other))
        {
            std::cout << "Coge la pocion VERDE"
                      << "\n";
        }
        //Espadas y escudos a continuacion
    }
}