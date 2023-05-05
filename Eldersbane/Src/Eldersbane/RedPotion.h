#pragma once
#include "Scripting\BehaviourScript.h"

namespace Eldersbane
{
    /// <summary>
    /// Almacena la informaci�n de la vida extra que debe a�adir.
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