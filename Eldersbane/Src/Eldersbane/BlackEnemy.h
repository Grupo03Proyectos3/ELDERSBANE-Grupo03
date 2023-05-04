#pragma once
#ifndef __BLACK_ENEMY_H__
#define __BLACK_ENEMY_H__
#include "Scripting/BehaviourScript.h"

namespace Eldersbane
{
    class BlackEnemy : public Flamingo::BehaviourScript
    {
      public:
        BlackEnemy();
        ~BlackEnemy();
        Flamingo::BehaviourScript* clone() override;
        void start() override;
        int getDamage();

      private:
        int m_damage;
    };
} // namespace Eldersbane
#endif