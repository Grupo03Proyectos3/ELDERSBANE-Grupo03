#pragma once
#include "Scripting\BehaviourScript.h"

namespace Eldersbane
{
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