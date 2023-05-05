#include "BlueEnemy.h"

Eldersbane::BlueEnemy::BlueEnemy()
{
    m_damage = 1;
    m_lives = 2;
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
