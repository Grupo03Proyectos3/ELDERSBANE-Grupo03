#pragma once
#include "Lua\BehaviourScript.h"
#include <FlamingoBase/Transform.h>
#include <Render/Camera.h>
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
        float speed = 75.0f;
        float sensitivity = 5.0f;
        Flamingo::Transform* m_transform;
        Flamingo::Camera* m_camera;
    };
} // namespace Eldersbane
