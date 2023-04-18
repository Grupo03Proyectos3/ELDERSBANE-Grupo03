#pragma once
#ifndef __ENEMY_H__
#define __ENEMY_H__
/**
* Clase que representa los enemigos del juego.
*
*
*/
class Enemy
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
private:
	enemyType m_type;
};
#endif
