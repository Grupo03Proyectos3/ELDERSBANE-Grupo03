#pragma once
#ifndef __MENU_MUSIC_H__
#define __MENU_MUSIC_H__
#include "Scripting/BehaviourScript.h"
namespace Eldersbane
{
    class MenuMusic : public Flamingo::BehaviourScript
    {
      public:
        MenuMusic();
        ~MenuMusic();

        BehaviourScript* clone() override;

        void start() override;
    };
} // namespace Eldersbane
#endif