#include "PlayerAttack.h"
namespace Eldersbane{
    PlayerAttack::PlayerAttack()
    {
    }

    PlayerAttack::~PlayerAttack()
    {
    }

    Flamingo::BehaviourScript* PlayerAttack::clone()
    {
        return new PlayerAttack();
    }

    void PlayerAttack::start()
    {

    }

    void PlayerAttack::update(float t_deltaTime)
    {
    }
} // namespace Eldersbane