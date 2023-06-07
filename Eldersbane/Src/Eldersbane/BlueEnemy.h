#pragma once
#ifndef __BLUE_ENEMY_H__
#define __BLUE_ENEMY_H__
#include "Scripting/BehaviourScript.h"

namespace Eldersbane
{
    /// <summary>
    /// La clase de enemigo más débil.
    /// Posee variables para obtener sus atributos
    /// </summary>
    class BlueEnemy : public Flamingo::BehaviourScript
    {
      public:
        BlueEnemy();
        ~BlueEnemy();
        Flamingo::BehaviourScript* clone() override;
        bool initValues(std::unordered_map<std::string, std::string> = {}) override;
        int getDamage();
        int getLives();

      private:
        int m_damage;
        int m_lives;
    };
}
#endif