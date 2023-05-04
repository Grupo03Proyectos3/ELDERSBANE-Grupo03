#include "PlayerHealth.h"
#include "ECS/ManagerFunctions.h"
#include "ECS/ecs_defs.h"
#include "FlamingoExport/FlamingoCore.h"
#include "Enemy.h"
#include "PinkPotion.h"
#include "RedPotion.h"
#include "Render/EnemyAI.h" // TO DO -> cambiar al script definitivo del enemigo
#include "FlamingoBase/SceneManager.h"
Eldersbane::PlayerHealth::PlayerHealth()
{
}

Eldersbane::PlayerHealth::~PlayerHealth()
{
    m_heart_containers.clear();
}

Flamingo::BehaviourScript* Eldersbane::PlayerHealth::clone()
{
    return new PlayerHealth();
}

void Eldersbane::PlayerHealth::start()
{
    m_max_health = 5;
    m_current_health = 3;

    m_img_name = "heartContainer";
    m_full_img = "FullHeart.png";
    m_empty_img = "EmptyHeart.png";

    for (int i = 0; i < m_max_health; ++i)
    {
        auto heart_container = Flamingo::createGameObject({Flamingo::GROUP_UI});

            auto trans = Flamingo::getComponent<Flamingo::Transform>(heart_container);
        trans->setScale({50.0, 50.0, 1.0});
        trans->setPosition({0.0 + 10 * i, 0.0, 0.0});

        heart_container->setName("heartContainer" + std::to_string(i));
        auto cmp = Flamingo::addComponent<Flamingo::UIElement>(heart_container);
        m_heart_containers.push_back(cmp);
        cmp->initValues("FlamingoDefaultUI/StaticImage", "heartContainer" + std::to_string(i), "", "FullHeart.png");
        cmp->initComponent();

    
    }
    
      auto scene_mngr = Flamingo::FlamingoCore::instance()->getSceneManager();
    auto x = scene_mngr->getSceneActive();

}

void Eldersbane::PlayerHealth::update(float t_deltaTime)
{
}

void Eldersbane::PlayerHealth::onCollisionEnter(Flamingo::GameObject* t_other)
{
    if (Flamingo::hasComponent<Eldersbane::Enemy>(t_other))
    {
        // Choco con un enemigo --> recibo da�o
        std::cout << "Badnis PIERDE VIDA " << m_current_health - 1 << "\n";
        takeDamage(1); // To do : ponerle una cantidad de da�o al enemy
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
    if (m_current_health > 0)
    {
        m_current_health = std::max(m_current_health - t_amount, 0);
        setUIToHealth();

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
    for (int i = 0; i < m_heart_containers.size(); ++i)
    {
        if (i < m_current_health)
        {
            m_heart_containers[i]->setImage("Image", m_img_name + std::to_string(i), m_full_img);
        }
        else
        {
            m_heart_containers[i]->setImage("Image", m_img_name + std::to_string(i), m_empty_img);
        }
    }
}

void Eldersbane::PlayerHealth::killPlayer()
{
    // To do : what to do when i die
    m_current_health = m_max_health;
}
