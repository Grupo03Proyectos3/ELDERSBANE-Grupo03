#include "RedEnemy.h"

Eldersbane::RedEnemy::RedEnemy()
{
    m_damage = 2;
    m_lives = 3;
}

Eldersbane::RedEnemy::~RedEnemy()
{
}

Flamingo::BehaviourScript* Eldersbane::RedEnemy::clone()
{
    return new RedEnemy();
}

int Eldersbane::RedEnemy::getDamage()
{
    return m_damage;
}

int Eldersbane::RedEnemy::getLives()
{
    return m_lives;
}
