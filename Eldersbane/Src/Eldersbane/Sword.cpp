#include "Sword.h"
#include "ECS/ManagerFunctions.h"

#include "FlamingoBase/Scene.h"
#include "FlamingoBase/SceneManager.h"
#include "FlamingoExport/FlamingoCore.h"
#include "Enemy.h"


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
        
    }

    void Sword::onCollisionEnter(Flamingo::GameObject* t_other){
        if (auto e = Flamingo::getComponent<Enemy>(t_other)){
            e->recieveDamage(9);
        }
    }
} // namespace Eldersbane
