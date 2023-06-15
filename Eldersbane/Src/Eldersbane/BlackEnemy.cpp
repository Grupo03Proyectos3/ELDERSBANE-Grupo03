#include "BlackEnemy.h"
#include <iostream>
Eldersbane::BlackEnemy::BlackEnemy()
{
}

Eldersbane::BlackEnemy::~BlackEnemy()
{
}

Flamingo::BehaviourScript* Eldersbane::BlackEnemy::clone()
{
    return new BlackEnemy();
}

bool Eldersbane::BlackEnemy::initValues(std::unordered_map<std::string, std::string> t_args)
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

int Eldersbane::BlackEnemy::getDamage()
{
    return m_damage;
}

int Eldersbane::BlackEnemy::getLives()
{
    return m_lives;
}
