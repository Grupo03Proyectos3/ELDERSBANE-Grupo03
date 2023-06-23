#pragma once
#ifndef __PLAYER_HEALTH_H__
#define __PLAYER_HEALTH_H__
#include "Scripting/BehaviourScript.h"
#include "UI/UIElement.h"
#include "Audio/AudioSource.h"
#include "FlamingoUtils/Timer.h"
#include "Shield.h"
#include "PlayerMovement.h"

namespace Eldersbane {
	/// <summary>
	/// Clase que controla la vida del jugador y el perder en caso de quedarse 
	/// sin vida. A su vez gestiona la UI visual de las vidas.
	/// </summary>
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

		// Funciones propias
		void takeDamage(int t_amount);
		void healDamage(int t_amount);

		void setUIToHealth();

		void killPlayer();

	private:
		int m_max_health;
		int m_current_health;

		Shield* m_shield;
        Flamingo::Transform* m_transform;
        Flamingo::Transform* m_shield_transform;
        unsigned int m_cooldown_cover;
        unsigned int m_duration_cover;

		std::vector<Flamingo::UIElement*> m_full_containers;
        std::vector<Flamingo::UIElement*> m_empty_containers;
        std::string m_full_name;
        std::string m_full_img;
        std::string m_empty_name;
        std::string m_empty_img;
		std::string m_die_scene;

		Flamingo::AudioSource* m_player_get_damage;
        Flamingo::AudioSource* m_cover_hit_sound;


        Flamingo::Timer* m_invencibility;
        Flamingo::Timer* m_cover_timer;
		//Tiempo en milisegundos
        unsigned int m_invencibility_time;
	};
}

#endif

