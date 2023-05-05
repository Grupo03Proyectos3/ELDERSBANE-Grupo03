#pragma once
#ifndef __PLAYER_HEALTH_H__
#define __PLAYER_HEALTH_H__
#include "Scripting/BehaviourScript.h"
#include "UI/UIElement.h"
#include "Audio/AudioSource.h"

namespace Eldersbane {

	class PlayerHealth : public Flamingo::BehaviourScript
	{
	public:

		PlayerHealth();
		~PlayerHealth();

        Flamingo::BehaviourScript* clone() override;

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
	};
}

#endif

