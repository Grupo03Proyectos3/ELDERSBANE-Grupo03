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

        if (Flamingo::FlamingoCore::getSceneManager()->getSceneActive()->getName() == "mapa")
            Flamingo::FlamingoCore::getSceneManager()->startScene("menu");
        else
            Flamingo::FlamingoCore::getSceneManager()->startScene("mapa");

        std::cout << "CAMBIANDO DE ESCENA" << std::endl;
    }

    void ChangeScene::start()
    {
        auto m_sceneMngr = Flamingo::FlamingoCore::getSceneManager();
        Flamingo::Scene* m = m_sceneMngr->getSceneActive();

        /*auto audio = Flamingo::getComponent<Flamingo::AudioSource>(gameObject());
        if(audio)
        {
            audio->playAudio();  
            audio->setVolume(2.0);
        }*/
        auto d = this->gameObject();
        auto a = Flamingo::getComponent<Flamingo::UIElement>(d);

        a->subsEvent(this);
    }

    void ChangeScene::clickFuntion()
    {
        /*auto audio = Flamingo::getComponent<Flamingo::AudioSource>(gameObject());
        if (audio)
        {
            audio->stopAudio();
        } */
        setFirstScene();
    }
} // namespace Eldersbane
