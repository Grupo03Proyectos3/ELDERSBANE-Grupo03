#pragma once
#ifndef __TREE_ENEMY_H__
#define __TREE_ENEMY_H__
#include "Scripting/BehaviourScript.h"

namespace Eldersbane
{
    /// <summary>
    /// La clase del enemigo árbol mágico
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
        std::string getAppleName();

      private:
        int m_damage;
        int m_lives;
        int m_cooldown;
        std::string m_apple_name;
    };
} // namespace Eldersbane
#endif