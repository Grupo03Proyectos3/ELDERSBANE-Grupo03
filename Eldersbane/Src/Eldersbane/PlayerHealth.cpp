#include "PlayerHealth.h"
#include "ECS/ManagerFunctions.h"
#include "ECS/ecs_defs.h"
#include "Enemy.h"
#include "FlamingoBase/SceneManager.h"
#include "FlamingoExport/FlamingoCore.h"
#include "Audio/AudioSource.h"
#include "PinkPotion.h"
#include "RedPotion.h"
#include <Audio/AudioSource.h>

Eldersbane::PlayerHealth::PlayerHealth()
{
}

Eldersbane::PlayerHealth::~PlayerHealth()
{
    m_full_containers.clear();
    m_empty_containers.clear();
}

Flamingo::BehaviourScript* Eldersbane::PlayerHealth::clone()
{
    return new PlayerHealth();
}

void Eldersbane::PlayerHealth::start()
{
    m_max_health = 5;
    m_current_health = m_max_health;

    m_die_scene = "LoseGame";

    m_full_name = "fullContainer";
    m_full_img = "FullHeart.png";
    m_empty_name = "emptyContainer";
    m_empty_img = "EmptyHeart.png";

    m_player_get_damage = Flamingo::getComponent<Flamingo::AudioSource>(Flamingo::FlamingoCore::getSceneManager()->getSceneActive()->getObject("AudioPlayerGetDamage"));
    for (int i = 0; i < m_max_health; ++i)
    {
        auto heart_container = Flamingo::createGameObject({Flamingo::GROUP_UI});

        auto trans = Flamingo::getComponent<Flamingo::Transform>(heart_container);
        trans->setScale({50.0, 50.0, 1.0});
        trans->setPosition({0.0 + 8 * i, 0.0, 0.0});

        heart_container->setName(m_full_name + std::to_string(i));
        auto cmp = Flamingo::addComponent<Flamingo::UIElement>(heart_container);
        m_full_containers.push_back(cmp);
        cmp->initValues("FlamingoDefaultUI/StaticImage", m_full_name + std::to_string(i), "", m_full_img);
        cmp->initComponent();
    }

    for (int i = 0; i < m_max_health; ++i)
    {
        auto heart_container = Flamingo::createGameObject({Flamingo::GROUP_UI});

        auto trans = Flamingo::getComponent<Flamingo::Transform>(heart_container);
        trans->setScale({50.0, 50.0, 1.0});
        trans->setPosition({0.0 + 8 * i, 0.0, 0.0});

        heart_container->setName(m_empty_name + std::to_string(i));
        auto cmp = Flamingo::addComponent<Flamingo::UIElement>(heart_container);
        m_empty_containers.push_back(cmp);
        cmp->initValues("FlamingoDefaultUI/StaticImage", m_empty_name + std::to_string(i), "", m_empty_img);
        cmp->initComponent();
    }

    setUIToHealth();
}

void Eldersbane::PlayerHealth::onCollisionEnter(Flamingo::GameObject* t_other)
{
    if (Flamingo::hasComponent<Eldersbane::Enemy>(t_other))
    {
        takeDamage(Flamingo::getComponent<Eldersbane::Enemy>(t_other)->getDamage()); // To do : ponerle una cantidad de da�o al enemy
    }

    if (Flamingo::hasComponent<Eldersbane::RedPotion>(t_other))
    {
        auto redPotion = Flamingo::getComponent<Eldersbane::RedPotion>(t_other);
        std::cout << "Coge la pocion ROJA"
                  << "\n";
        m_current_health += redPotion->getExtraLives();
        if (m_current_health > m_max_health)
            m_current_health = m_max_health;
    }
    if (Flamingo::hasComponent<Eldersbane::PinkPotion>(t_other))
    {
        auto pinkPotion = Flamingo::getComponent<Eldersbane::PinkPotion>(t_other);
        std::cout << "Coge la pocion ROSA"
                  << "\n";
        m_current_health += pinkPotion->getExtraLives();
        if (m_current_health > m_max_health)
            m_current_health = m_max_health;
    }
}

void Eldersbane::PlayerHealth::takeDamage(int t_amount)
{
    // To Do : ajuste de vida en la UI
    std::cout << "Damage real: " << t_amount << "\n";
    if (m_current_health > 0)
    {
        m_current_health = std::max(m_current_health - t_amount, 0);
        setUIToHealth();
        if (m_player_get_damage)
        {
            m_player_get_damage->playAudio();
        }
        if (m_current_health <= 0)
        {
            m_current_health = 0;
            killPlayer();
            std::cout << "Player died.\n";
        }
    }
}

void Eldersbane::PlayerHealth::healDamage(int t_amount)
{
    m_current_health = std::min(t_amount + m_current_health, m_max_health);

    setUIToHealth();
}

void Eldersbane::PlayerHealth::setUIToHealth()
{
    for (int i = 0; i < m_full_containers.size(); ++i)
    {
        if (i < m_current_health)
        {
            m_full_containers[i]->setAlpha(1.0);
            m_empty_containers[i]->setAlpha(0.0);
        }
        else
        {
            m_full_containers[i]->setAlpha(0.0);
            m_empty_containers[i]->setAlpha(1.0);
        }
    }
}

void Eldersbane::PlayerHealth::killPlayer()
{
    m_current_health = m_max_health;

    Flamingo::FlamingoCore::getSceneManager()->startScene(m_die_scene);
}
