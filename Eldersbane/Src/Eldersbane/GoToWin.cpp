#include "GoToWin.h"
#include <FlamingoExport/FlamingoCore.h>
#include "ECS/ManagerFunctions.h"
#include "FlamingoBase/Scene.h"
#include "FlamingoBase/SceneManager.h"
#include "FlamingoExport/FlamingoCore.h"
#include "UI/UIElement.h"
#include "PlayerHealth.h"

Flamingo::BehaviourScript* Eldersbane::GoToWin::clone()
{
    return new GoToWin();
}

void Eldersbane::GoToWin::start()
{
    m_scene = "WinGame"; // To Do : añadir escena de ganar
}

void Eldersbane::GoToWin::onCollisionEnter(Flamingo::GameObject* t_other)
{
    if (Flamingo::getComponent<Eldersbane::PlayerHealth>(t_other))
    {
        Flamingo::FlamingoCore::getSceneManager()->startScene(m_scene);
    }
}
