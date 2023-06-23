#include "Shield.h"
#include "ECS/ManagerFunctions.h"

#include "FlamingoBase/Scene.h"
#include "FlamingoBase/SceneManager.h"
#include "FlamingoExport/FlamingoCore.h"

namespace Eldersbane
{

    Shield::Shield()
    {
    }

    Shield::~Shield()
    {
    }

    Flamingo::BehaviourScript* Shield::clone()
    {
        return new Shield();
    }

    bool Shield::initValues(std::unordered_map<std::string, std::string> t_args)
    {
        auto k = t_args.find("t_durability");

        if (k != t_args.end())
        {
            auto s = std::stof(k->second);
            m_shield_durability = s;
            return true;
        }
        else
            return false;
        return true;
    }

    void Shield::start()
    {
        m_currentHits = 0;
        m_available = true;
    }
    void Shield::resetHits() {
        m_currentHits = 0;
    }
    void Shield::takeHit()
    {
        m_currentHits++;
        if (m_currentHits == m_shield_durability)
            m_available = false;
    }

    bool Shield::getAvailability()
    {
        return m_available;
    }
} // namespace Eldersbane
