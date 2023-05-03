#include "PlayerHealth.h"
#include "Render/EnemyAI.h" // TO DO -> cambiar al script definitivo del enemigo
#include "ECS/ManagerFunctions.h"
#include "RedPotion.h"
#include "PinkPotion.h"
#include "Enemy.h"

Eldersbane::PlayerHealth::PlayerHealth()
{
}

Eldersbane::PlayerHealth::~PlayerHealth()
{
}

Flamingo::BehaviourScript* Eldersbane::PlayerHealth::clone()
{
    return new PlayerHealth();
}

void Eldersbane::PlayerHealth::start()
{
    m_max_health = 5;
    m_current_health = 3;
}

void Eldersbane::PlayerHealth::update(float t_deltaTime)
{
}

void Eldersbane::PlayerHealth::onCollisionEnter(Flamingo::GameObject* t_other)
{
	auto enemy_cmp = Flamingo::getComponent<Eldersbane::Enemy>(t_other);

	if (enemy_cmp != nullptr) {
		// Choco con un enemigo --> recibo daño
		takeDamage(1); // To do : ponerle una cantidad de daño al enemy
        std::cout << "Badnis PIERDE VIDA "<<m_current_health
                  << "\n";
	}
    auto redPotion = Flamingo::getComponent<Eldersbane::RedPotion>(t_other);
    if (redPotion!=nullptr)
    {
        std::cout << "Coge la pocion ROJA"
                  << "\n";
        m_current_health += redPotion->getExtraLives();
        if (m_current_health > m_max_health)
            m_current_health = m_max_health;
    }
    auto pinkPotion = Flamingo::getComponent<Eldersbane::PinkPotion>(t_other);
    if (pinkPotion != nullptr)
    {
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
	if (m_current_health > m_max_health) {
		m_current_health -= t_amount;
		if (m_current_health <= 0) {
			m_current_health = 0;
			killPlayer();
		}
	}
}

void Eldersbane::PlayerHealth::killPlayer()
{
	// To do : what to do when i die
	m_current_health = m_max_health;
}
