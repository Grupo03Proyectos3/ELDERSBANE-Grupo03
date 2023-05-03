#pragma once
#include "Scripting\BehaviourScript.h"
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
        void onCollisionEnter(Flamingo::GameObject* t_other) override;

        float getRotSensitivity();

      private:
        float speed = 75.0f;
        float sensitivity = 0.03f;
        Flamingo::Transform* m_transform;
        Flamingo::Camera* m_camera;
        float percentRotate=0;
    };
} // namespace Eldersbane
