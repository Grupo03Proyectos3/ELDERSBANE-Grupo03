#pragma once
#include "Sword.h"
#include <Audio/AudioSource.h>
#include <FlamingoUtils/Timer.h>

namespace Eldersbane
{
    /**
     * @brief Es el encargado de activar los ataques de la espada y
     * su relación con el player y su movimiento.
     */
    class PlayerAttack : public Flamingo::BehaviourScript
    {
      public:
        PlayerAttack();
        ~PlayerAttack();
        Flamingo::BehaviourScript* clone() override;
        bool initValues(std::unordered_map<std::string, std::string> = {}) override;
        void start() override;
        void update(float t_deltaTime) override;
        /**
         * @brief Desactiva la espada
         */
        void desactivarColliderEspada();

      private:
        unsigned int m_cooldown_attack;

        Sword* m_sword; /**< Puntero a la espada */

        Flamingo::Transform* m_transform;
        Flamingo::Transform* m_Swordtransform;

        Flamingo::AudioSource* m_audio_ataque;

        Flamingo::Timer* m_attack_timer; /**< Temporizador de ataque */
    };
} // namespace Eldersbane