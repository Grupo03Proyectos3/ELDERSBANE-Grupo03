#include "BlackEnemy.h"

Eldersbane::BlackEnemy::BlackEnemy()
{
    m_damage = 4;
    m_lives = 7;
}

Eldersbane::BlackEnemy::~BlackEnemy()
{
}

Flamingo::BehaviourScript* Eldersbane::BlackEnemy::clone()
{
    return new BlackEnemy();
}

int Eldersbane::BlackEnemy::getDamage()
{
    return m_damage;
}

int Eldersbane::BlackEnemy::getLives()
{
    return m_lives;
}
