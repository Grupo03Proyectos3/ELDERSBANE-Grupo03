#pragma once
#ifndef __TREE_ENEMY_H__
#define __TREE_ENEMY_H__
#include "Scripting/BehaviourScript.h"

namespace Eldersbane
{
    /// <summary>
    /// La clase de enemigo m�s fuerte. El mayor desaf�o para el jugador.
    /// Posee variables para obtener sus atributos
    /// </summary>
    class TreeEnemy : public Flamingo::BehaviourScript
    {
      public:
        TreeEnemy();
        ~TreeEnemy();
        Flamingo::BehaviourScript* clone() override;
        int getDamage();
        int getLives();
        int getCooldown();
        bool initValues(std::unordered_map<std::string, std::string> = {}) override;

      private:
        int m_damage;
        int m_lives;
        int m_cooldown;
    };
} // namespace Eldersbane
#endif