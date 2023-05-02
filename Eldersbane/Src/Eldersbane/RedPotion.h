#pragma once
#include "Lua\BehaviourScript.h"

namespace Eldersbane
{
    class RedPotion : public Flamingo::BehaviourScript
    {
      public:
        RedPotion();
        ~RedPotion();

        void start() override;
        BehaviourScript* clone() override;

      private:
        int hearths;
    };
}