#pragma once
#ifndef __SHIELD_H__
#define __SHIELD_H__
#include "Scripting/BehaviourScript.h"
#include <FlamingoBase/Transform.h>
#include <Physics/RigidBody.h>
namespace Eldersbane
{

    /**
     * @brief Clase que representa un escudo y guarda el número de golpes de ha recibido, y si esta disponible para usar
     */

    class Shield : public Flamingo::BehaviourScript
    {
      public:
        Shield();
        virtual ~Shield();
        Flamingo::BehaviourScript* clone() override;
        bool initValues(std::unordered_map<std::string, std::string> = {}) override;
        void start() override;
        /**
         * @brief El escudo recibe un golpe
         */
        void takeHit();
        /**
         * @brief Resetea los golpes 
         */
        void resetHits();
        /**
         * @brief Devuelve si el escudo esta disponible para usar
         */
        bool getAvailability();

      private:
        int m_shield_durability;
        int m_currentHits;
        bool m_available;
    };
} // namespace Eldersbane
#endif