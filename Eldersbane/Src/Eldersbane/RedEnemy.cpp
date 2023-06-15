#include "RedEnemy.h"

Eldersbane::RedEnemy::RedEnemy()
{
}

Eldersbane::RedEnemy::~RedEnemy()
{
}

Flamingo::BehaviourScript* Eldersbane::RedEnemy::clone()
{
    return new RedEnemy();
}

bool Eldersbane::RedEnemy::initValues(std::unordered_map<std::string, std::string> t_args)
{
    auto k = t_args.find("t_lives");

    if (k != t_args.end())
    {
        int s = std::stof(k->second);
        m_lives = s;
        return true;
    }
    else
        return false;
    k = t_args.find("t_damage");

    if (k != t_args.end())
    {
        int s = std::stof(k->second);
        m_damage = s;
        return true;
    }
    else
        return false;

    return true;
}

int Eldersbane::RedEnemy::getDamage()
{
    return m_damage;
}

int Eldersbane::RedEnemy::getLives()
{
    return m_lives;
}
