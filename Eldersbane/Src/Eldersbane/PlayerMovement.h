#pragma once
#include "Lua\BehaviourScript.h"
#include <FlamingoBase/Transform.h>
namespace Eldersbane {
	class PlayerMovement :public Flamingo::BehaviourScript {
	public:

		PlayerMovement();
		~PlayerMovement();
		virtual BehaviourScript* clone();
		void start() override;
		void initValues() override;
		void initComponent() override;

		void update(float t_deltaTime) override;

	private:
		float speed = 10.0f;
		float sensitivity = 5.0f;
		Flamingo::Transform* m_transform;
	};
}
