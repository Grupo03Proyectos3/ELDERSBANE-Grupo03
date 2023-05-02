#include "PinkPotion.h"

Eldersbane::PinkPotion::PinkPotion()
{
}

Eldersbane::PinkPotion::~PinkPotion()
{
}

void Eldersbane::PinkPotion::start()
{
    m_lives = 1;
}

Flamingo::BehaviourScript* Eldersbane::PinkPotion::clone()
{
    return new PinkPotion();
}

int Eldersbane::PinkPotion::getExtraLives() const
{
    return m_lives;
}
