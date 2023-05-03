#pragma once
#ifndef __CHANGE_SCENE_H__
#define __CHANGE_SCENE_H__
#include "Scripting/BehaviourScript.h"
namespace Eldersbane
{
    class ChangeScene : public Flamingo::BehaviourScript
    {
      public:
        ChangeScene();
        ~ChangeScene();

        BehaviourScript* clone() override;

        void start() override;

        void clickFuntion() override;

        void setFirstScene();
    };
} // namespace Eldersbane
#endif
