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

int Eldersbane::BlueEnemy::getDamage()
{
    return m_damage;
}

int Eldersbane::BlueEnemy::getLives()
{
    return m_lives;
}

bool Eldersbane::BlueEnemy::initValues(std::unordered_map<std::string, std::string> t_args)
{
    auto it_lives = t_args.find("t_lives");
    auto it_damage = t_args.find("t_damage");

    if (it_lives != t_args.end() && it_damage != t_args.end())
    {
        m_lives = std::stof(it_lives->second);
        m_damage = std::stof(it_damage->second);
        return true;
    }

    return false;
}
