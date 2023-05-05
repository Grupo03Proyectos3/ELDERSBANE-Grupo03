#pragma once
#ifndef __GO_TO_LOSE_H__
#define __GO_TO_LOSE_H__
#include "Scripting/BehaviourScript.h"
namespace Eldersbane
{
    /// <summary>
    /// Al pulsar en el botón asignado, esta clase hace que se cargue la escena de Perder.
    /// </summary>
    class GoToLose : public Flamingo::BehaviourScript
    {
      public:
        GoToLose(){};
        virtual ~GoToLose(){};
        Flamingo::BehaviourScript* clone() override;

        void start() override;

        void clickFuntion() override;

      private:
        std::string m_scene;
    };
} // namespace Eldersbane
#endif