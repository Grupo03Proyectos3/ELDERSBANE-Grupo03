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
}

Flamingo::BehaviourScript* Eldersbane::RedPotion::clone()
{
    return new RedPotion();
}

bool Eldersbane::RedPotion::initValues(std::unordered_map<std::string, std::string> t_args)
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

int Eldersbane::RedPotion::getExtraLives()
{
    return m_lives;
}