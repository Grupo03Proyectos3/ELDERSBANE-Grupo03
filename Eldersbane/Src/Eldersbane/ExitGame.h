#pragma once
#ifndef __EXIT_GAME_H__
#define __EXIT_GAME_H__
#include "Scripting/BehaviourScript.h"
namespace Eldersbane
{
     /**
     * @brief Al pulsar en el botón asignado, esta clase hace que salgamos del juego.
     */
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