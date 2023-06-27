#pragma once
#ifndef __ENEMY_H__
#define __ENEMY_H__
#include "Apple.h"
#include "BlackEnemy.h"
#include "BlueEnemy.h"
#include "FlamingoUtils/Timer.h"
#include "PurpleEnemy.h"
#include "RedEnemy.h"
#include "Scripting/BehaviourScript.h"
#include "TreeEnemy.h"
#include <FlamingoBase/Transform.h>

namespace Eldersbane
{

    /**
     * @brief Clase enemigo que implementa la l�gica necesaria para tener enemigos en el mapa.
     * Usa los m�todos de colisiones de entrada y salida as� como otros que permiten desarrollar su
     * funci�n contra el jugador.
     */

    class Enemy : public Flamingo::BehaviourScript
    {
      public:
        Enemy();
        virtual ~Enemy();
        Flamingo::BehaviourScript* clone() override;
        bool initValues(std::unordered_map<std::string, std::string> = {}) override;
        void start() override;
        void update(float t_delta_time) override;
        void onCollisionEnter(Flamingo::GameObject* t_other) override;
        void onCollisionExit(Flamingo::GameObject* t_other) override;
        /**
         * @brief Se llama para comprobar la distancia del enemigo respecto al jugador
         * @param[in] t_player_pos SVector3 posici�n del jugador
         */
        void checkDistance(Flamingo::SVector3 t_player_pos);
        /**
         * @brief Se llama para que el enemigo persiga al jugador
         * @param[in] t_player_pos SVector3 posici�n del jugador
         */
        void followPlayer(Flamingo::SVector3 t_player_pos);
        /*
         * @brief Se llama para que el arbol dispare al jugador
         * @param[in] t_player_pos SVector3 posici�n del jugador
         */
        void treeAttackPlayer(Flamingo::SVector3 t_player_pos);
        /**
         * @brief Se llama para obtener el da�o que hace el enemigo
         */
        int getDamage();
        /**
         * @brief Se llama para que el enemigo reciba da�o
         * @param[in] t_damage int da�o que recibe
         */
        void recieveDamage(int t_damage);
        /**
         * @brief Se llama para saber si el enemigo est� vivo
         */
        bool isAlive();
        /**
         * @brief Se leva a cabo el movimiento del enemigo,
         * que consiste en un merodeo en direcciones aleatorias
         * @param[in] t_delta_time float delta time
         */
        void enemyMovement(float t_delta_time);
        /**
         * @brief Se llama para que el enemigo haga una animaci�n de muerte
         */
        void dyingAnimation();

      protected:
        /**
         * @brief Se llama para que el enemigo rote en funci�n de su direcci�n
         */
        void lookAtWhereIAmMoving();

        float m_speed; /**< Velocidad */
        float m_reductionPercent;
        float m_max_distance; /**< Distancia m�xima a la que el enemigo detecta al jugador */

        int m_time_last_dir = 0;
        int m_time_last_move = 0;
        int m_current_dyingSteps;
        int m_total_dyingSteps;
        int m_lives;                /**< Vida del enemigo */
        int m_damage;               /**< Da�o del enemigo */
        int m_tree_attack_cooldown; /**< Cooldown para el ataque */

        bool m_dying_animation; /**< Indica si se hace la animaci�n */
        bool m_wandering;       /**< Indica si est� merodeando */
        bool m_attacking;       /**< Indica si est� atacando*/
        bool m_colliding;       /**< Indica si esta colisionando */

        Flamingo::Transform* m_tr;
        Flamingo::Transform* m_tr_player;

        Flamingo::SVector3 m_velocity;  /**< Velocidad */
        Flamingo::SVector3 m_direction; /**< Direcci�n del jugador */

        Flamingo::Timer* m_tree_attack_timer; /**< Temporizador del ataque */

        Eldersbane::BlueEnemy* m_blue_enemy;
        Eldersbane::RedEnemy* m_red_enemy;
        Eldersbane::BlackEnemy* m_black_enemy;
        Eldersbane::PurpleEnemy* m_purple_enemy;
        Eldersbane::TreeEnemy* m_tree_enemy;
    };
} // namespace Eldersbane
#endif
