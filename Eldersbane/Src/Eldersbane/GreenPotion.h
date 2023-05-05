#pragma once
#include "Scripting\BehaviourScript.h"

namespace Eldersbane
{
    /// <summary>
    /// Almacena la informaci�n de da�o extra que debe a�adir al jugador. No esta en uso.
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