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
#include "Shield.h"
#include "Apple.h"
#include "PlayerAttack.h"
#include "MenuMusic.h"
#include "BlueEnemy.h"
#include "RedEnemy.h"
#include "PurpleEnemy.h"
#include "TreeEnemy.h"
#include "BlackEnemy.h"
#include "GoToLose.h"
#include "GoToWin.h"
#include "GoToMenu.h"
#include "GoToGame.h"
#include "FlowersEnemy.h"

bool InitJuego(void)
{
    auto f_core = Flamingo::FlamingoCore::instance();
    // Inicializar primera escena
    std::string first_scene = "menu";
    f_core->addSceneToLoad("menu");
    f_core->addSceneToLoad("WinGame");
    f_core->addSceneToLoad("LoseGame");
    f_core->addSceneToLoad("mapa");
    f_core->setFirstScene("menu");

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
    f_core->addGameScript("TargetCamera", new Eldersbane::TargetCamera());
    f_core->addGameScript("Sword", new Eldersbane::Sword());
    f_core->addGameScript("Shield", new Eldersbane::Shield());
    f_core->addGameScript("Apple", new Eldersbane::Apple());
    f_core->addGameScript("PlayerAttack", new Eldersbane::PlayerAttack());
    f_core->addGameScript("MenuMusic", new Eldersbane::MenuMusic());
    f_core->addGameScript("BlueEnemy", new Eldersbane::BlueEnemy());
    f_core->addGameScript("FlowersEnemy", new Eldersbane::FlowersEnemy());
    f_core->addGameScript("RedEnemy", new Eldersbane::RedEnemy());
    f_core->addGameScript("PurpleEnemy", new Eldersbane::PurpleEnemy());
    f_core->addGameScript("TreeEnemy", new Eldersbane::TreeEnemy());
    f_core->addGameScript("BlackEnemy", new Eldersbane::BlackEnemy());
    f_core->addGameScript("GoToWin", new Eldersbane::GoToWin());
    f_core->addGameScript("GoToLose", new Eldersbane::GoToLose());
    f_core->addGameScript("GoToGame", new Eldersbane::GoToGame());
    f_core->addGameScript("GoToMenu", new Eldersbane::GoToMenu());
   
    return true;
}

void setGameComponents()
{
    // Flamingo::ScriptManager::instance()->addGameScript("changeScene", new ChangeScene());
    // Flamingo::ScriptManager::instance()->addGameScript("playerHealth", new PlayerHealth());
}