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
void Eldersbane::RedPotion::onCollisionExit(Flamingo::GameObject* t_other)
{
    if (Flamingo::hasComponent<Eldersbane::PlayerMovement>(t_other))
    {
        gameObject()->setActive(false);
       /* if (gameObject()!=nullptr)
            gameObject()->setAlive(false);*/
    }
}