entities = {"CamaraPpal","Luz", "Player"}


CamaraPpal={
    Name={
        t_name="myCamera"
    }, --Para una vista cenital la posicion sera (0 48000 0)
    Transform = {
        positionX = "500.0",
        positionY = "500.0",
        positionZ = "500.0",
        scaleX = "1.0",
        scaleY = "1.0",
        scaleZ = "1.0",
        rotationX = "0.0",
        rotationY = "0.0",
        rotationZ = "0.0",
        rotationW = "1.0"
    },
    Camera={
        t_name="myCamera",
        t_entity_name="myCamera2"
    }
}
Luz={
    Name={
        t_name="mylight"
    },
    Transform = {
        positionX = "500.0",
        positionY = "350.0",
        positionZ = "200.0",
        scaleX = "1.0",
        scaleY = "1.0",
        scaleZ = "1.0",
        rotationX = "0.0",
        rotationY = "0.0",
        rotationZ = "0.0",
        rotationW = "1.0"
    },
    Light={
        t_name="myLight2"
    }
}
Player = {
    Name={
        t_name="player"
    },
   Transform = {
       positionX = "450.0",
       positionY="400.0",
       positionZ="-400.0",
       scaleX="25.0",
       scaleY="25.0",
       scaleZ="25.0",
       rotationX="0.0",
       rotationY="0.0",
       rotationZ="0.0",
       rotationW="1.0"
   },
   RigidBody = {
       t_mass = "20.0",
       t_trigger = "0",
       t_static = "0"
   },
   MeshRenderer = {
       t_model_name = "Sinbad.mesh",
       t_entity_name= "player",
       t_node_x="25.0",
       t_node_y="25.0",
       t_node_z="25.0",
       t_mat_name= ""
   },
   Scripts={
        "PlayerMovement",
        "PickUp",
        "PlayerHealth",
    },
}