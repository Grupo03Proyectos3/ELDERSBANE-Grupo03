#pragma once
#ifndef __PLAYER_HEALTH_H__
#define __PLAYER_HEALTH_H__
#include "Scripting/BehaviourScript.h"
#include "UI/UIElement.h"
#include "Audio/AudioSource.h"
#include "FlamingoUtils/Timer.h"

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
        //bool initValues(std::unordered_map<std::string, std::string> = {}) override;
		void start() override;

		void onCollisionEnter(Flamingo::GameObject* t_other) override;

		// Funciones propias
		void takeDamage(int t_amount);
		void healDamage(int t_amount);

		void setUIToHealth();

		void killPlayer();

	private:
		int m_max_health;
		int m_current_health;

		std::vector<Flamingo::UIElement*> m_full_containers;
        std::vector<Flamingo::UIElement*> m_empty_containers;
        std::string m_full_name;
        std::string m_full_img;
        std::string m_empty_name;
        std::string m_empty_img;

		std::string m_die_scene;

		Flamingo::AudioSource* m_player_get_damage;

        Flamingo::Timer* m_invencibility;
		//Tiempo en milisegundos
        unsigned int m_invencibility_time;
	};
}

#endif

