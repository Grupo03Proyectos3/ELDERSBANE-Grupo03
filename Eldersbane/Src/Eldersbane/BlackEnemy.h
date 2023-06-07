#pragma once
#ifndef __BLACK_ENEMY_H__
#define __BLACK_ENEMY_H__
#include "Scripting/BehaviourScript.h"

namespace Eldersbane
{
    /// <summary>
    /// La clase de enemigo más fuerte. El mayor desafío para el jugador.
    /// Posee variables para obtener sus atributos
    /// </summary>
    class BlackEnemy : public Flamingo::BehaviourScript
    {
      public:
        BlackEnemy();
        ~BlackEnemy();
        Flamingo::BehaviourScript* clone() override;
        bool initValues(std::unordered_map<std::string, std::string> = {}) override;
        int getDamage();
        int getLives();

      private:
        int m_damage;
        int m_lives;
    };
} // namespace Eldersbane
#endif