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

bool Eldersbane::GoToWin::initValues(std::unordered_map<std::string, std::string> t_args)
{
    auto k = t_args.find("t_scene");

    if (k != t_args.end())
    {
        m_scene = k->second;

        return true;
    }
    else
        return false;
    return true;
}

void Eldersbane::GoToWin::onCollisionEnter(Flamingo::GameObject* t_other)
{
    if (!m_done && Flamingo::getComponent<Eldersbane::PlayerHealth>(t_other))
    {
        m_done = true;

        auto sM = Flamingo::FlamingoCore::getSceneManager();
        sM->reloadScenePetition();
        sM->startScene(m_scene);
    }
}
