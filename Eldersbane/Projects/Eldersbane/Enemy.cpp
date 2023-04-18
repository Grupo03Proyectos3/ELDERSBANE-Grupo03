#include "Enemy.h"

Enemy::Enemy(enemyType t_type):
	m_type(t_type)
{
}

void Enemy::initEnemy()
{
	switch (m_type)
	{
	case Enemy::SMALL:
		m_speed = 5.0f;
		m_size = 1.0f;
		m_max_health = 5.0f;
		m_damage = 0.25f;
		break;
	case Enemy::MEDIUM:
		m_speed = 4.0f;
		m_size = 1.0f;
		m_max_health = 12.0f;
		m_damage = 1.0f;
		break;
	case Enemy::BIG:
		m_speed = 2.0f;
		m_size = 2.0f;
		m_max_health = 20.0f;
		m_damage = 1.5f;
		break;
	case Enemy::BOSS:
		m_speed = 1.0f;
		m_size = 3.0f;
		m_max_health = 35.0f;
		m_damage = 4.0f;
		break;
	default:
		break;
	}
}
