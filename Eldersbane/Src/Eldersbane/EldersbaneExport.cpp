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

bool InitJuego(void)
{
	CFlamingoExport* miMotor = CFlamingoExport::Instance();
	//miMotor->DoSomething();
	
	// Inicializar primera escena

	std::cout << "juegoDado" << "\n";
	Flamingo::ScriptManager::instance()->addGameScript("changeScene", new ChangeScene());

	const std::string first_scene = "menu";
	Flamingo::SetFirstScene(first_scene);

	// pasarle la lista de componentes del juego

	return true;
}