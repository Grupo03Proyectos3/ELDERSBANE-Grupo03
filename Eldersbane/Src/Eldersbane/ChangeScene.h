#pragma once
#ifndef __CHANGE_SCENE_H__
#define __CHANGE_SCENE_H__
#include "Lua/BehaviourScript.h"

class ChangeScene : public Flamingo::BehaviourScript
{
public:

	ChangeScene();
	~ChangeScene();

	void initValues() override;

	BehaviourScript* clone() override;

	void update(float t_deltaTime) override;

	void onCollisionEnter(Flamingo::GameObject* t_other) override;

	void onCollisionStay(Flamingo::GameObject* t_other) override;

	void onCollisionExit(Flamingo::GameObject* t_other) override;

	void initComponent() override;

	void clickFuntion() override;

	void setFirstScene();
};

#endif

