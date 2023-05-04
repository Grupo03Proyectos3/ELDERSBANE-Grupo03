#pragma once
#ifndef __SWORD_H__
#define __SWORD_H__
#include "Scripting/BehaviourScript.h"
#include <FlamingoBase/Transform.h>
#include <Physics/RigidBody.h>
namespace Eldersbane
{
    class Sword : public Flamingo::BehaviourScript
    {
      public:
        Sword();
        virtual ~Sword();
        Flamingo::BehaviourScript* clone() override;
        void start() override;
        void onCollisionEnter(Flamingo::GameObject* t_other) override;
        void onCollisionExit(Flamingo::GameObject* t_other) override;

        void setActive(bool active);
      private:
        Flamingo::Transform* m_tr;
        Flamingo::RigidBody* m_rigidBody;
        bool m_active;
    };
} // namespace Eldersbane
#endif