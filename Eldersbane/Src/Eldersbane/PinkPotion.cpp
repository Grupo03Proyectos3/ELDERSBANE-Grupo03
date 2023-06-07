#include "PinkPotion.h"

Eldersbane::PinkPotion::PinkPotion()
{
}

Eldersbane::PinkPotion::~PinkPotion()
{
}

void Eldersbane::PinkPotion::start()
{
}

Flamingo::BehaviourScript* Eldersbane::PinkPotion::clone()
{
    return new PinkPotion();
}

bool Eldersbane::PinkPotion::initValues(std::unordered_map<std::string, std::string> t_args)
{
    auto k = t_args.find("t_lives");

    if (k != t_args.end())
    {
        float s = std::stof(k->second);
        m_lives = s;
        return true;
    }
    else
        return false;
}

int Eldersbane::PinkPotion::getExtraLives() const
{
    return m_lives;
}
