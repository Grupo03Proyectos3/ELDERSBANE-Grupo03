#pragma once
#include "Scripting\BehaviourScript.h"
#include <FlamingoBase/Transform.h>
#include <Physics/RigidBody.h>

namespace Eldersbane
{
    class PlayerAttack : public Flamingo::BehaviourScript{
      public:
        PlayerAttack();
        ~PlayerAttack();
        Flamingo::BehaviourScript* clone() override;
        void start() override;

        void update(float t_deltaTime) override;

        float getRotSensitivity();
        Flamingo::SVector3 getOrientation(float rad);

      private:
        float speed = 1.5f;
        float sensitivity = 0.03f;
        Flamingo::Transform* m_transform;
        float percentRotate = 0;

        Flamingo::RigidBody* m_rb;
        Flamingo::SVector3 m_forward;
        Flamingo::SVector3 m_right;
    };
} // namespace Eldersbane