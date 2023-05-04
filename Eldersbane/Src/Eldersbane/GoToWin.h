#pragma once
#ifndef __GO_TO_WIN_H__
#define __GO_TO_WIN_H__
#include "Scripting/BehaviourScript.h"
namespace Eldersbane
{
    class GoToWin : public Flamingo::BehaviourScript
    {
      public:
        GoToWin(){};
        virtual ~GoToWin(){};
        Flamingo::BehaviourScript* clone() override;

        void start() override;

        void clickFuntion() override;

      private:
        std::string m_scene;
    };
} // namespace Eldersbane
#endif