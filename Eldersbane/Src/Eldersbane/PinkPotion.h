#pragma once
#include "Scripting\BehaviourScript.h"

namespace Eldersbane
{
    /// <summary>
    /// Almacena la información de la vida extra que debe añadir.
    /// Se recoge en el PlayerHealth
    /// </summary>
    class PinkPotion : public Flamingo::BehaviourScript
    {
      public:
        PinkPotion();
        ~PinkPotion();

        void start() override;
        BehaviourScript* clone() override;
        int getExtraLives() const;

      private:
        int m_lives;
    };
} // namespace Eldersbane