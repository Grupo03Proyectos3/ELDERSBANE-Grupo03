#pragma once
#ifndef __APPLE_H__
#define __APPLE_H__
#include "Scripting/BehaviourScript.h"
#include <FlamingoBase/Transform.h>
#include <FlamingoUtils/Timer.h>
#include <Physics/RigidBody.h>
namespace Eldersbane
{
    /// <summary>
    /// Clase que representa la manzana que el árbol mágico usa como munición
    /// </summary>
    class Apple : public Flamingo::BehaviourScript
    {
      public:
        Apple();
        virtual ~Apple();
        Flamingo::BehaviourScript* clone() override;
        bool initValues(std::unordered_map<std::string, std::string> = {}) override;
        void onCollisionEnter(Flamingo::GameObject* t_other) override;
        void start() override;
        void update(float t_delta_time) override;
        int getDurability();
        void attackPlayer(Flamingo::SVector3 t_dir, Flamingo::SVector3 t_pos);
        void deactivate();
        int getDamage();

      private:
        int m_apple_durability;
        float m_velocity;
        Flamingo::SVector3 m_direction;
        Flamingo::Transform* m_transform;
        bool m_follow;
        Flamingo::Timer* m_timer;
        int m_damage;
    };
} // namespace Eldersbane
#endif