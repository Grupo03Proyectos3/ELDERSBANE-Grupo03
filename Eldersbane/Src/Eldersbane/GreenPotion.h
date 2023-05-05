#pragma once
#include "Scripting\BehaviourScript.h"

namespace Eldersbane
{
    /// <summary>
    /// Almacena la información de daño extra que debe añadir al jugador. No esta en uso.
    /// </summary>
    class GreenPotion : public Flamingo::BehaviourScript
    {
      public:
        GreenPotion();
        ~GreenPotion();

        void start() override;
        BehaviourScript* clone() override;

      private:
        int m_damage_multiplier;
    };
} // namespace Eldersbane