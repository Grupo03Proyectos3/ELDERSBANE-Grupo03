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
#include "TargetCamera.h"
#include "Sword.h"
#include "PlayerAttack.h"
#include "MenuMusic.h"
#include "BlueEnemy.h"
#include "RedEnemy.h"
#include "PurpleEnemy.h"
#include "BlackEnemy.h"
#include "GoToLose.h"
#include "GoToWin.h"
#include "GoToMenu.h"
#include "GoToGame.h"

bool InitJuego(void)
{
    bool init = true;

    auto f_core = Flamingo::FlamingoCore::instance();
    // Inicializar primera escena
    std::string first_scene = "menu";
    f_core->addSceneToLoad("menu");
    f_core->addSceneToLoad("WinGame");
    f_core->addSceneToLoad("LoseGame");
    f_core->addSceneToLoad("mapa");
    f_core->setFirstScene("menu");

    // pasarle la lista de componentes del juego
    init = f_core->addGameScript("ChangeScene", new Eldersbane::ChangeScene());
    init = f_core->addGameScript("ExitGame", new Eldersbane::ExitGame());
    init = f_core->addGameScript("PlayerMovement", new Eldersbane::PlayerMovement());
    init = f_core->addGameScript("PlayerHealth", new Eldersbane::PlayerHealth());
    init = f_core->addGameScript("Enemy", new Eldersbane::Enemy());
    init = f_core->addGameScript("PickUp", new Eldersbane::PickUp());
    init = f_core->addGameScript("RedPotion", new Eldersbane::RedPotion());
    init = f_core->addGameScript("PinkPotion", new Eldersbane::PinkPotion());
    init = f_core->addGameScript("BluePotion", new Eldersbane::BluePotion());
    init = f_core->addGameScript("GreenPotion", new Eldersbane::GreenPotion());
    init = f_core->addGameScript("TargetCamera", new Eldersbane::TargetCamera());
    init = f_core->addGameScript("Sword", new Eldersbane::Sword());
    init = f_core->addGameScript("PlayerAttack", new Eldersbane::PlayerAttack());
    init = f_core->addGameScript("MenuMusic", new Eldersbane::MenuMusic());
    init = f_core->addGameScript("BlueEnemy", new Eldersbane::BlueEnemy());
    init = f_core->addGameScript("RedEnemy", new Eldersbane::RedEnemy());
    init = f_core->addGameScript("PurpleEnemy", new Eldersbane::PurpleEnemy());
    init = f_core->addGameScript("BlackEnemy", new Eldersbane::BlackEnemy());
    init = f_core->addGameScript("GoToWin", new Eldersbane::GoToWin());
    init = f_core->addGameScript("GoToLose", new Eldersbane::GoToLose());
    init = f_core->addGameScript("GoToGame", new Eldersbane::GoToGame());
    init = f_core->addGameScript("GoToMenu", new Eldersbane::GoToMenu());
    // t_core->addGameScript("ChangeScene", new ChangeScene());
   
    return init;
}

void setGameComponents()
{
    // Flamingo::ScriptManager::instance()->addGameScript("changeScene", new ChangeScene());
    // Flamingo::ScriptManager::instance()->addGameScript("playerHealth", new PlayerHealth());
}