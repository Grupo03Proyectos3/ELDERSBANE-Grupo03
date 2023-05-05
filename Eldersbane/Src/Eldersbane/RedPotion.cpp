#include "RedPotion.h"
#include "PlayerMovement.h"
#include "ECS/ManagerFunctions.h"

Eldersbane::RedPotion::RedPotion()
{
}

Eldersbane::RedPotion::~RedPotion()
{
}

void Eldersbane::RedPotion::start()
{
    m_lives = 3;
}

Flamingo::BehaviourScript* Eldersbane::RedPotion::clone()
{
    return new RedPotion();
}

int Eldersbane::RedPotion::getExtraLives()
{
    return m_lives;
}