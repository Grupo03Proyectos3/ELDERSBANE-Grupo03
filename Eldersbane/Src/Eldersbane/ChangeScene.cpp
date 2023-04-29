#include "ChangeScene.h"
#include "FlamingoExport/FlamingoCore.h"

ChangeScene::ChangeScene() : BehaviourScript()
{
}

ChangeScene::~ChangeScene()
{
	
}

void ChangeScene::initValues()
{
}

void ChangeScene::initComponent()
{
}

void ChangeScene::setFirstScene()
{
	Flamingo::SetFirstScene("mapa");
}

void ChangeScene::update(float t_deltaTime)
{
}

void ChangeScene::onCollisionEnter(Flamingo::GameObject* t_other)
{
}

void ChangeScene::onCollisionStay(Flamingo::GameObject* t_other)
{
}

void ChangeScene::onCollisionExit(Flamingo::GameObject* t_other)
{
}
