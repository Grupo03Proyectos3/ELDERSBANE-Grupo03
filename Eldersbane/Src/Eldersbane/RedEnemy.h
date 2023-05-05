#pragma once
#ifndef __RED_ENEMY_H__
#define __RED_ENEMY_H__
#include "Scripting/BehaviourScript.h"

namespace Eldersbane
{
    class RedEnemy : public Flamingo::BehaviourScript
    {
      public:
        RedEnemy();
        ~RedEnemy();
        Flamingo::BehaviourScript* clone() override;
        void start() override;
        int getDamage();
        int getLives();

      private:
        int m_damage=2;
        int m_lives;
    };
}
#endif