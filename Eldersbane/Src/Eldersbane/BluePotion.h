#pragma once

#include "Scripting\BehaviourScript.h"

namespace Eldersbane
{
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