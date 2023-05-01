#include "PlayerMovement.h"
#include <ECS/Manager.h>
#include <FlamingoExport/FlamingoCore.h>
#include <Render/Animator.h>
#include <FlamingoBase/SceneManager.h>
//#include <ECS/InputHandlerContainer.h>
//#include <FlamingoUtils/FlamingoKeys.h>
PlayerMovement::PlayerMovement(){
}

PlayerMovement::~PlayerMovement(){
}

void PlayerMovement::start(){
	auto m_mngr = Flamingo::FlamingoCore::getManager();
	auto m_sceneMngr = Flamingo::FlamingoCore::getSceneManager();
	auto x = m_mngr->getComponent<Flamingo::Animator>(m_sceneMngr->getSceneActive()->getObject("dragon"));
	x->setAnimation("my_animation", true, true);
	std::cout << "ddfssdfsdfsdf\n";
}

void PlayerMovement::initValues(){
}

void PlayerMovement::initComponent(){
	m_mngr->getComponent<Flamingo::Transform>(m_ent);	
}

//void PlayerMovement::update(float t_deltaTime){
	//Flamingo::SVector3 traslation;
	//Flamingo::SVector3 rotation;
	//if (Flamingo::Input().isKeyDown(Flamingo::FLM_w)) {
	//	traslation += Flamingo::SVector3(speed, 0, 0);
	//}
	//else if (Flamingo::Input().isKeyDown(Flamingo::FLM_s)) {
	//	traslation -= Flamingo::SVector3(speed, 0, 0);
	//}
	//if (Flamingo::Input().isKeyDown(Flamingo::FLM_d)) {
	//	traslation += Flamingo::SVector3(0, 0, speed);
	//}
	//else if (Flamingo::Input().isKeyDown(Flamingo::FLM_a)) {
	//	traslation -= Flamingo::SVector3(0, 0, speed);
	//}

	//if (traslation.lenght() > speed) {
	//	traslation = traslation.normalized() * speed;
	//}


	//if (Flamingo::Input().mouseMotionEvent()) { //rotar al player
	//	rotation = Flamingo::SVector3(0, 0, Flamingo::Input().getMouseMotionPos().first*0.1);
	//}
	//m_transform->translate(traslation);
//}