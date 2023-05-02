#include "PlayerHealth.h"
#include "Render/EnemyAI.h" // TO DO -> cambiar al script definitivo del enemigo
#include "ECS/ManagerFunctions.h"
#include "RedPotion.h"
#include "PinkPotion.h"

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

void Eldersbane::PlayerHealth::update(float t_deltaTime)
{
}

void Eldersbane::PlayerHealth::onCollisionEnter(Flamingo::GameObject* t_other)
{
	//auto enemy_cmp = Flamingo::getComponent<Flamingo::EnemyAI>(t_other);

	//if (enemy_cmp != nullptr) {
	//	// Choco con un enemigo --> recibo da�o
	//	takeDamage(1); // To do : ponerle una cantidad de da�o al enemy
	//}
    auto redPotion = Flamingo::getComponent<Eldersbane::RedPotion>(t_other);
    if (redPotion!=nullptr)
    {
        std::cout << "Coge la pocion ROJA"
                  << "\n";
        current_health += redPotion->getExtraLives();
        if (current_health > max_health)
            current_health = max_health;
    }
    auto pinkPotion = Flamingo::getComponent<Eldersbane::PinkPotion>(t_other);
    if (pinkPotion != nullptr)
    {
        std::cout << "Coge la pocion ROSA"
                  << "\n";
        current_health += pinkPotion->getExtraLives();
        if (current_health > max_health)
            current_health = max_health;
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
