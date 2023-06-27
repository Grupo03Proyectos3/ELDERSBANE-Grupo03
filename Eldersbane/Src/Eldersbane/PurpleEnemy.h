#pragma once
#ifndef __PURPLE_ENEMY_H__
#define __PURPLE_ENEMY_H__
#include "Scripting/BehaviourScript.h"

namespace Eldersbane
{

    /**
     * @brief  Clase de enemigo fuerte y con bastante vida.
     * Posee variables para obtener sus atributos
     */
    class PurpleEnemy : public Flamingo::BehaviourScript
    {
      public:
        PurpleEnemy();
        ~PurpleEnemy();
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