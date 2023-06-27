#include "ChangeScene.h"
#include "ECS/ManagerFunctions.h"
#include "FlamingoBase/Scene.h"
#include "FlamingoBase/SceneManager.h"
#include "FlamingoExport/FlamingoCore.h"
#include "UI/UIElement.h"
#include "Audio/AudioSource.h"
#include "Audio/AudioSystem.h"

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

         Flamingo::FlamingoCore::getSceneManager()->startScene(m_scene);

    }
    bool Eldersbane::ChangeScene::initValues(std::unordered_map<std::string, std::string> t_args)
    {
        auto it_scene = t_args.find("t_scene");
       

        if (it_scene != t_args.end())
        {
            m_scene = it_scene->second;
            
            return true;
        }

        return false;
    }
    void ChangeScene::start()
    {
        auto m_sceneMngr = Flamingo::FlamingoCore::getSceneManager();
        Flamingo::Scene* m = m_sceneMngr->getSceneActive();

        auto d = this->gameObject();
        auto a = Flamingo::getComponent<Flamingo::UIElement>(d);

        a->subsEvent(this);
    }

    void ChangeScene::clickFuntion()
    {
     
        setFirstScene();
    }
}
