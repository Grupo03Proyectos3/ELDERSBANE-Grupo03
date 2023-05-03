#pragma once
#ifndef __PLAYER_HEALTH_H__
#define __PLAYER_HEALTH_H__
#include "Scripting/BehaviourScript.h"

namespace Eldersbane {

	class PlayerHealth : public Flamingo::BehaviourScript
	{
	public:

		PlayerHealth();
		~PlayerHealth();

        Flamingo::BehaviourScript* clone() override;

		void update(float t_deltaTime) override;

		void onCollisionEnter(Flamingo::GameObject* t_other) override;

		// Funciones propias
		void takeDamage(int t_amount);

		void killPlayer();

	private:
		int max_health;
		int current_health;

	};
}

#endif

