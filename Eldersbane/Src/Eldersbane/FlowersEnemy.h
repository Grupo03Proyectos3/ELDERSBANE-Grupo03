#pragma once
#ifndef __FLOWERS_ENEMY_H__
#define __FLOWERS_ENEMY_H__
#include "Scripting/BehaviourScript.h"

namespace Eldersbane
{
    /**
     * @brief Enemigo que te cambiar� los controles al chocar con �l
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