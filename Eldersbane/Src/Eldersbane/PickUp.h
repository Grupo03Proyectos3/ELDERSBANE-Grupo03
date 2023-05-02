#pragma once
#include "Lua\BehaviourScript.h"

//Script que lleva el player. Cuando choca con algun objeto hace si efecto
namespace Eldersbane
{
    class PickUp : public Flamingo::BehaviourScript
    {
      public:
        PickUp();
        ~PickUp();

        BehaviourScript* clone() override;
        void onCollisionEnter(Flamingo::GameObject* t_other) override;
    };
}
