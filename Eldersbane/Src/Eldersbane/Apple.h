#pragma once
#ifndef __APPLE_H__
#define __APPLE_H__
#include "Scripting/BehaviourScript.h"
#include <FlamingoBase/Transform.h>
#include <Physics/RigidBody.h>
namespace Eldersbane
{
    /// <summary>
    /// Clase que representa la manzada, que el arbol magico usa como municion
    /// </summary>
    class Apple : public Flamingo::BehaviourScript
    {
      public:
        Apple();
        virtual ~Apple();
        Flamingo::BehaviourScript* clone() override;
        bool initValues(std::unordered_map<std::string, std::string> = {}) override;
        int getDurability();


      private:
        int m_apple_durability;
    };
} // namespace Eldersbane
#endif