#include "PlayerHealth.h"
#include "Render/EnemyAI.h" // TO DO -> cambiar al script definitivo del enemigo
#include "ECS/Components.h"

Eldersbane::PlayerHealth::PlayerHealth()
{
}

Eldersbane::PlayerHealth::~PlayerHealth()
{
}

void Eldersbane::PlayerHealth::initValues()
{
}

void Eldersbane::PlayerHealth::update(float t_deltaTime)
{
}

void Eldersbane::PlayerHealth::onCollisionEnter(Flamingo::GameObject* t_other)
{
	auto enemy_cmp = Flamingo::getComponent<Flamingo::EnemyAI>(t_other);

	if (enemy_cmp != nullptr) {
		// Choco con un enemigo --> recibo daño
		takeDamage(1); // To do : ponerle una cantidad de daño al enemy
	}
}

void Eldersbane::PlayerHealth::takeDamage(int t_amount) 
{
	// To Do : ajuste de vida en la UI
	if (current_health > max_health) {
		current_health -= t_amount;
		if (current_health <= 0) {
			current_health = 0;
			killPlayer();
		}
	}
}

void Eldersbane::PlayerHealth::killPlayer()
{
	// To do : what to do when i die
	current_health = max_health;
}

void Eldersbane::PlayerHealth::onCollisionStay(Flamingo::GameObject* t_other)
{
}

void Eldersbane::PlayerHealth::onCollisionExit(Flamingo::GameObject* t_other)
{
}

void Eldersbane::PlayerHealth::initComponent()
{
}
