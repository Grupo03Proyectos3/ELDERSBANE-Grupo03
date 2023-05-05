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

void Eldersbane::BlueEnemy::start()
{
    m_damage = 1;
    m_lives = 1;
}

int Eldersbane::BlueEnemy::getDamage()
{
    return m_damage;
}

int Eldersbane::BlueEnemy::getLives()
{
    return m_lives;
}
