#pragma once
#include "Scripting\BehaviourScript.h"

namespace Eldersbane
{
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