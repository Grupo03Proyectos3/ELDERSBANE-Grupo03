#pragma once
#include "Scripting\BehaviourScript.h"
#include <FlamingoBase/Transform.h>
#include <Render/ParticleSystem.h>
#include <Render/Camera.h>
#include <Physics/RigidBody.h>
#include "Sword.h"
#include <Render/Animator.h>
#include <Audio/AudioSource.h>
#include <FlamingoUtils/FlamingoKeys.h>

namespace Eldersbane
{
    /// <summary>
    /// Clase que se encarga del movimiento del jugador y
    /// todo lo relacionado con ello.
    /// </summary>
    class PlayerMovement : public Flamingo::BehaviourScript
    {
      public:
        PlayerMovement();
        ~PlayerMovement();
        BehaviourScript* clone() override;
        bool initValues(std::unordered_map<std::string, std::string> = {}) override;

        void start() override;
        
        void update(float t_deltaTime) override;
        void onCollisionEnter(Flamingo::GameObject* t_other) override;

        float getRotSensitivity();
        Flamingo::SVector3 getOrientation(float rad);
        Flamingo::SVector3 getForward();
        void lookAtMouse(float t_deltaTime);

        // flores enemy
        void changeKeys(bool t_state);
        void timerKeys(float t_delta_time);
        // dash/esquivar
        void performDash();
      private:
        float m_speed;
        float m_sensitivity;
        Flamingo::Transform* m_transform;
        Flamingo::Camera* m_camera;
        Flamingo::Animator* m_animator;
        Eldersbane::Sword* m_sword;
        float m_percent_rotate=0;

        Flamingo::RigidBody* m_rb;
        Flamingo::SVector3 m_forward;
        Flamingo::SVector3 m_right;

        float initialY;

        bool m_control_anim;

        // keys
        Flamingo::FLM_KeyCode m_key_left;
        Flamingo::FLM_KeyCode m_key_right;
        Flamingo::FLM_KeyCode m_key_up;
        Flamingo::FLM_KeyCode m_key_down;
        bool m_keys_changed;
        int m_time_keys;
        // dash
        float m_dash_cooldown = 5000.0f; // Tiempo de enfriamiento del dash en segundos
        float m_dash_timer = 0.0f;       // Temporizador para controlar el enfriamiento del dash
        bool m_is_dashing = false;

        Flamingo::AudioSource* m_dash_sound;

        Flamingo::ParticleSystem* m_parts;
    };
} // namespace Eldersbane
