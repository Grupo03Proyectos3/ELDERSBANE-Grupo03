#include "Scripting/BehaviourScript.h"
#include <Render/Camera.h>

namespace Eldersbane
{
    /**
     * @brief Clase que crea un punto en la pantalla que sirve como cursor en medio de la pantalla a la vez que sirve para cálculos de cámaras.
     */

    class TargetCamera : public Flamingo::BehaviourScript
    {
      public:
        TargetCamera();
        ~TargetCamera();
        Flamingo::BehaviourScript* clone() override;
        void start() override;
        void update(float t_deltaTime) override;
        /**
         * @brief Sigue al jugador
         */
        void followPlayer();

      private:
        float rotSpeed;
        float percentRotate = 0;

        Flamingo::Transform* m_transform;
        Flamingo::Transform* m_followTarget;

        Flamingo::Camera* m_camera;

        Flamingo::SVector3 m_offset;
    };
} // namespace Eldersbane