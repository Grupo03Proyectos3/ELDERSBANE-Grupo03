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

    bool Sword::initValues(std::unordered_map<std::string, std::string> t_args)
    {
        auto k = t_args.find("t_damage");

        if (k != t_args.end())
        {
            float s = std::stof(k->second);
            m_damage = s;
            return true;
        }
        else
            return false;
    }

    void Sword::start(){
        
    }

    void Sword::onCollisionEnter(Flamingo::GameObject* t_other){
        if (auto e = Flamingo::getComponent<Enemy>(t_other)){
            e->recieveDamage(m_damage);
        }
    }
} // namespace Eldersbane
