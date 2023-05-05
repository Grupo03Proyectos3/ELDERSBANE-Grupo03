#include "BluePotion.h"

Eldersbane::BluePotion::BluePotion()
{
}

Eldersbane::BluePotion::~BluePotion()
{
}

void Eldersbane::BluePotion::start()
{
    m_speed_multiplier = 2;
}

Flamingo::BehaviourScript* Eldersbane::BluePotion::clone()
{
    return new BluePotion();
}

float Eldersbane::BluePotion::getSpeedMultiplier()
{
    return m_speed_multiplier;
}
