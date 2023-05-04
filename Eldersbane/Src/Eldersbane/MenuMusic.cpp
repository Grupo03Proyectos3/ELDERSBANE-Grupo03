#include "MenuMusic.h"
#include <Audio/AudioSource.h>
#include "ECS/ManagerFunctions.h"

Eldersbane::MenuMusic::MenuMusic()
{
}

Eldersbane::MenuMusic::~MenuMusic()
{
}

Flamingo::BehaviourScript* Eldersbane::MenuMusic::clone()
{
    return new MenuMusic();
}

void Eldersbane::MenuMusic::start()
{

    auto audio = Flamingo::getComponent<Flamingo::AudioSource>(gameObject());
    if (audio)
    {
        audio->playAudio();
        audio->setVolume(2.0);
        std::cout << "reproduciendo música\n";
    }
}


