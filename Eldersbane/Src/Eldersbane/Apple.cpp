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
        auto it_durability = t_args.find("t_durability");
        auto it_velocity = t_args.find("t_velocity");

        if (it_durability != t_args.end())
        {
            auto s = std::stof(it_durability->second);
            m_apple_durability = s;
            s = std::stof(it_velocity->second);
            m_velocity = s;
            return true;
        }
        else
            return false;
        return true;
    }

    void Apple::start()
    {
        m_transform = Flamingo::getComponent<Flamingo::Transform>(this->gameObject());
    }

    void Apple::update(float t_delta_time)
    {
        m_direction = Flamingo::SVector3(1 * m_velocity * t_delta_time, 0, 0);

        m_direction = Flamingo::SVector3(m_direction.getX(), 100, m_direction.getZ());

        m_transform->translate(m_direction, Flamingo::LOCAL);
    }

    int Apple::getDurability()
    {
        return m_apple_durability;
    }

    void Apple::addVelocity()
    {

    }
} // namespace Eldersbane
