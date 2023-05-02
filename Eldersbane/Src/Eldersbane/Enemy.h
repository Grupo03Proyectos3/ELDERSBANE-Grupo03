#pragma once
#ifndef __ENEMY_H__
#define __ENEMY_H__
#include "Lua/BehaviourScript.h"
#include <FlamingoBase/Transform.h>
namespace Eldersbane
{
    class Enemy : public Flamingo::BehaviourScript
    {
        enum enemyType
        {
            // Enemigo Makoy Tipo 1
            SMALL,
            // Enemigo Makoy Tipo 2
            MEDIUM,
            // Enemigo Makoy Tipo 3
            BIG,
            // Jefe Makoy
            BOSS
        };
        Enemy();
        virtual ~Enemy();
        Flamingo::BehaviourScript* clone() override;
        void start() override;
        void update(float t_delta_time) override;
        void onCollisionEnter(Flamingo::GameObject* t_other) override;
        void onCollisionExit(Flamingo::GameObject* t_other) override;
        void checkDistance(Flamingo::SVector3 t_player_pos);
        void followPlayer(Flamingo::SVector3 t_player_pos);
        void attack();
        void getDamage(int t_damage);
        bool isAlive(); 
        void enemyMovement(float t_delta_time);

      private:
        Flamingo::Transform* m_tr;
        Flamingo::Transform* m_tr_player;
        float m_max_distance;
        int m_time_last_dir = 0;
        int m_time_last_move = 0;
        Flamingo::SVector3 m_velocity;
        Flamingo::SVector3 direction;
        bool m_wandering;
        bool m_attacking;
        bool m_colliding;
        int m_lives;

       
    };
} // namespace Eldersbane
#endif
