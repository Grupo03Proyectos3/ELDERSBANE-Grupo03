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
        int getLives();

      private:
        int m_damage = 3;
        int m_lives;
    };
} // namespace Eldersbane
#endif