#include "Apple.h"
#include "ECS/ManagerFunctions.h"

#include "FlamingoBase/Scene.h"
#include "FlamingoBase/SceneManager.h"
#include "FlamingoExport/FlamingoCore.h"

namespace Eldersbane
{

    Apple::Apple()
    {
    }

    Apple::~Apple()
    {
    }

    Flamingo::BehaviourScript* Apple::clone()
    {
        return new Apple();
    }

    bool Apple::initValues(std::unordered_map<std::string, std::string> t_args)
    {
        auto k = t_args.find("t_durability");

        if (k != t_args.end())
        {
            auto s = std::stof(k->second);
            m_apple_durability = s;
            return true;
        }
        else
            return false;
        return true;
    }

    int Apple::getDurability()
    {
        return m_apple_durability;
    }
} // namespace Eldersbane
