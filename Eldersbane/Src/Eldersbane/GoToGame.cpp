#include "ECS/ManagerFunctions.h"
#include "FlamingoBase/Scene.h"
#include "FlamingoBase/SceneManager.h"
#include "FlamingoExport/FlamingoCore.h"
#include "GoToGame.h"
#include "UI/UIElement.h"
#include <FlamingoExport/FlamingoCore.h>

Flamingo::BehaviourScript* Eldersbane::GoToGame::clone()
{
    return new GoToGame();
}

void Eldersbane::GoToGame::start()
{
    m_scene = "mapa";

    auto m_sceneMngr = Flamingo::FlamingoCore::getSceneManager();
    Flamingo::Scene* m = m_sceneMngr->getSceneActive();

    auto d = m->getObject("button");
    auto a = Flamingo::getComponent<Flamingo::UIElement>(d);

    a->subsEvent(this);
}

void Eldersbane::GoToGame::clickFuntion()
{
    Flamingo::FlamingoCore::getSceneManager()->setSceneActive(m_scene);
}
