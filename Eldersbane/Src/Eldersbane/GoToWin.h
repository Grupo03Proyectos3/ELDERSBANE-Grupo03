#pragma once
#ifndef __GO_TO_WIN_H__
#define __GO_TO_WIN_H__
#include "Scripting/BehaviourScript.h"
namespace Eldersbane
{
    /// <summary>
    /// Al colisionar, esta clase hace que se cargue la escena de Victoria.
    /// </summary>
    class GoToWin : public Flamingo::BehaviourScript
    {
      public:
        GoToWin(){};
        virtual ~GoToWin(){};
        Flamingo::BehaviourScript* clone() override;

        void start() override;

        void update(float t_deltaTime) override;

        void onCollisionEnter(Flamingo::GameObject* t_other) override;

      private:
        std::string m_scene;
        bool m_done = false;
    };
} // namespace Eldersbane
#endif