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
        void onCollisionExit(Flamingo::GameObject* t_other) override;

      private:
        int m_lives;
    };
}