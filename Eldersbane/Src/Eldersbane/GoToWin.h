#pragma once
#ifndef __GO_TO_WIN_H__
#define __GO_TO_WIN_H__
#include "Scripting/BehaviourScript.h"
namespace Eldersbane
{
   
     /**
     * @brief Al colisionar con este objeto, se carga la escena de Victoria.
     */
    class GoToWin : public Flamingo::BehaviourScript
    {
      public:
        GoToWin(){};
        virtual ~GoToWin(){};
        Flamingo::BehaviourScript* clone() override;

       bool initValues(std::unordered_map<std::string, std::string> = {}) override;

       

        void onCollisionEnter(Flamingo::GameObject* t_other) override;

      private:
        std::string m_scene;
        bool m_done = false;
    };
} // namespace Eldersbane
#endif