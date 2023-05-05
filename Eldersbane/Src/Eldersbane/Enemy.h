#pragma once
#ifndef __ENEMY_H__
#define __ENEMY_H__
#include "Scripting/BehaviourScript.h"
#include <FlamingoBase/Transform.h>
#include "BlueEnemy.h"
#include "RedEnemy.h"
#include "PurpleEnemy.h"
#include "BlackEnemy.h"

namespace Eldersbane
{
    class Enemy : public Flamingo::BehaviourScript
    {
      public:

        Enemy();
        virtual ~Enemy();
        Flamingo::BehaviourScript* clone() override;
        void start() override;
        void update(float t_delta_time) override;
        void onCollisionEnter(Flamingo::GameObject* t_other) override;
        void onCollisionExit(Flamingo::GameObject* t_other) override;
        void checkDistance(Flamingo::SVector3 t_player_pos);
        void followPlayer(Flamingo::SVector3 t_player_pos);
        int getDamage();
        void reciveDamage(int damage);
        bool isAlive(); 
        void enemyMovement(float t_delta_time);
       
      protected:
        void lookAtWhereIAmMoving();

        Flamingo::Transform* m_tr;
        Flamingo::Transform* m_tr_player;
        float m_max_distance;
        int m_time_last_dir = 0;
        int m_time_last_move = 0;
        Flamingo::SVector3 m_velocity;
        Flamingo::SVector3 m_direction;
        bool m_wandering;
        bool m_attacking;
        bool m_colliding;
        int m_lives;
        int m_damage;
        float m_speed;

        Eldersbane::BlueEnemy* m_blue_enemy;
        Eldersbane::RedEnemy* m_red_enemy;
        Eldersbane::BlackEnemy* m_black_enemy;
        Eldersbane::PurpleEnemy* m_purple_enemy;
    };
} // namespace Eldersbane
#endif
