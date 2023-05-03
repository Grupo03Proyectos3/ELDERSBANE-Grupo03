#include "Scripting/BehaviourScript.h"
#include <Render/Camera.h>

namespace Eldersbane
{
    class TargetCamera : public Flamingo::BehaviourScript
    {
      public:
        TargetCamera();
        ~TargetCamera();

        Flamingo::BehaviourScript* clone() override;

        void start() override;

        void update(float t_deltaTime) override;

        void followPlayer();

      private:
        Flamingo::Camera* m_camera;
        Flamingo::Transform* m_transform;
        float percentRotate = 0;

        Flamingo::Transform* m_followTarget;
        Flamingo::SVector3 m_offset;
        float rotSpeed;
    };
}