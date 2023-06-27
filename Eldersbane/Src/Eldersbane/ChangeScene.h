#pragma once
#ifndef __CHANGE_SCENE_H__
#define __CHANGE_SCENE_H__
#include "Scripting/BehaviourScript.h"
namespace Eldersbane
{

    /**
     * @brief Funcionalidad de cambiar de escena
     */
    class ChangeScene : public Flamingo::BehaviourScript
    {
      public:
        ChangeScene();
        ~ChangeScene();

        BehaviourScript* clone() override;
        bool initValues(std::unordered_map<std::string, std::string> = {}) override;
        void start() override;

        void clickFuntion() override;

        void setFirstScene();

      private:
        std::string m_scene;
    };
} // namespace Eldersbane
#endif
