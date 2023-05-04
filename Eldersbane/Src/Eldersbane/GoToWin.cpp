#include "GoToWin.h"
#include <FlamingoExport/FlamingoCore.h>
#include "ECS/ManagerFunctions.h"
#include "FlamingoBase/Scene.h"
#include "FlamingoBase/SceneManager.h"
#include "FlamingoExport/FlamingoCore.h"
#include "UI/UIElement.h"

Flamingo::BehaviourScript* Eldersbane::GoToWin::clone()
{
    return new GoToWin();
}

void Eldersbane::GoToWin::start()
{
    m_scene = "menu"; // To Do : añadir escena de ganar

    auto m_sceneMngr = Flamingo::FlamingoCore::getSceneManager();
    Flamingo::Scene* m = m_sceneMngr->getSceneActive();

    auto d = this->gameObject();
    auto a = Flamingo::getComponent<Flamingo::UIElement>(d);

    a->subsEvent(this);
}

void Eldersbane::GoToWin::clickFuntion()
{
    Flamingo::FlamingoCore::getSceneManager()->setSceneActive(m_scene);
}
