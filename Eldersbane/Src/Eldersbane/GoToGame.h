#pragma once
#ifndef __GO_TO_GAME_H__
#define __GO_TO_GAME_H__
#include "Scripting/BehaviourScript.h"
namespace Eldersbane
{
    /// <summary>
    /// Al pulsar en el bot�n asignado, esta clase hace que se cargue la escena de Mapa.
    /// </summary>
    class GoToGame : public Flamingo::BehaviourScript
    {
      public:
        GoToGame(){};
        virtual ~GoToGame(){};
        Flamingo::BehaviourScript* clone() override;

        void start() override;

        void clickFuntion() override;

      private:
        std::string m_scene;
    };
} // namespace Eldersbane
#endif