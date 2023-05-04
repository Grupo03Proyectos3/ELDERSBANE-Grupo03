#pragma once
#ifndef __GO_TO_MENU_H__
#define __GO_TO_MENU_H__
#include "Scripting/BehaviourScript.h"
namespace Eldersbane
{
    class GoToMenu : public Flamingo::BehaviourScript
    {
      public:
        GoToMenu(){};
        virtual ~GoToMenu(){};
        Flamingo::BehaviourScript* clone() override;

        void start() override;

        void clickFuntion() override;

      private:
        std::string m_scene;
    };
} // namespace Eldersbane
#endif