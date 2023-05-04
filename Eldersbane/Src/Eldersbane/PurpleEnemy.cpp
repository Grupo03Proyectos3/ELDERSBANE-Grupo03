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

void Eldersbane::PurpleEnemy::start()
{
    m_damage = 3;
}

int Eldersbane::PurpleEnemy::getDamage()
{
    return m_damage;
}
