#pragma once
#ifndef __TREE_ENEMY_H__
#define __TREE_ENEMY_H__
#include "Scripting/BehaviourScript.h"

namespace Eldersbane
{
    /// <summary>
    /// La clase de enemigo más fuerte. El mayor desafío para el jugador.
    /// Posee variables para obtener sus atributos
    /// </summary>
    class TreeEnemy : public Flamingo::BehaviourScript
    {
      public:
        TreeEnemy();
        ~TreeEnemy();
        Flamingo::BehaviourScript* clone() override;
        bool initValues(std::unordered_map<std::string, std::string> = {}) override;
        int getDamage();
        int getLives();
        int getCooldown();

      private:

        int m_damage;
        int m_lives;
        int m_cooldown;
    };
} // namespace Eldersbane
#endif