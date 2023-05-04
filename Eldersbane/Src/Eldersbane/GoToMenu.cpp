#include "ECS/ManagerFunctions.h"
#include "FlamingoBase/Scene.h"
#include "FlamingoBase/SceneManager.h"
#include "FlamingoExport/FlamingoCore.h"
#include "GoToMenu.h"
#include "UI/UIElement.h"
#include <FlamingoExport/FlamingoCore.h>

Flamingo::BehaviourScript* Eldersbane::GoToMenu::clone()
{
    return new GoToMenu();
}

void Eldersbane::GoToMenu::start()
{
    m_scene = "menu";

    auto m_sceneMngr = Flamingo::FlamingoCore::getSceneManager();
    Flamingo::Scene* m = m_sceneMngr->getSceneActive();

    auto d = this->gameObject();
    auto a = Flamingo::getComponent<Flamingo::UIElement>(d);

    a->subsEvent(this);
}

void Eldersbane::GoToMenu::clickFuntion()
{
    Flamingo::FlamingoCore::getSceneManager()->setSceneActive(m_scene);
}
