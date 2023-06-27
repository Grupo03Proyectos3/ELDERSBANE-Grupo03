#pragma once
#ifndef __BLACK_ENEMY_H__
#define __BLACK_ENEMY_H__
#include "Scripting/BehaviourScript.h"

namespace Eldersbane
{

    /**
     * @brief  La clase de enemigo más fuerte. El mayor desafío para el jugador.
     * Posee variables para obtener sus atributos
     */
    class BlackEnemy : public Flamingo::BehaviourScript
    {
      public:
        BlackEnemy();
        ~BlackEnemy();
        Flamingo::BehaviourScript* clone() override;
        /**
         * @brief Devuelve el daño del enemigo
         */
        int getDamage();
        /**
         * @brief Devuelve las vidas del enemigo
         */
        int getLives();
        bool initValues(std::unordered_map<std::string, std::string> = {}) override;

      private:
        int m_damage;
        int m_lives;
    };
} // namespace Eldersbane
#endif