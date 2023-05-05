#include "ExitGame.h"
#include <iostream>
#include <FlamingoExport/FlamingoCore.h>
#include "FlamingoBase/SceneManager.h"
#include "UI/UIElement.h"
#include "ECS/ManagerFunctions.h"

namespace Eldersbane
{
    Eldersbane::ExitGame::ExitGame()
    {
    }

    Eldersbane::ExitGame::~ExitGame()
    {
    }

    Flamingo::BehaviourScript* Eldersbane::ExitGame::clone()
    {
        return new ExitGame;
    }

    void Eldersbane::ExitGame::start()
    {
        auto m_sceneMngr = Flamingo::FlamingoCore::getSceneManager();
        Flamingo::Scene* m = m_sceneMngr->getSceneActive();

        //auto d = m->getObject("exitButton");
        auto d = this->gameObject();
        auto a = Flamingo::getComponent<Flamingo::UIElement>(d);

        a->subsEvent(this);
    }

    void Eldersbane::ExitGame::clickFuntion()
    {
        exitGame();
    }

    void Eldersbane::ExitGame::exitGame()
    {
        Flamingo::FlamingoCore::instance()->endRunning();
    }
}
