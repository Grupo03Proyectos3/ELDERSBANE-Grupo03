#pragma once
#ifndef __FLOWERS_ENEMY_H__
#define __FLOWERS_ENEMY_H__
#include "Scripting/BehaviourScript.h"

namespace Eldersbane
{
    /**
     * @brief Enemigo que te cambiará los controles al chocar con él
     */
    class FlowersEnemy : public Flamingo::BehaviourScript
    {
      public:
        FlowersEnemy();
        ~FlowersEnemy();
        Flamingo::BehaviourScript* clone() override;
    };
} // namespace Eldersbane
#endif