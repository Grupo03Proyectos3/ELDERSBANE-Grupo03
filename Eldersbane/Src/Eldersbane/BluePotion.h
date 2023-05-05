#pragma once

#include "Scripting\BehaviourScript.h"

namespace Eldersbane
{
    /// <summary>
    /// Almacena la información del multiplicador de velocidad que debe dar
    /// al jugador.
    /// Se recoge en el PlayerMovement
    /// </summary>
    class BluePotion : public Flamingo::BehaviourScript
    {
      public:
        BluePotion();
        ~BluePotion();

        void start() override;
        BehaviourScript* clone() override;
        float getSpeedMultiplier();

      private:
        float m_speed_multiplier;
    };
} // namespace Eldersbane