#pragma once
#include "Scripting\BehaviourScript.h"

//Script que lleva el player. Cuando choca con algun objeto hace si efecto
namespace Eldersbane
{
    /// <summary>
    /// Intento de clase para la recogida pasiva de objetos en una misma clase.
    /// </summary>
    class PickUp : public Flamingo::BehaviourScript
    {
      public:
        PickUp();
        ~PickUp();

        BehaviourScript* clone() override;
        void onCollisionEnter(Flamingo::GameObject* t_other) override;
    };
}
