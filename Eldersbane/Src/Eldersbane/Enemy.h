#pragma once
#ifndef __ENEMY_H__
#define __ENEMY_H__
#include "BlackEnemy.h"
#include "BlueEnemy.h"
#include "PurpleEnemy.h"
#include "RedEnemy.h"
#include "Scripting/BehaviourScript.h"
#include <FlamingoBase/Transform.h>

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
        /**
         * @brief Se llama para comprobar la distancia del enemigo
         * respecto al jugador
         * @param[in] t_player_pos SVector3 posición del jugador

         * @return
         */
        void checkDistance(Flamingo::SVector3 t_player_pos);
        /**
         * @brief Se llama para que el enemigo persiga al jugador
         *
         * @param[in] t_player_pos SVector3 posición del jugador

         * @return
         */
        void followPlayer(Flamingo::SVector3 t_player_pos);
        /**
         * @brief Se llama para obtener el daño que hace el enemigo
         * @return
         */
        int getDamage();
        /**
         * @brief Se llama para que el enemigo reciba daño
         * @param[in] t_damage int daño que recibe
         * @return
         */
        void recieveDamage(int t_damage);
        /**
         * @brief Se llama para saber si el enemigo está vivo
         * @return
         */
        bool isAlive();
        /**
         * @brief Se leva a cabo el movimiento del enemigo,
         *que consiste en un merodeo en direcciones aleatorias
         *
         * @param[in] t_delta_time float delta time

         * @return
         */
        void enemyMovement(float t_delta_time);
        /**
         * @brief Se llama para que el enemigo haga una animación de muerte
         * @return
         */
        void dyingAnimation();

      protected:
        /**
        * @brief Se llama para que el enemigo rote en función de
        * su dirección
        * @return
        */
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

        float m_reductionPercent;

        // Die
        bool m_dyingAnimation;
        int m_currentDyingSteps;
        int m_totalDyingSteps;

        Eldersbane::BlueEnemy* m_blue_enemy;
        Eldersbane::RedEnemy* m_red_enemy;
        Eldersbane::BlackEnemy* m_black_enemy;
        Eldersbane::PurpleEnemy* m_purple_enemy;
    };
} // namespace Eldersbane
#endif
