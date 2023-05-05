#pragma once
#include "Scripting\BehaviourScript.h"

namespace Eldersbane
{
    /// <summary>
    /// Almacena la información de la vida extra que debe añadir.
    /// Se recoge en el PlayerHealth
    /// </summary>
    class RedPotion : public Flamingo::BehaviourScript
    {
      public:
        RedPotion();
        ~RedPotion();

        void start() override;
        BehaviourScript* clone() override;
        int getExtraLives();

      private:
        int m_lives;
    };
}