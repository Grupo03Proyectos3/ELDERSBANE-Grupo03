#include "Apple.h"
#include "ECS/ManagerFunctions.h"

#include "FlamingoBase/Scene.h"
#include "FlamingoBase/SceneManager.h"
#include "FlamingoExport/FlamingoCore.h"
#include "PlayerMovement.h"
#include <Render/MeshRenderer.h>
namespace Eldersbane
{

    Apple::Apple()
    {
    }

    Apple::~Apple()
    {
        delete m_timer;
    }

    Flamingo::BehaviourScript* Apple::clone()
    {
        return new Apple();
    }

    bool Apple::initValues(std::unordered_map<std::string, std::string> t_args)
    {
        auto it_durability = t_args.find("t_durability");
        auto it_velocity = t_args.find("t_velocity");
        auto it_damage = t_args.find("t_damage");

        if (it_durability != t_args.end() && it_velocity != t_args.end() && it_damage != t_args.end())
        {
            auto s = std::stof(it_durability->second);
            m_apple_durability = s;
            s = std::stof(it_velocity->second);
            m_velocity = s;
            s = std::stof(it_damage->second);
            m_damage = s;
            return true;
        }
        else
            return false;
        return true;
    }

    void Apple::onCollisionEnter(Flamingo::GameObject* t_other)
    {
        if (Flamingo::hasComponent<Eldersbane::PlayerMovement>(t_other))
        {
            deactivate();
        }
    }

    void Apple::start()
    {
        m_follow = false;
        m_timer = new Flamingo::Timer();
        m_transform = Flamingo::getComponent<Flamingo::Transform>(this->gameObject());
        deactivate();
    }

    void Apple::update(float t_delta_time)
    {
        if (m_follow)
        {
            m_transform->translate(Flamingo::SVector3(m_direction * 0.2f * t_delta_time * m_velocity));

            if (m_timer->getElapsedTime() >= m_apple_durability)
            {
                m_follow = false;
                deactivate();
                m_timer->reset();
            }
        }
    }

    int Apple::getDurability()
    {
        return m_apple_durability;
    }

    void Apple::attackPlayer(Flamingo::SVector3 t_dir, Flamingo::SVector3 t_pos)
    {
        m_follow = true;
        m_direction = t_dir;
        m_transform->setPosition(t_pos);
        Flamingo::getComponent<Flamingo::MeshRenderer>(gameObject())->onEnable();
        m_timer->reset();
    }
    void Apple::deactivate()
    {
        gameObject()->setActive(false);
        Flamingo::getComponent<Flamingo::MeshRenderer>(gameObject())->onDisable();
    }
    int Apple::getDamage()
    {
        return m_damage;
    }
} // namespace Eldersbane