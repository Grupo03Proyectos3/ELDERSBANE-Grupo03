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

void Eldersbane::BlackEnemy::start()
{
    m_damage = 4;
    m_lives = 7;
}

int Eldersbane::BlackEnemy::getDamage()
{
    return m_damage;
}

int Eldersbane::BlackEnemy::getLives()
{
    return m_lives;
}
