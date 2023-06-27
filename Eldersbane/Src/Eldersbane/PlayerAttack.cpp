#include "PlayerAttack.h"
#include "ECS/ManagerFunctions.h"
#include "FlamingoBase/SceneManager.h"
#include <FlamingoExport/FlamingoCore.h>
#include <ECS/InputHandlerContainer.h>
namespace Eldersbane{
    PlayerAttack::PlayerAttack()
    {
    }

    PlayerAttack::~PlayerAttack()
    {
        delete m_attack_timer;
    }

    Flamingo::BehaviourScript* PlayerAttack::clone(){
        return new PlayerAttack();
    }

    bool Eldersbane::PlayerAttack::initValues(std::unordered_map<std::string, std::string> t_args)
    {
        auto it_cooldown_attack = t_args.find("t_cooldown_attack");

        if (it_cooldown_attack != t_args.end())
        {
            unsigned int s = std::stoi(it_cooldown_attack->second);
            m_cooldown_attack = s;

            return true;
        }

        return false;
    }
    void PlayerAttack::start()
    {
        m_sword = Flamingo::getComponent<Sword>(Flamingo::FlamingoCore::getSceneManager()->getSceneActive()->getObject("sword"));
        m_Swordtransform = Flamingo::getComponent<Flamingo::Transform>(m_sword->gameObject());
        m_transform = Flamingo::getComponent<Flamingo::Transform>(gameObject());

        m_sword->gameObject()->setActive(false);
        m_audio_ataque = Flamingo::getComponent<Flamingo::AudioSource>(gameObject());
        m_attack_timer = new Flamingo::Timer();
    }

    void PlayerAttack::update(float t_deltaTime)
    {
        Flamingo::SVector3 offset = {200, 0, 0};
        m_Swordtransform->setPosition(m_transform->getPosition() + offset);

        auto trpTarget = m_transform;
        auto mtrp = m_Swordtransform;

        Flamingo::SVector3 newOffset = trpTarget->getRotation().Rotate(offset);
        mtrp->setPosition(trpTarget->getPosition() - newOffset);
        mtrp->setRotation(trpTarget->getRotation(), Flamingo::STransformSpace::WORLD);
    

        if (!m_sword->gameObject()->getActive() && Flamingo::Input().getMouseButtonState(Flamingo::LEFT))
        {
            m_sword->gameObject()->setActive(true);
            if (m_audio_ataque)
            {
                m_audio_ataque->playAudio();
                m_audio_ataque->setVolume(2.0);
            }
        }
        else if (m_sword->gameObject()->getActive())
        {
            if (m_attack_timer->getElapsedTime() >= m_cooldown_attack)
            {
                m_sword->gameObject()->setActive(false);
                m_attack_timer->reset();
            }
        }
    }
    void PlayerAttack::desactivarColliderEspada()
    {
        m_sword->gameObject()->setActive(false);
    }
} // namespace Eldersbane