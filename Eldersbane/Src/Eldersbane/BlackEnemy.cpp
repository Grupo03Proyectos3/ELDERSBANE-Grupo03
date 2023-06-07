#include "BlackEnemy.h"

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
        return true;
    }
    k = t_args.find("t_damage");

    if (k != t_args.end())
    {
        int s = std::stof(k->second);
        m_damage = s;
        return true;
    }
    return false;
}

int Eldersbane::BlackEnemy::getDamage()
{
    return m_damage;
}

int Eldersbane::BlackEnemy::getLives()
{
    return m_lives;
}
