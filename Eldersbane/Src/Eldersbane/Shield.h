#pragma once
#ifndef __SHIELD_H__
#define __SHIELD_H__
#include "Scripting/BehaviourScript.h"
#include <FlamingoBase/Transform.h>
#include <Physics/RigidBody.h>
namespace Eldersbane
{
    /// <summary>
    /// Clase que representa un escudo y guarda el número de golpes de ha recibido, y si esta disponible para usar
    /// </summary>
    class Shield : public Flamingo::BehaviourScript
    {
      public:
        Shield();
        virtual ~Shield();
        Flamingo::BehaviourScript* clone() override;
        bool initValues(std::unordered_map<std::string, std::string> = {}) override;
        void start() override;
        void takeHit();
        bool getAvailability();

      private:

        int m_shield_durability;
        int m_currentHits;
        bool m_available = false;
    };
} // namespace Eldersbane
#endif