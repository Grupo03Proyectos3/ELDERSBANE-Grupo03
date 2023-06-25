#include "PlayerHealth.h"
#include "Audio/AudioSource.h"
#include "ECS/ManagerFunctions.h"
#include "ECS/ecs_defs.h"
#include "Enemy.h"
#include "FlamingoBase/SceneManager.h"
#include "FlamingoExport/FlamingoCore.h"
#include "PinkPotion.h"
#include "RedPotion.h"
#include <Audio/AudioSource.h>
#include <ECS/InputHandlerContainer.h>

Eldersbane::PlayerHealth::PlayerHealth()
{
}

Eldersbane::PlayerHealth::~PlayerHealth()
{
    m_full_containers.clear();
    m_empty_containers.clear();
    delete m_invencibility;
    delete m_cover_timer;
}

Flamingo::BehaviourScript* Eldersbane::PlayerHealth::clone()
{
    return new PlayerHealth();
}
bool Eldersbane::PlayerHealth::initValues(std::unordered_map<std::string, std::string> t_args)
{
    auto it_max_health = t_args.find("t_max_health");
    auto it_full_name = t_args.find("t_full_name");
    auto it_full_img = t_args.find("t_full_img");
    auto it_empty_name = t_args.find("t_empty_name");
    auto it_empty_img = t_args.find("t_empty_img");
    auto it_die_scene = t_args.find("t_die_scene");
    auto it_cooldown_cover = t_args.find("t_cooldown_cover");
    auto it_duration_cover = t_args.find("t_duration_cover");
    auto it_duration_blood = t_args.find("t_duration_blood");

    if (it_max_health != t_args.end() && it_full_name != t_args.end() && it_full_img != t_args.end() &&
        it_empty_name != t_args.end() && it_empty_img != t_args.end() && it_die_scene != t_args.end() &&
        it_cooldown_cover != t_args.end() && it_duration_cover != t_args.end() && it_duration_blood != t_args.end())
    {
        m_max_health = std::stof(it_max_health->second);
        m_full_name = it_full_name->second;
        m_full_img = it_full_img->second;
        m_empty_name = it_empty_name->second;
        m_empty_img = it_empty_img->second;
        m_die_scene = it_die_scene->second;
        unsigned int b = std::stoi(it_cooldown_cover->second);
        m_cooldown_cover = b;
        b = std::stoi(it_duration_cover->second);
        m_duration_cover = b;
        b = std::stoi(it_duration_blood->second);
        m_duration_blood = b;

        return true;
    }

    return false;
}
void Eldersbane::PlayerHealth::start()
{
    m_current_health = m_max_health;
    m_player_get_damage = Flamingo::getComponent<Flamingo::AudioSource>(Flamingo::FlamingoCore::getSceneManager()->getSceneActive()->getObject("AudioPlayerGetDamage"));
    m_cover_hit_sound = Flamingo::getComponent<Flamingo::AudioSource>(Flamingo::FlamingoCore::getSceneManager()->getSceneActive()->getObject("AudioCover"));

    m_shield = Flamingo::getComponent<Shield>(Flamingo::FlamingoCore::getSceneManager()->getSceneActive()->getObject("Escudo"));
    m_shield_transform = Flamingo::getComponent<Flamingo::Transform>(m_shield->gameObject());
    m_transform = Flamingo::getComponent<Flamingo::Transform>(gameObject());

    m_shield->gameObject()->setActive(false);
    Flamingo::getComponent<Flamingo::MeshRenderer>(m_shield->gameObject())->onDisable();
    m_invencibility = new Flamingo::Timer();
    m_cover_timer = new Flamingo::Timer();
    m_blood_timer = new Flamingo::Timer();

    for (int i = 0; i < m_max_health; ++i)
    {
        auto heart_container = Flamingo::createGameObject(m_full_name + std::to_string(i), {Flamingo::GROUP_UI});

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
        auto heart_container = Flamingo::createGameObject(m_empty_name + std::to_string(i), {Flamingo::GROUP_UI});

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
    m_parts = Flamingo::getComponent<Flamingo::ParticleSystem>(this->gameObject());
    m_bleeding = false;
}

void Eldersbane::PlayerHealth::update(float t_deltaTime)
{
    Flamingo::SVector3 offset = {150, -20, 60};
    m_shield_transform->setPosition(m_transform->getPosition() + offset);

    auto trpTarget = m_transform;
    auto mtrp = m_shield_transform;

    Flamingo::SVector3 newOffset = trpTarget->getRotation().Rotate(offset);
    mtrp->setPosition(trpTarget->getPosition() - newOffset);
    mtrp->setRotation(trpTarget->getRotation(), Flamingo::STransformSpace::WORLD);

    if (!m_shield->gameObject()->getActive() && Flamingo::Input().getMouseButtonState(Flamingo::RIGHT) && m_shield->getAvailability())
    {
        if (m_cover_timer->getElapsedTime() >= m_cooldown_cover)
        {
            m_shield->gameObject()->setActive(true);
            Flamingo::getComponent<Flamingo::MeshRenderer>(m_shield->gameObject())->onEnable();
            m_invencibility->reset();
        }
    }
    else if (m_shield->gameObject()->getActive())
    {
        if (m_invencibility->getElapsedTime() >= m_duration_cover || !m_shield->getAvailability())
        {
            m_shield->resetHits();
            m_shield->gameObject()->setActive(false);
            Flamingo::getComponent<Flamingo::MeshRenderer>(m_shield->gameObject())->onDisable();
            m_cover_timer->reset();
        }
    }
    if (m_bleeding)
    {
        if (m_blood_timer->getElapsedTime() >= m_duration_blood)
        {
            m_bleeding = false;
            m_blood_timer->reset();
            m_parts->emit(false); // Detener la emisión del sistema de partículas
        }
    }
}

void Eldersbane::PlayerHealth::onCollisionEnter(Flamingo::GameObject* t_other)
{
    if (Flamingo::hasComponent<Eldersbane::Enemy>(t_other) && !Flamingo::hasComponent<Eldersbane::TreeEnemy>(t_other))
    {
        // si no tiene shield
        if (!m_shield->gameObject()->getActive())
            takeDamage(Flamingo::getComponent<Eldersbane::Enemy>(t_other)->getDamage());
        else
        {
            m_cover_hit_sound->playAudio();
            m_shield->takeHit();
        }
    }
    if (Flamingo::hasComponent<Eldersbane::Apple>(t_other))
    {
        if (!m_shield->gameObject()->getActive())
            takeDamage(Flamingo::getComponent<Eldersbane::Apple>(t_other)->getDamage());
        else
        {
            m_cover_hit_sound->playAudio();
            m_shield->takeHit();
        }
    }

    if (Flamingo::hasComponent<Eldersbane::RedPotion>(t_other) && t_other != nullptr)
    {
        auto redPotion = Flamingo::getComponent<Eldersbane::RedPotion>(t_other);
        healDamage(redPotion->getExtraLives());
        t_other->setAlive(false);
    }
    if (Flamingo::hasComponent<Eldersbane::PinkPotion>(t_other))
    {
        auto pinkPotion = Flamingo::getComponent<Eldersbane::PinkPotion>(t_other);
        healDamage(pinkPotion->getExtraLives());
        t_other->setAlive(false);
    }
}

void Eldersbane::PlayerHealth::takeDamage(int t_amount)
{
    if (m_current_health > 0)
    {
        m_bleeding = true;
        m_parts->emit(true);
        m_blood_timer->reset();
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

    auto sM = Flamingo::FlamingoCore::getSceneManager();
    sM->reloadScenePetition();
    sM->startScene("LoseGame");
}
