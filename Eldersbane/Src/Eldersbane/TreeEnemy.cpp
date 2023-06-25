#include "TreeEnemy.h"

Eldersbane::TreeEnemy::TreeEnemy()
{
}

Eldersbane::TreeEnemy::~TreeEnemy()
{
}

Flamingo::BehaviourScript* Eldersbane::TreeEnemy::clone()
{
    return new TreeEnemy();
}

bool Eldersbane::TreeEnemy::initValues(std::unordered_map<std::string, std::string> t_args)
{
    auto it_lives = t_args.find("t_lives");
    auto it_damage = t_args.find("t_damage");
    auto it_cooldown = t_args.find("t_cooldown");

    if (it_lives != t_args.end() && it_damage != t_args.end())
    {
        m_lives = std::stof(it_lives->second);
        m_damage = std::stof(it_damage->second);
        m_cooldown = std::stof(it_cooldown->second);
        return true;
    }

    return false;
}

int Eldersbane::TreeEnemy::getDamage()
{
    return m_damage;
}

int Eldersbane::TreeEnemy::getLives()
{
    return m_lives;
}
int Eldersbane::TreeEnemy::getCooldown()
{
    return m_cooldown;
}
