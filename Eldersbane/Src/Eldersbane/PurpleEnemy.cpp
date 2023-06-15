#include "PurpleEnemy.h"

Eldersbane::PurpleEnemy::PurpleEnemy()
{
}

Eldersbane::PurpleEnemy::~PurpleEnemy()
{
}

Flamingo::BehaviourScript* Eldersbane::PurpleEnemy::clone()
{
    return new PurpleEnemy();
}

bool Eldersbane::PurpleEnemy::initValues(std::unordered_map<std::string, std::string> t_args)
{
    auto k = t_args.find("t_lives");

    if (k != t_args.end())
    {
        int s = std::stof(k->second);
        m_lives = s;
    }
    else
        return false;

    k = t_args.find("t_damage");

    if (k != t_args.end())
    {
        int s = std::stof(k->second);
        m_damage = s;
    }
    else
        return false;

    return true;
}

int Eldersbane::PurpleEnemy::getDamage()
{
    return m_damage;
}

int Eldersbane::PurpleEnemy::getLives()
{
    return m_lives;
}
