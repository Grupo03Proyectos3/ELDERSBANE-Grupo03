#include "BluePotion.h"

Eldersbane::BluePotion::BluePotion()
{
}

Eldersbane::BluePotion::~BluePotion()
{
}

void Eldersbane::BluePotion::start()
{
}

Flamingo::BehaviourScript* Eldersbane::BluePotion::clone()
{
    return new BluePotion();
}

bool Eldersbane::BluePotion::initValues(std::unordered_map<std::string, std::string> t_args)
{
    auto k = t_args.find("t_speed_multiplier");

    if (k != t_args.end())
    {
        float s = std::stof(k->second);
        m_speed_multiplier = s;
        return true;
    }
    else
        return false;
}

float Eldersbane::BluePotion::getSpeedMultiplier()
{
    return m_speed_multiplier;
}
