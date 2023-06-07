#include "BlueEnemy.h"

Eldersbane::BlueEnemy::BlueEnemy()
{
}

Eldersbane::BlueEnemy::~BlueEnemy()
{
}

Flamingo::BehaviourScript* Eldersbane::BlueEnemy::clone()
{
    return new BlueEnemy();
}

bool Eldersbane::BlueEnemy::initValues(std::unordered_map<std::string, std::string> t_args)
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

int Eldersbane::BlueEnemy::getDamage()
{
    return m_damage;
}

int Eldersbane::BlueEnemy::getLives()
{
    return m_lives;
}
