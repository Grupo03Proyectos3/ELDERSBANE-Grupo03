#pragma once
#include "Scripting\BehaviourScript.h"
#include <FlamingoBase/Transform.h>
#include <Render/Camera.h>
#include <Physics/RigidBody.h>
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
        Flamingo::SVector3 getOrientation(float rad);
      private:
        float speed = 1.5f;
        float sensitivity = 0.03f;
        Flamingo::Transform* m_transform;
        Flamingo::Camera* m_camera;
        float percentRotate=0;

        Flamingo::RigidBody* m_rb;
        Flamingo::SVector3 m_forward;
        Flamingo::SVector3 m_right;

        float initialY;
    };
} // namespace Eldersbane
