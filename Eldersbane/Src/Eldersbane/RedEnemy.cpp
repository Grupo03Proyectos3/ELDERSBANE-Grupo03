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

void Eldersbane::RedEnemy::start()
{
    m_damage = 2;
}

int Eldersbane::RedEnemy::getDamage()
{
    return m_damage;
}
