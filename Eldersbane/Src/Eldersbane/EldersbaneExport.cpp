// EldersbaneExport.cpp : Define las funciones exportadas del archivo DLL.
//

#include "EldersbaneExport.h"
#include "Windows.h"
#include <iostream>

#include "FlamingoExport/FlamingoCore.h"
#include "FlamingoExport/FlamingoExport.h"

#include "ECS/Manager.h"
#include "Scripting/ScriptManager.h"

#include "ChangeScene.h"
#include "PlayerHealth.h"
#include "PlayerMovement.h"
#include "Enemy.h"
#include "ExitGame.h"
#include "PickUp.h"
#include "RedPotion.h"
#include "PinkPotion.h"
#include "BluePotion.h"
#include "GreenPotion.h"

bool InitJuego(void)
{
    // miMotor->DoSomething();

    std::cout << "juegoDado"
              << "\n";

    auto f_core = Flamingo::FlamingoCore::instance();
    // Inicializar primera escena
    std::string first_scene = "menu";
    f_core->addSceneToLoad("menu");
    f_core->addSceneToLoad("mapa");
    f_core->setFirstScene("mapa");

    // pasarle la lista de componentes del juego
    f_core->addGameScript("ChangeScene", new Eldersbane::ChangeScene());
    f_core->addGameScript("ExitGame", new Eldersbane::ExitGame());
    f_core->addGameScript("PlayerMovement", new Eldersbane::PlayerMovement());
    f_core->addGameScript("PlayerHealth", new Eldersbane::PlayerHealth());
    f_core->addGameScript("Enemy", new Eldersbane::Enemy());
    f_core->addGameScript("PickUp", new Eldersbane::PickUp());
    f_core->addGameScript("RedPotion", new Eldersbane::RedPotion());
    f_core->addGameScript("PinkPotion", new Eldersbane::PinkPotion());
    f_core->addGameScript("BluePotion", new Eldersbane::BluePotion());
    f_core->addGameScript("GreenPotion", new Eldersbane::GreenPotion());
    // t_core->addGameScript("ChangeScene", new ChangeScene());
   
    return true;
}

void setGameComponents()
{
    // Flamingo::ScriptManager::instance()->addGameScript("changeScene", new ChangeScene());
    // Flamingo::ScriptManager::instance()->addGameScript("playerHealth", new PlayerHealth());
}