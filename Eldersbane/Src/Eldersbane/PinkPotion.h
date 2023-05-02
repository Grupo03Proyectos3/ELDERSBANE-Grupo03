#pragma once
#include "Lua\BehaviourScript.h"

namespace Eldersbane
{
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