#pragma once
#ifndef __PURPLE_ENEMY_H__
#define __PURPLE_ENEMY_H__
#include "Scripting/BehaviourScript.h"

namespace Eldersbane
{

     /// <summary>
    /// Clase de enemigo fuerte y con bastante vida.
    /// Posee variables para obtener sus atributos
    /// </summary>
    class PurpleEnemy : public Flamingo::BehaviourScript
    {
      public:
        PurpleEnemy();
        ~PurpleEnemy();
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