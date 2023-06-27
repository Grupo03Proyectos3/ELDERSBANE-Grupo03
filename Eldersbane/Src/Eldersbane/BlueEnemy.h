#pragma once
#ifndef __BLUE_ENEMY_H__
#define __BLUE_ENEMY_H__
#include "Scripting/BehaviourScript.h"

namespace Eldersbane
{
    /**
     * @brief  La clase de enemigo más débil. El mayor desafío para el jugador.
     * Posee variables para obtener sus atributos
     */
    class BlueEnemy : public Flamingo::BehaviourScript
    {
      public:
        BlueEnemy();
        ~BlueEnemy();
        Flamingo::BehaviourScript* clone() override;
        int getDamage();
        int getLives();
        bool initValues(std::unordered_map<std::string, std::string> = {}) override;
      private:
        int m_damage;
        int m_lives;
    };
}
#endif