#pragma once
#ifndef __EXIT_GAME_H__
#define __EXIT_GAME_H__
#include "Scripting/BehaviourScript.h"
namespace Eldersbane
{
    /// <summary>
    /// Al pulsar en el bot�n asignado, esta clase hace que se salda del juego.
    /// </summary>
    class ExitGame : public Flamingo::BehaviourScript
    {
      public:
        ExitGame();
        ~ExitGame();

        Flamingo::BehaviourScript* clone() override;

        void start() override;

        void clickFuntion() override;

        void exitGame();
    };
} // namespace Eldersbane
#endif