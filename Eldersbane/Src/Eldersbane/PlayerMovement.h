#pragma once
#include "Lua\BehaviourScript.h"
#include <FlamingoBase/Transform.h>
namespace Eldersbane
{
    class PlayerMovement : public Flamingo::BehaviourScript
    {
      public:
        PlayerMovement();
        ~PlayerMovement();
        BehaviourScript* clone() override;
        void start() override;

        void update(float t_deltaTime) override;

      private:
        float speed = 10.0f;
        float sensitivity = 5.0f;
        Flamingo::Transform* m_transform;
    };
} // namespace Eldersbane
