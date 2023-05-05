#pragma once
#ifndef __BLUE_ENEMY_H__
#define __BLUE_ENEMY_H__
#include "Scripting/BehaviourScript.h"

namespace Eldersbane
{
    class BlueEnemy : public Flamingo::BehaviourScript
    {
      public:
        BlueEnemy();
        ~BlueEnemy();
        Flamingo::BehaviourScript* clone() override;
        int getDamage();
        int getLives();

      private:
        int m_damage = 1;
        int m_lives;
    };
}
#endif