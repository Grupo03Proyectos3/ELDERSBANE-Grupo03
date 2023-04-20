#pragma once
#ifndef __ENEMY_H__
#define __ENEMY_H__

#include "GameObject.h"
/**
* Clase que representa los enemigos del juego.
*
*
*/
class Enemy: public ecs::GameObject
{
public:
	enum enemyType
	{
		//Enemigo Makoy Tipo 1
		SMALL,
		//Enemigo Makoy Tipo 2
		MEDIUM,
		//Enemigo Makoy Tipo 3
		BIG,
		//Jefe Makoy
		BOSS
	};
	Enemy(enemyType t_type);
	void initEnemy();
private:
	enemyType m_type;
	//Las siguientes variables son provisionales, habra que usar los componentes correspondientes
	float m_speed;
	float m_health;
	float m_max_health;
	float m_damage;

	float m_size;
	//GameObject gO;
};
#endif
