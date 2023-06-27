#pragma once
#ifndef __PLAYER_HEALTH_H__
#define __PLAYER_HEALTH_H__
#include "Audio/AudioSource.h"
#include "FlamingoUtils/Timer.h"
#include "Scripting/BehaviourScript.h"
#include "Shield.h"
#include "UI/UIElement.h"
#include <Render/ParticleSystem.h>

namespace Eldersbane
{
    /**
     * @brief Clase que controla la vida del jugador y el perder en caso de quedarse sin vida.
     *
     * A su vez, gestiona la UI visual de las vidas.
     */
    class PlayerHealth : public Flamingo::BehaviourScript
    {
      public:
        PlayerHealth();
        ~PlayerHealth();

        Flamingo::BehaviourScript* clone() override;
        bool initValues(std::unordered_map<std::string, std::string> = {}) override;
        void start() override;
        void update(float t_deltaTime) override;

        void onCollisionEnter(Flamingo::GameObject* t_other) override;

        /**
         * @brief Inflije daño al jugador.
         * @param[in] t_amount Cantidad de daño a infligir.
         */
        void takeDamage(int t_amount);
        /**
         * @brief Cura una cantidad de vida al jugador.
         * @param[in] t_amount Cantidad de vida a curar.
         */
        void healDamage(int t_amount);
        /**
         * @brief Actualiza la interfaz de usuario para reflejar la cantidad de vidas del jugador.
         */
        void setUIToHealth();
        /**
         * @brief Mata al jugador, volviendo al menu.
         */
        void killPlayer();

      private:
        int m_max_health;     /**< Cantidad máxima de vida del jugador. */
        int m_current_health; /**< Cantidad actual de vida del jugador. */

        Shield* m_shield; /**< Puntero al escudo del jugador. */

        Flamingo::Transform* m_transform;
        Flamingo::Transform* m_shield_transform; 

        Flamingo::Timer* m_invencibility; /**< Temporizador de invencibilidad del jugador. */
        Flamingo::Timer* m_cover_timer;   /**< Temporizador para la duración de la cubierta. */
        Flamingo::Timer* m_blood_timer;   /**< Temporizador para la duración de la sangre. */

        unsigned int m_cooldown_cover;         /**< Tiempo de espera para usar el escudo. */
        unsigned int m_duration_cover;         /**< Duración de la accion de cubrirse con el escudo. */
        unsigned int m_duration_blood;         /**< Duración de la sangre. */
        unsigned int m_duration_invencibility; /**< Duración de la invencibilidad. */

        std::vector<Flamingo::UIElement*> m_full_containers;  /**< Vector de elementos de la interfaz de usuario para vidas completas. */
        std::vector<Flamingo::UIElement*> m_empty_containers; /**< Vector de elementos de la interfaz de usuario para vidas vacías. */

        std::string m_full_name;  /**< Nombre del archivo de imagen para las vidas completas. */
        std::string m_full_img;   /**< Ruta de la imagen para las vidas completas. */
        std::string m_empty_name; /**< Nombre del archivo de imagen para las vidas vacías. */
        std::string m_empty_img;  /**< Ruta de la imagen para las vidas vacías. */
        std::string m_die_scene;  /**< Escena a cargar cuando el jugador muere. */

        Flamingo::AudioSource* m_player_get_damage;   /**<Audio recibir daño. */
        Flamingo::AudioSource* m_cover_hit_sound;   /**<Audio escudo golpeado. */

        Flamingo::ParticleSystem* m_parts; /**< Sistema de partículas para efecto de sangre. */

        bool m_bleeding; /**< Indica si el jugador está sangrando. */
    };
} // namespace Eldersbane

#endif
