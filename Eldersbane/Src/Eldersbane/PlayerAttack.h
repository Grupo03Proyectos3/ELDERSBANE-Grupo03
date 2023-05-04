#pragma once
#include "Scripting\BehaviourScript.h"
#include <FlamingoBase/Transform.h>
#include <Physics/RigidBody.h>
#include "Sword.h"

namespace Eldersbane
{
    class PlayerAttack : public Flamingo::BehaviourScript{
      public:
        PlayerAttack();
        ~PlayerAttack();
        Flamingo::BehaviourScript* clone() override;
        void start() override;

        void update(float t_deltaTime) override;

        Flamingo::SVector3 getOrientation(float rad);

      private:
        float percentRotate = 0;
        Sword* m_sword;
        Flamingo::Transform* m_transform;       
        Flamingo::SVector3 m_forward;
        Flamingo::SVector3 m_right;
    };
} // namespace Eldersbane