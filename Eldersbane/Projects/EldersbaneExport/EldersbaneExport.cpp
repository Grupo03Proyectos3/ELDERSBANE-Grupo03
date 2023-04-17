// EldersbaneExport.cpp : Define las funciones exportadas del archivo DLL.
//

#include "pch.h"
#include "framework.h"
#include "EldersbaneExport.h"
#include "FlamingoExport/FlamingoExport.h"
#include <iostream>

bool InitJuego(void)
{
	CFlamingoExport* miMotor = CFlamingoExport::Instance();
	miMotor->DoSomething();

	// Inicializar primera escena


	std::cout << "Fin juego \n";
	return true;
}