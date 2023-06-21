#pragma once
#ifndef __FLOWERS_ENEMY_H__
#define __FLOWERS_ENEMY_H__
#include "Scripting/BehaviourScript.h"

namespace Eldersbane
{
    /// <summary>
    /// La clase de enemigo más débil.
    /// Posee variables para obtener sus atributos
    /// </summary>
    class FlowersEnemy : public Flamingo::BehaviourScript
    {
      public:
        FlowersEnemy();
        ~FlowersEnemy();
        Flamingo::BehaviourScript* clone() override;
    };
} // namespace Eldersbane
#endif