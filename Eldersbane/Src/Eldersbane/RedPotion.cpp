#include "RedPotion.h"

Eldersbane::RedPotion::RedPotion()
{
}

Eldersbane::RedPotion::~RedPotion()
{
}

void Eldersbane::RedPotion::start()
{
    hearths = 3;
}

Flamingo::BehaviourScript* Eldersbane::RedPotion::clone()
{
    return new RedPotion();
}
