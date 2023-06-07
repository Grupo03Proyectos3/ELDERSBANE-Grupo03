#pragma once
#ifndef __SWORD_H__
#define __SWORD_H__
#include "Scripting/BehaviourScript.h"
#include <FlamingoBase/Transform.h>
#include <Physics/RigidBody.h>
namespace Eldersbane
{
    /// <summary>
    /// Clase que representa una espada y realiza da�o a los enemigos al atacar.
    /// </summary>
    class Sword : public Flamingo::BehaviourScript
    {
      public:
        Sword();
        virtual ~Sword();
        Flamingo::BehaviourScript* clone() override;
        bool initValues(std::unordered_map<std::string, std::string> = {}) override;
        void start() override;
        void onCollisionEnter(Flamingo::GameObject* t_other) override;

      private:
        int m_damage;
    };
} // namespace Eldersbane
#endif