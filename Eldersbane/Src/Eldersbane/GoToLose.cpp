#include "ECS/ManagerFunctions.h"
#include "FlamingoBase/Scene.h"
#include "FlamingoBase/SceneManager.h"
#include "FlamingoExport/FlamingoCore.h"
#include "GoToLose.h"
#include "UI/UIElement.h"
#include <FlamingoExport/FlamingoCore.h>

Flamingo::BehaviourScript* Eldersbane::GoToLose::clone()
{
    return new GoToLose();
}

void Eldersbane::GoToLose::start()
{
    m_scene = "LoseGame";

    auto m_sceneMngr = Flamingo::FlamingoCore::getSceneManager();
    Flamingo::Scene* m = m_sceneMngr->getSceneActive();

    auto d = m->getObject("button");
    auto a = Flamingo::getComponent<Flamingo::UIElement>(d);

    a->subsEvent(this);
}

void Eldersbane::GoToLose::clickFuntion()
{
    Flamingo::FlamingoCore::getSceneManager()->setSceneActive(m_scene);
}
