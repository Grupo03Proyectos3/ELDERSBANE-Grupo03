#include "ChangeScene.h"
#include "FlamingoExport/FlamingoCore.h"
#include "FlamingoBase/SceneManager.h"
#include "FlamingoBase/Scene.h"
#include "UI/UIElement.h"
#include "ECS/Manager.h"

ChangeScene::ChangeScene() : BehaviourScript()
{

	auto m_mngr = Flamingo::Manager::instance();
	auto m_sceneMngr = Flamingo::SceneManager::instance();
	Flamingo::Scene* m = m_sceneMngr->getSceneActive();

	auto d = m->getObject("button");
	auto a = m_mngr->getComponent<Flamingo::UIElement>(d);


	//a->subsEvent(setFirstScene, this);

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
	Flamingo::setFirstScene("mapa");
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

void ChangeScene::clickFuntion()
{
	setFirstScene();
}

