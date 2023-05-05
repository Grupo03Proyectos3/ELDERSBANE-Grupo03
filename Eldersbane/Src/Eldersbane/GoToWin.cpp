#include "GoToWin.h"
#include "ECS/ManagerFunctions.h"
#include "FlamingoBase/Scene.h"
#include "FlamingoBase/SceneManager.h"
#include "FlamingoExport/FlamingoCore.h"
#include "PlayerHealth.h"
#include "UI/UIElement.h"
#include <FlamingoExport/FlamingoCore.h>

Flamingo::BehaviourScript* Eldersbane::GoToWin::clone()
{
    return new GoToWin();
}

void Eldersbane::GoToWin::start()
{
    m_scene = "WinGame"; // To Do : añadir escena de ganar
}

void Eldersbane::GoToWin::update(float t_deltaTime)
{
}

void Eldersbane::GoToWin::onCollisionEnter(Flamingo::GameObject* t_other)
{
    if (!m_done && Flamingo::getComponent<Eldersbane::PlayerHealth>(t_other))
    {
        m_done = true;

        auto sM = Flamingo::FlamingoCore::getSceneManager();
        sM->reloadScenePetition();
        sM->startScene("WinGame");
    }
}
