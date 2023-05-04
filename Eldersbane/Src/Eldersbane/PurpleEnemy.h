#pragma once
#ifndef __PURPLE_ENEMY_H__
#define __PURPLE_ENEMY_H__
#include "Scripting/BehaviourScript.h"

namespace Eldersbane
{
    class PurpleEnemy : public Flamingo::BehaviourScript
    {
      public:
        PurpleEnemy();
        ~PurpleEnemy();
        Flamingo::BehaviourScript* clone() override;
        void start() override;
        int getDamage();

      private:
        int m_damage;
    };
} // namespace Eldersbane
#endif