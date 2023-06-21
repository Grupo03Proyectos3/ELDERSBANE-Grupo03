#include "FlowersEnemy.h"

Eldersbane::FlowersEnemy::FlowersEnemy()
{
}

Eldersbane::FlowersEnemy::~FlowersEnemy()
{
}

Flamingo::BehaviourScript* Eldersbane::FlowersEnemy::clone()
{
    return new FlowersEnemy();
}

