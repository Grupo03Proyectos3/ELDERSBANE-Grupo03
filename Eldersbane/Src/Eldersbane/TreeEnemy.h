#pragma once
#ifndef __TREE_ENEMY_H__
#define __TREE_ENEMY_H__
#include "Scripting/BehaviourScript.h"

namespace Eldersbane
{

    /**
     * @brief Clase del enemigo árbol mágico. Este enemigo dispara al jugador a distancia.
     */

    class TreeEnemy : public Flamingo::BehaviourScript
    {
      public:
        TreeEnemy();
        ~TreeEnemy();
        Flamingo::BehaviourScript* clone() override;
        bool initValues(std::unordered_map<std::string, std::string> = {}) override;
        /**
         * @brief Devuelve las vidas del enemigo
         */
        int getLives();
        /**
         * @brief Devuelve el cooldown del enemigo
         */
        int getCooldown();
        /**
         * @brief Devuelve el nombre de la manzana
         */
        std::string getAppleName();

      private:
        int m_lives;
        int m_cooldown;
        std::string m_apple_name;
    };
} // namespace Eldersbane
#endif