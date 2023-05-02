#include "ChangeScene.h"
#include "ECS/ManagerFunctions.h"
#include "FlamingoBase/Scene.h"
#include "FlamingoBase/SceneManager.h"
#include "FlamingoExport/FlamingoCore.h"
#include "UI/UIElement.h"

namespace Eldersbane
{
    ChangeScene::ChangeScene()
        : BehaviourScript()
    {
    }

    ChangeScene::~ChangeScene()
    {
    }

    Flamingo::BehaviourScript* ChangeScene::clone()
    {
        return new ChangeScene();
    }

    void ChangeScene::setFirstScene()
    {

        if (Flamingo::FlamingoCore::getSceneManager()->getSceneActive()->getName() == "mapa")
            Flamingo::FlamingoCore::getSceneManager()->setSceneActive("menu");
        else
            Flamingo::FlamingoCore::getSceneManager()->setSceneActive("mapa");

        std::cout << "CAMBIANDO DE ESCENA" << std::endl;
    }

    void ChangeScene::start()
    {
        auto m_sceneMngr = Flamingo::FlamingoCore::getSceneManager();
        Flamingo::Scene* m = m_sceneMngr->getSceneActive();

        auto d = m->getObject("button");
        auto a = Flamingo::getComponent<Flamingo::UIElement>(d);

        a->subsEvent(this);
    }

    void ChangeScene::clickFuntion()
    {
        setFirstScene();
    }
} // namespace Eldersbane
