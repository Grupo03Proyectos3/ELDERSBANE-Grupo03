#include "Sword.h"
#include "ECS/ManagerFunctions.h"

#include "Enemy.h"
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

    bool Sword::initValues(std::unordered_map<std::string, std::string> t_args)
    {
        auto it_damage = t_args.find("t_damage");

        if (it_damage != t_args.end())
        {
            auto s = std::stof(it_damage->second);
            m_damage = s;
            return true;
        }
        else
            return false;
        return true;
    }
    void Sword::onCollisionEnter(Flamingo::GameObject* t_other)
    {
        if (auto e = Flamingo::getComponent<Enemy>(t_other))
        {
            e->recieveDamage(m_damage);
        }
    }
} // namespace Eldersbane
