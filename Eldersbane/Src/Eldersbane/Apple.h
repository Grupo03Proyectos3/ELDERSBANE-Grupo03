#pragma once
#ifndef __APPLE_H__
#define __APPLE_H__
#include "Scripting/BehaviourScript.h"
#include <FlamingoBase/Transform.h>
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
        void start() override;
        void update(float t_delta_time) override;
        int getDurability();
        void addVelocity();

      private:
        int m_apple_durability;
        int m_velocity;
        Flamingo::SVector3 m_direction;
        Flamingo::Transform* m_transform;
    };
} // namespace Eldersbane
#endif