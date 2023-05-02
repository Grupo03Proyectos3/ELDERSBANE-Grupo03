#include "GreenPotion.h"

Eldersbane::GreenPotion::GreenPotion()
{
}

Eldersbane::GreenPotion::~GreenPotion()
{
}

void Eldersbane::GreenPotion::start()
{
    m_damage_multiplier = 2;
}

Flamingo::BehaviourScript* Eldersbane::GreenPotion::clone()
{
    return new GreenPotion();
}
