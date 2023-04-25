// EldersbaneExport.cpp : Define las funciones exportadas del archivo DLL.
//

#include "pch.h"
#include "framework.h"
#include "EldersbaneExport.h"
#include <iostream>

#include "FlamingoExport/FlamingoExport.h"
#include "FlamingoExport/FlamingoCore.h"

bool InitJuego(void)
{
	CFlamingoExport* miMotor = CFlamingoExport::Instance();
	//miMotor->DoSomething();
	
	// Inicializar primera escena

	const std::string first_scene = "mapa";
	Flamingo::SetFirstScene(first_scene);

	// pasarle la lista de componentes del juego

	return true;
}