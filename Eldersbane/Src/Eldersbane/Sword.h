#pragma once
#ifndef __SWORD_H__
#define __SWORD_H__
#include "Scripting/BehaviourScript.h"
#include <FlamingoBase/Transform.h>
namespace Eldersbane
{
    class Sword : public Flamingo::BehaviourScript
    {
      public:
        Sword();
        virtual ~Sword();
        Flamingo::BehaviourScript* clone() override;
        void start() override;
        void update(float t_delta_time) override;
        void onCollisionEnter(Flamingo::GameObject* t_other) override;
        void onCollisionExit(Flamingo::GameObject* t_other) override;

      private:
        Flamingo::Transform* m_tr;
    };
} // namespace Eldersbane
#endif