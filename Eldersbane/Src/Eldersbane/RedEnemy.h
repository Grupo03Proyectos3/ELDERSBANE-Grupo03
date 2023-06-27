#pragma once
#ifndef __RED_ENEMY_H__
#define __RED_ENEMY_H__
#include "Scripting/BehaviourScript.h"

namespace Eldersbane
{
    /**
     * @brief  Clase de enemigo fuerte pero con poca vida.
     * Posee variables para obtener sus atributos
     */
    class RedEnemy : public Flamingo::BehaviourScript
    {
      public:
        RedEnemy();
        ~RedEnemy();
        Flamingo::BehaviourScript* clone() override;
        bool initValues(std::unordered_map<std::string, std::string> = {}) override;
        /**
         * @brief Devuelve el daño del enemigo
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