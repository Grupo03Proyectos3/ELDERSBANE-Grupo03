#pragma once
#ifndef __BLUE_ENEMY_H__
#define __BLUE_ENEMY_H__
#include "Scripting/BehaviourScript.h"

namespace Eldersbane
{
    /**
     * @brief  La clase de enemigo m�s d�bil. El mayor desaf�o para el jugador.
     * Posee variables para obtener sus atributos
     */
    class BlueEnemy : public Flamingo::BehaviourScript
    {
      public:
        BlueEnemy();
        ~BlueEnemy();
        Flamingo::BehaviourScript* clone() override;
        bool initValues(std::unordered_map<std::string, std::string> = {}) override;
        /**
         * @brief Devuelve el da�o del enemigo
         */
        int getDamage();
        /**
         * @brief Devuelve las vidas del enemigo
         */
        int getLives();

      private:
        int m_damage;
        int m_lives;
    };
} // namespace Eldersbane
#endif