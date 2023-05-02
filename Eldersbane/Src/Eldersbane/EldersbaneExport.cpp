// EldersbaneExport.cpp : Define las funciones exportadas del archivo DLL.
//

#include "Windows.h"
#include "EldersbaneExport.h"
#include <iostream>

#include "FlamingoExport/FlamingoExport.h"
#include "FlamingoExport/FlamingoCore.h"

#include "Lua/ScriptManager.h"
#include "ECS/Manager.h"

#include "ChangeScene.h"
#include "PlayerHealth.h"
#include "PlayerMovement.h"

bool InitJuego(void)
{
	//miMotor->DoSomething();
	
	std::cout << "juegoDado" << "\n";

	auto f_core = Flamingo::FlamingoCore::instance();
	// Inicializar primera escena
	std::string first_scene = "menu";
	f_core->addSceneToLoad("mapa");
	//f_core->addSceneToLoad(first_scene);
	f_core->setFirstScene("mapa");

	// pasarle la lista de componentes del juego
	f_core->addGameScript("ChangeScene", new Eldersbane::ChangeScene());
	f_core->addGameScript("PlayerMovement", new Eldersbane::PlayerMovement());
	//setGameComponents(); // -> no lo encuentra :(
    Flamingo::ScriptManager::instance()->addGameScript("ChangeScene", new Eldersbane::ChangeScene());
	Flamingo::ScriptManager::instance()->addGameScript("PlayerMovement", new Eldersbane::PlayerMovement());
	//t_core->addGameScript("ChangeScene", new ChangeScene());	



	return true;
}

void setGameComponents() 
{
	//Flamingo::ScriptManager::instance()->addGameScript("changeScene", new ChangeScene());
	//Flamingo::ScriptManager::instance()->addGameScript("playerHealth", new PlayerHealth());
}