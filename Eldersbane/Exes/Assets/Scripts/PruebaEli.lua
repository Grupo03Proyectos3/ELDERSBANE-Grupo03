entities = {"Mapa", "CamaraPpal","Luz", "Player", "TargetCamera", "GranArbol", "Enemy", "MakoyAzul01", "HeartContainer"}

Mapa = {
    Name={
        t_name="mapa"
    },
    Transform = {
        positionX = "0.0",
        positionY = "0.0",
        positionZ = "0.0",
        scaleX = "1.0",
        scaleY = "1.0",
        scaleZ = "1.0",
        rotationX = "0.0",
        rotationY = "0.0",
        rotationZ = "0.0",
        rotationW = "1.0"
    },
    RigidBody = {
        t_mass = "20.0",
        t_trigger = "0",
        t_static = "1"
    },
    MeshRenderer = {
        t_model_name = "Escenario.mesh",
        t_entity_name= "mapa",
        t_node_x="1.0",
        t_node_y="1.0",
        t_node_z="1.0",
        t_mat_name= ""
    }
}
CamaraPpal={
    Name={
        t_name="myCamera"
    }, --Para una vista cenital la posicion sera (0 48000 0)
    Transform = {
        positionX = "0.0",
        positionY = "48000.0",
        positionZ = "0.0",
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
       positionY="600.0",
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
        "PlayerHealth",
        "PickUp",
    },
}
TargetCamera = {
    Name={
        t_name ="targetcamera"
    },
    Transform = {
        positionX = "500.0",
        positionY = "350.0",
        positionZ = "200.0",
        scaleX = "0.1",
        scaleY = "0.1",
        scaleZ = "0.1",
        rotationX = "0.0",
        rotationY = "0.0",
        rotationZ = "0.0",
        rotationW = "1.0"
    },
    Scripts={
        "TargetCamera",
    },
    MeshRenderer = {
       t_model_name = "cube.mesh",
       t_entity_name= "targetcamera",
       t_node_x=" 0.0",
       t_node_y="0.0",
       t_node_z="0.0",
       t_mat_name= ""
    },
}
GranArbol={
    Name={
        t_name="granarbol"
    },
   Transform = {
       positionX = "300.0",
       positionY="2000.0",
       positionZ="-28000.0",
       scaleX="1.0",
       scaleY="1.0",
       scaleZ="1.0",
       rotationX="-1.0",
       rotationY="0.0",
       rotationZ="0.0",
       rotationW="1.0"
   },
   RigidBody = {
       t_mass = "20.0",
       t_trigger = "0",
       t_static = "1"
   },
   MeshRenderer = {
       t_model_name = "Arbol10.mesh",
       t_entity_name= "granarbol",
       t_node_x="25.0",
       t_node_y="25.0",
       t_node_z="25.0",
       t_mat_name= ""
   },
}
Enemy = {
    Name={
        t_name="enemy"
    },
   Transform = {
       positionX= "600.0",
       positionY="360.0",
       positionZ="-600.0",
       scaleX="150.0",
       scaleY="150",
       scaleZ="150.0",
       rotationX="0.0",
       rotationY="0.0",
       rotationZ="0.0",
       rotationW="1.0"
   },
   RigidBody = {
       t_mass = "20.0",
       t_trigger = "0",
       t_static = "1"
   },
   MeshRenderer = {
       t_model_name = "slime06.mesh",
       t_entity_name= "enemy",
       t_node_x=" 0.0",
       t_node_y="0.0",
       t_node_z="0.0",
       t_mat_name= ""
    },
    Scripts={
        "Enemy"
    }
}
MakoyAzul01 = {
    Name={
        t_name="ma1"
    },
    Transform = {
        positionX = "300.0",
        positionY = "300.0",
        positionZ = "-400.0",
        scaleX = "0.8",
        scaleY = "0.8",
        scaleZ = "0.8",
        rotationX = "-1.0",
        rotationY = "0.0",
        rotationZ = "0.0",
        rotationW = "1.0"
    },
    RigidBody = {
        t_mass = "20.0",
        t_trigger = "0",
        t_static = "1"
    },
    MeshRenderer = {
        t_model_name = "makoyazul.mesh",
        t_entity_name= "ma1",
        t_node_x="0",
        t_node_y="0",
        t_node_z="0",
        t_mat_name= ""
    }
--    Animator={
--        t_name="dragon"
--    }
}
HeartContainer = {
    Name={
        t_name="heartContainerX"
    },
   Transform = {
        positionX = "0.0",
        positionY = "0.0",
        positionZ = "0.0",
        scaleX = "50.0",
        scaleY = "50.0",
        scaleZ = "1.0",
        rotationX = "0.0",
        rotationY = "0.0",
        rotationZ = "0.0",
        rotationW = "0.0"
   },
   UIElement = {
        t_type = "FlamingoDefaultUI/StaticImage",
        t_name = "heartContainer",
        t_text = "",
        t_image = "FullHeart.png"
    }
}