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
        m_active = false;
    }

    void Sword::onCollisionEnter(Flamingo::GameObject* t_other){
        if (Flamingo::getComponent<Enemy>(t_other)){
            std::cout << "QUITAR VIDA A BICHO\n";
        }
    }

    void Sword::setActive(bool active){
        m_active = active;
    }

} // namespace Eldersbane
