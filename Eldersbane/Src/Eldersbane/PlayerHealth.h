#pragma once
#ifndef __PLAYER_HEALTH_H__
#define __PLAYER_HEALTH_H__
#include "Scripting/BehaviourScript.h"
#include "UI/UIElement.h"

namespace Eldersbane {

	class PlayerHealth : public Flamingo::BehaviourScript
	{
	public:

		PlayerHealth();
		~PlayerHealth();

        Flamingo::BehaviourScript* clone() override;

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

		std::vector<Flamingo::UIElement*> m_heart_containers;
        std::string m_img_name;
        std::string m_full_img;
        std::string m_empty_img;

	};
}

#endif

