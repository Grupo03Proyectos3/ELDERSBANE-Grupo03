#pragma once
#ifndef __APPLE_H__
#define __APPLE_H__
#include "Scripting/BehaviourScript.h"
#include <FlamingoBase/Transform.h>
#include <FlamingoUtils/Timer.h>
#include <Physics/RigidBody.h>
namespace Eldersbane
{
    /**
     * @brief Clase que representa la manzana que el árbol mágico usa como munición
     */

    class Apple : public Flamingo::BehaviourScript
    {
      public:
        Apple();
        virtual ~Apple();
        Flamingo::BehaviourScript* clone() override;
        bool initValues(std::unordered_map<std::string, std::string> = {}) override;
        void onCollisionEnter(Flamingo::GameObject* t_other) override;
        void start() override;
        void update(float t_delta_time) override;
        /**
         * @brief Devuelve el valor del daño
         */
        int getDamage();
        /**
         * @brief Devuelve el valor del la duración del ataque de la manzana
         */
        int getDurability();
        /**
         * @brief La manzana se posiciona en el árbol y se dirige hacia la posición del jugador
         * @param[in] t_dir Dirección hacia jugador
         * @param[in] t_pos Posición del árbol
         */
        void attackPlayer(Flamingo::SVector3 t_dir, Flamingo::SVector3 t_pos);
        /**
         * @brief Desactiva la visibilidad de la manzana
         */
        void deactivate();

      private:
        int m_apple_durability; /**< Duración de la manzana */
        int m_damage;           /**< Cantidad de daño de la manzaña */
        float m_velocity;       /**< Velocidad con la que se mueve la manzana */

        bool m_follow; /**< Indica si la manzana está en movimiento */

        Flamingo::SVector3 m_direction; /**< Direccion en la que se mueve */

        Flamingo::Transform* m_transform;

        Flamingo::Timer* m_timer; /**< Temporizador para la duración de la manzana. */
    };
} // namespace Eldersbane
#endif