entities = {"SueloPlano","ButtonGame","Mapa","CamaraPpal","Luz","Luz2","Luz3","Luz4", "SwordCollider","Player", "AudioPlayerGetDamage","TargetCamera","GranArbol","MakoyAzul01","MakoyRojo01","MakoyMorado01","MakoyMorado02","MakoyMorado03",
"MakoyMorado04","MakoyMorado05","MakoyRojo02","MakoyRojo03","MakoyAzul02","MakoyAzul03","MakoyAzul04","MakoyAzul05","MakoyRojo04","MakoyKing","EspadaMetal","EspadaMadera",
"EspadaEspecial","Slime01","Slime02","Slime03","EscudoMadera","PocionRoja","M1","M2","M3","M4","M5","M6","Tronco01","Tronco02","Tronco03","Tronco04","Tronco05","Tronco06",
"Tronco07","M7","M8","M9","M10","M11","M12","M13","M14","M15","M16","M17","M18","M19","M20","M21","M22","A81","A82","A84","A86","A87","A88","A89","A813","A814","A815",
"A816","A817","A818","A819","Slime04","Slime05","Slime06","Slime07","Slime08","A823","A824","A825","A21","A22", "A23", "A28", "A29","A212","A214","A215","A216","A218",
"A219","SlimeKing","Waldo","A220","A221","A223","A224","A225","A229","A230","A232","A233","A235","A236","A238","A239","A240","A242","A243","A244","A245","A246","A248",
"A249","A250","A251","A253", "A255","A256","A258","A264","A266","A267","A268","A273","A275","A280","A281","A283","A284","A287","A288","A290","A291","A292","A293","A294",
"A297","A298","A2100","A2102","A2105","A2107","A2108","A2109","A62","A63","A64","A66","A67","A69","A610","A611","A613","A615","A616","A617","A619","A620","A622","A623",
"A624","A625","A626","A629","A631","A632","A634","A637","A640","A642","A643","A646","A648","A650","A653","A655","A657","A658","A661","A662","A663","A664","A666","A667",
"A668","A669","A670","A671","A673", "A675","A676","A679","A681","A682","A683","A686","A687","A688","A690","A692","A693","A696","A698","A6102","A6103","A6104","A6105",
"A6106","A6107","A6111","A6114","A6115","A6117","A6120","A6121","A6123","A6124","A6125","A51","A52","A53","A54","A55","A56","A57","A58","A59","A510","A511","A512",
"A513","A514","A515","A516"}
SueloPlano = {
    Name={
        t_name="SueloPlano"
    },
    Transform = {
        positionX = "450.0",
        positionY="250.0",
        positionZ="-400.0",
        scaleX="50000.0",
        scaleY="20.0",
        scaleZ="50000.0",
        rotationX="0.0",
        rotationY="0.0",
        rotationZ="0.0",
        rotationW="1.0",
    },
    RigidBody = {
        t_mass = "20.0",
        t_trigger = "0",
        t_static = "1"
    },
--    MeshRenderer = {
--        t_model_name = "Sinbad.mesh",
--        t_entity_name= "sinbad",
--        t_node_x="1.0",
--        t_node_y="1.0",
--        t_node_z="1.0",
--        t_mat_name= ""
--    }
}
ButtonGame = {
    Name={
        t_name="button"
    },
    Transform = {
        positionX = "45.0",
        positionY = "35.0",
        positionZ = "0.0",
        scaleX = "50.0",
        scaleY = "40.0",
        scaleZ = "1.0",
        rotationX = "0.0",
        rotationY = "0.0",
        rotationZ = "0.0",
        rotationW = "0.0"
    },
    UIElement = {
        t_type = "FlamingoDefaultUI/ImageButton",
        t_name = "ButtonGame",
        t_text = "MENU",
        t_image = ""
    },
    Scripts = {
        "ChangeScene"
    }
}
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
    -- RigidBody = {
    --     t_mass = "20.0",
    --     t_trigger = "0",
    --     t_static = "1"
    -- },
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
        t_entity_name="myCamera2",
        t_color_x="0.1",
        t_color_y="0.4",
        t_color_z="0.7"
    }
}
Luz={
    Name={
        t_name="mylight"
    },
    Transform = {
        positionX = "0.0",
        positionY = "10000.0",
        positionZ = "50000.0",
        scaleX = "1.0",
        scaleY = "1.0",
        scaleZ = "1.0",
        rotationX = "0.0",
        rotationY = "0.0",
        rotationZ = "0.0",
        rotationW = "1.0"
    },
    Light={
        t_name="myLight10"
    }
}
Luz2={
    Name={
        t_name="mylight2"
    },
    Transform = {
        positionX = "0.0",
        positionY = "10000.0",
        positionZ = "-50000.0",
        scaleX = "1.0",
        scaleY = "1.0",
        scaleZ = "1.0",
        rotationX = "0.0",
        rotationY = "0.0",
        rotationZ = "0.0",
        rotationW = "1.0"
    },
    Light={
        t_name="myLight12"
    }
}
Luz3={
    Name={
        t_name="mylight3"
    },
    Transform = {
        positionX = "50000.0",
        positionY = "10000.0",
        positionZ = "500.0",
        scaleX = "1.0",
        scaleY = "1.0",
        scaleZ = "1.0",
        rotationX = "0.0",
        rotationY = "0.0",
        rotationZ = "0.0",
        rotationW = "1.0"
    },
    Light={
        t_name="myLight13"
    }
}
Luz4={
    Name={
        t_name="mylight4"
    },
    Transform = {
        positionX = "-50000.0",
        positionY = "10000.0",
        positionZ = "500.0",
        scaleX = "1.0",
        scaleY = "1.0",
        scaleZ = "1.0",
        rotationX = "0.0",
        rotationY = "0.0",
        rotationZ = "0.0",
        rotationW = "1.0"
    },
    Light={
        t_name="myLight14"
    }
}
SwordCollider={
    Name={
        t_name ="sword"
    },
    Transform = {
        positionX = "450.0",
        positionY="400.0",
        positionZ="-400.0",
        scaleX="1.0",
        scaleY="1.0",
        scaleZ="1.0",
        rotationX="0.0",
        rotationY="-2.0",
        rotationZ="0.0",
        rotationW="1.0"
    },
    Scripts={
        "Sword",
    },
   
}
Player = {
   Name={
       t_name="player"
   },
   Transform = {
       positionX = "450.0",
       positionY="400.0",
       positionZ="-400.0",
       scaleX="50.0",
       scaleY="50.0",
       scaleZ="50.0",
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
       t_model_name = "Dabnis2.mesh",
       t_entity_name= "player",
       t_node_x="25.0",
       t_node_y="25.0",
       t_node_z="25.0",
       t_mat_name= ""
   },
   Animator={
       t_name="Player"
   },
   Scripts={
        "PlayerMovement",
        "PickUp",
        "PlayerHealth",
        "PlayerAttack"
    },    
    AudioSource = {
        t_routeSong = "Assets/Audio/Attack.mp3",
        t_songName = "Ataque",
        t_music = "false"
    }
}
AudioPlayerGetDamage = {
    Name={
        t_name ="AudioPlayerGetDamage"
    },
    Transform = {
        positionX = "0.0",
        positionY = "0.0",
        positionZ = "0.0",
        scaleX = "0.1",
        scaleY = "0.1",
        scaleZ = "0.1",
        rotationX = "0.0",
        rotationY = "0.0",
        rotationZ = "0.0",
        rotationW = "1.0"
    },
    AudioSource ={
        t_routeSong = "Assets/Audio/GetDamage.mp3",
        t_songName = "GetDamage",
        t_music = "false"
    }
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
MakoyAzul01 = {
    Name={
        t_name="ma1"
    },
    Transform = {
        positionX = "-1200.0",
        positionY = "300.0",
        positionZ = "500.0",
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
    },
    Scripts={
        "Enemy",
        "BlueEnemy"
    }
--    Animator={
--        t_name="dragon"
--    }
}
MakoyAzul02 = {
    Name={
        t_name="ma2"
    },
    Transform = {
        positionX = "-42000.0",
        positionY = "300.0",
        positionZ = "-15000.0",
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
        t_entity_name= "ma2",
        t_node_x="0",
        t_node_y="0",
        t_node_z="0",
        t_mat_name= ""
    },
    Scripts={
        "Enemy",
        "BlueEnemy"
    }
--    Animator={
--        t_name="dragon"
--    }
}
MakoyAzul03 = {
    Name={
        t_name="ma3"
    },
    Transform = {
        positionX = "-43000.0",
        positionY = "300.0",
        positionZ = "-12000.0",
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
        t_entity_name= "ma3",
        t_node_x="0",
        t_node_y="0",
        t_node_z="0",
        t_mat_name= ""
    },
    Scripts={
        "Enemy",
        "BlueEnemy"
    }
--    Animator={
--        t_name="dragon"
--    }
}
MakoyAzul04 = {
    Name={
        t_name="ma4"
    },
    Transform = {
        positionX = "-46500.0",
        positionY = "300.0",
        positionZ = "-11200.0",
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
        t_entity_name= "ma4",
        t_node_x="0",
        t_node_y="0",
        t_node_z="0",
        t_mat_name= ""
    },
    Scripts={
        "Enemy",
        "BlueEnemy"
    }
--    Animator={
--        t_name="dragon"
--    }
}
MakoyAzul05 = {
    Name={
        t_name="ma5"
    },
    Transform = {
        positionX = "18000.0",
        positionY = "300.0",
        positionZ = "-120.0",
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
        t_entity_name= "ma5",
        t_node_x="0",
        t_node_y="0",
        t_node_z="0",
        t_mat_name= ""
    },
    Scripts={
        "Enemy",
        "BlueEnemy"
    }
--    Animator={
--        t_name="dragon"
--    }
}
MakoyRojo01 = {
    Name={
        t_name="mr1"
    },
    Transform = {
        positionX = "800.0",
        positionY = "300.0",
        positionZ = "4000.0",
        scaleX = "1.04",
        scaleY = "1.04",
        scaleZ = "1.04",
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
        t_model_name = "makoyrojo.mesh",
        t_entity_name= "mr1",
        t_node_x="0",
        t_node_y="0",
        t_node_z="0",
        t_mat_name= ""
    },
    Scripts={
        "Enemy",
        "RedEnemy"
    }
--    Animator={
--        t_name="dragon"
--    }
}
MakoyRojo02 = {
    Name={
        t_name="mr2"
    },
    Transform = {
        positionX = "-46800.0",
        positionY = "300.0",
        positionZ = "-500.0",
        scaleX = "1.04",
        scaleY = "1.04",
        scaleZ = "1.04",
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
        t_model_name = "makoyrojo.mesh",
        t_entity_name= "mr2",
        t_node_x="0",
        t_node_y="0",
        t_node_z="0",
        t_mat_name= ""
    },
    Scripts={
        "Enemy",
        "RedEnemy"
    }
--    Animator={
--        t_name="dragon"
--    }
}
MakoyRojo03 = {
    Name={
        t_name="mr3"
    },
    Transform = {
        positionX = "-47000.0",
        positionY = "300.0",
        positionZ = "-2000.0",
        scaleX = "1.04",
        scaleY = "1.04",
        scaleZ = "1.04",
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
        t_model_name = "makoyrojo.mesh",
        t_entity_name= "mr3",
        t_node_x="0",
        t_node_y="0",
        t_node_z="0",
        t_mat_name= ""
    },
    Scripts={
        "Enemy",
        "RedEnemy"
    }
--    Animator={
--        t_name="dragon"
--    }
}
MakoyRojo04 = {
    Name={
        t_name="mr4"
    },
    Transform = {
        positionX = "19000.0",
        positionY = "300.0",
        positionZ = "-1000.0",
        scaleX = "1.04",
        scaleY = "1.04",
        scaleZ = "1.04",
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
        t_model_name = "makoyrojo.mesh",
        t_entity_name= "mr4",
        t_node_x="0",
        t_node_y="0",
        t_node_z="0",
        t_mat_name= ""
    },
    Scripts={
        "Enemy",
        "RedEnemy"
    }
--    Animator={
--        t_name="dragon"
--    }
}
MakoyMorado01 = {
    Name={
        t_name="mm1"
    },
    Transform = {
        positionX = "300.0",
        positionY = "300.0",
        positionZ = "-25000.0",
        scaleX = "1.44",
        scaleY = "1.44",
        scaleZ = "1.44",
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
        t_model_name = "makoymorado.mesh",
        t_entity_name= "mm1",
        t_node_x="0",
        t_node_y="0",
        t_node_z="0",
        t_mat_name= ""
    },
    Scripts={
        "Enemy",
        "PurpleEnemy"
    }
--    Animator={
--        t_name="dragon"
--    }
}
MakoyMorado02 = {
    Name={
        t_name="mm2"
    },
    Transform = {
        positionX = "650.0",
        positionY = "300.0",
        positionZ = "-25200.0",
        scaleX = "1.44",
        scaleY = "1.44",
        scaleZ = "1.44",
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
        t_model_name = "makoymorado.mesh",
        t_entity_name= "mm2",
        t_node_x="0",
        t_node_y="0",
        t_node_z="0",
        t_mat_name= ""
    },
    Scripts={
        "Enemy",
        "PurpleEnemy"
    }
--    Animator={
--        t_name="dragon"
--    }
}
MakoyMorado03 = {
    Name={
        t_name="mm3"
    },
    Transform = {
        positionX = "900.0",
        positionY = "300.0",
        positionZ = "-25700.0",
        scaleX = "1.44",
        scaleY = "1.44",
        scaleZ = "1.44",
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
        t_model_name = "makoymorado.mesh",
        t_entity_name= "mm3",
        t_node_x="0",
        t_node_y="0",
        t_node_z="0",
        t_mat_name= ""
    },
    Scripts={
        "Enemy",
        "PurpleEnemy"
    }
--    Animator={
--        t_name="dragon"
--    }
}
MakoyMorado04 = {
    Name={
        t_name="mm4"
    },
    Transform = {
        positionX = "-100.0",
        positionY = "300.0",
        positionZ = "-25500.0",
        scaleX = "1.44",
        scaleY = "1.44",
        scaleZ = "1.44",
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
        t_model_name = "makoymorado.mesh",
        t_entity_name= "mm4",
        t_node_x="0",
        t_node_y="0",
        t_node_z="0",
        t_mat_name= ""
    },
    Scripts={
        "Enemy",
        "PurpleEnemy"
    }
--    Animator={
--        t_name="dragon"
--    }
}
MakoyMorado05 = {
    Name={
        t_name="mm5"
    },
    Transform = {
        positionX = "-46400.0",
        positionY = "200.0",
        positionZ = "-1100.0",
        scaleX = "1.44",
        scaleY = "1.44",
        scaleZ = "1.44",
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
        t_model_name = "makoymorado.mesh",
        t_entity_name= "mm5",
        t_node_x="0",
        t_node_y="0",
        t_node_z="0",
        t_mat_name= ""
    },
    Scripts={
        "Enemy",
        "PurpleEnemy"
    }
--    Animator={
--        t_name="dragon"
--    }
}
MakoyKing = {
    Name={
        t_name="mk"
    },
    Transform = {
        positionX = "600.0",
        positionY = "300.0",
        positionZ = "-26000.0",
        scaleX = "2",
        scaleY = "2",
        scaleZ = "2",
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
        t_model_name = "makoyking.mesh",
        t_entity_name= "mk",
        t_node_x="0",
        t_node_y="0",
        t_node_z="0",
        t_mat_name= ""
    },
    Scripts={
        "Enemy",
        "BlackEnemy"
    }
--    Animator={
--        t_name="dragon"
--    }
}
EspadaMetal = {
    Name={
        t_name="espadam",
    },
    Transform = {
        positionX = "-500.0",
        positionY = "50.0",
        positionZ = "0.0",
        scaleX = "20",
        scaleY = "20",
        scaleZ = "20",
        rotationX = "1.0",
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
        t_model_name = "EspadaMetal.mesh",
        t_entity_name= "espadam",
        t_node_x="0",
        t_node_y="0",
        t_node_z="0",
        t_mat_name= ""
    }
}
EspadaMadera = {
    Name={
        t_name="espada",
    },
    Transform = {
        positionX = "-400.0",
        positionY = "50.0",
        positionZ = "0.0",
        scaleX = "20",
        scaleY = "20",
        scaleZ = "20",
        rotationX = "1.0",
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
        t_model_name = "EspadaMadera.mesh",
        t_entity_name= "espada",
        t_node_x="0",
        t_node_y="0",
        t_node_z="0",
        t_mat_name= ""
    }
}
EspadaEspecial = {
    Name={
        t_name="espadae",
    },
    Transform = {
        positionX = "-47200.0",
        positionY = "300.0",
        positionZ = "-1000.0",
        scaleX = "10",
        scaleY = "10",
        scaleZ = "10",
        rotationX = "1.0",
        rotationY = "0.0",
        rotationZ = "0.5",
        rotationW = "1.0"
    },
    RigidBody = {
        t_mass = "20.0",
        t_trigger = "0",
        t_static = "1"
    },
    MeshRenderer = {
        t_model_name = "EspadaEspecial.mesh",
        t_entity_name= "espadae",
        t_node_x="0",
        t_node_y="0",
        t_node_z="0",
        t_mat_name= ""
    }
}
Slime01 = {
    Name={
        t_name="slime01",
    },
    Transform = {
        positionX = "15450.0",
        positionY = "300.0",
        positionZ = "-1000.0",
        scaleX = "150",
        scaleY = "150",
        scaleZ = "150",
        rotationX = "0.0",
        rotationY = "-1.0",
        rotationZ = "0.0",
        rotationW = "1.0"
    },
    RigidBody = {
        t_mass = "20.0",
        t_trigger = "0",
        t_static = "1"
    },
    MeshRenderer = {
        t_model_name = "slime07.mesh",
        t_entity_name= "slime01",
        t_node_x="0",
        t_node_y="0",
        t_node_z="0",
        t_mat_name= ""
    }
}
Slime02 = {
    Name={
        t_name="slime02",
    },
    Transform = {
        positionX = "15200.0",
        positionY = "300.0",
        positionZ = "-1400.0",
        scaleX = "150",
        scaleY = "150",
        scaleZ = "150",
        rotationX = "0.0",
        rotationY = "-1.5",
        rotationZ = "0.0",
        rotationW = "1.0"
    },
    RigidBody = {
        t_mass = "20.0",
        t_trigger = "0",
        t_static = "1"
    },
    MeshRenderer = {
        t_model_name = "slime01.mesh",
        t_entity_name= "slime02",
        t_node_x="0",
        t_node_y="0",
        t_node_z="0",
        t_mat_name= ""
    }
}
Slime03 = {
    Name={
        t_name="slime03",
    },
    Transform = {
        positionX = "15000.0",
        positionY = "300.0",
        positionZ = "-1100.0",
        scaleX = "150",
        scaleY = "150",
        scaleZ = "150",
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
        t_model_name = "slime02.mesh",
        t_entity_name= "slime03",
        t_node_x="0",
        t_node_y="0",
        t_node_z="0",
        t_mat_name= ""
    }
}
Slime04 = {
    Name={
        t_name="slime04",
    },
    Transform = {
        positionX = "200.0",
        positionY = "300.0",
        positionZ = "-3000.0",
        scaleX = "150",
        scaleY = "150",
        scaleZ = "150",
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
        t_model_name = "slime04.mesh",
        t_entity_name= "slime04",
        t_node_x="0",
        t_node_y="0",
        t_node_z="0",
        t_mat_name= ""
    }
}
Slime05 = {
    Name={
        t_name="slime05",
    },
    Transform = {
        positionX = "400.0",
        positionY = "300.0",
        positionZ = "-3400.0",
        scaleX = "150",
        scaleY = "150",
        scaleZ = "150",
        rotationX = "0.0",
        rotationY = "-1.5",
        rotationZ = "0.0",
        rotationW = "1.0"
    },
    RigidBody = {
        t_mass = "20.0",
        t_trigger = "0",
        t_static = "1"
    },
    MeshRenderer = {
        t_model_name = "slime05.mesh",
        t_entity_name= "slime05",
        t_node_x="0",
        t_node_y="0",
        t_node_z="0",
        t_mat_name= ""
    }
}
Slime06 = {
    Name={
        t_name="slime06",
    },
    Transform = {
        positionX = "-200.0",
        positionY = "270.0",
        positionZ = "-3100.0",
        scaleX = "150",
        scaleY = "150",
        scaleZ = "150",
        rotationX = "0.0",
        rotationY = "1.0",
        rotationZ = "0.0",
        rotationW = "1.0"
    },
    RigidBody = {
        t_mass = "20.0",
        t_trigger = "0",
        t_static = "1"
    },
    MeshRenderer = {
        t_model_name = "slime02.mesh",
        t_entity_name= "slime06",
        t_node_x="0",
        t_node_y="0",
        t_node_z="0",
        t_mat_name= ""
    }
}
Slime07 = {
    Name={
        t_name="slime07",
    },
    Transform = {
        positionX = "-800.0",
        positionY = "300.0",
        positionZ = "-8500.0",
        scaleX = "155",
        scaleY = "155",
        scaleZ = "155",
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
        t_model_name = "slime06.mesh",
        t_entity_name= "slime07",
        t_node_x="0",
        t_node_y="0",
        t_node_z="0",
        t_mat_name= ""
    }
}
Slime08 = {
    Name={
        t_name="slime08",
    },
    Transform = {
        positionX = "00.0",
        positionY = "300.0",
        positionZ = "-8300.0",
        scaleX = "150",
        scaleY = "150",
        scaleZ = "150",
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
        t_model_name = "slime06.mesh",
        t_entity_name= "slime08",
        t_node_x="0",
        t_node_y="0",
        t_node_z="0",
        t_mat_name= ""
    }
}
Waldo = {
    Name={
        t_name="waldo",
    },
    Transform = {
        positionX = "300.0",
        positionY = "330.0",
        positionZ = "-26100.0",
        scaleX = "150",
        scaleY = "150",
        scaleZ = "150",
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
        t_model_name = "slime03.mesh",
        t_entity_name= "waldo",
        t_node_x="0",
        t_node_y="0",
        t_node_z="0",
        t_mat_name= ""
    },
    Scripts={
        "GoToWin"
    },
}
SlimeKing = {
    Name={
        t_name="slimek",
    },
    Transform = {
        positionX = "-400.0",
        positionY = "350.0",
        positionZ = "-9000.0",
        scaleX = "400",
        scaleY = "400",
        scaleZ = "400",
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
        t_model_name = "SlimeKing.mesh",
        t_entity_name= "slimek",
        t_node_x="0",
        t_node_y="0",
        t_node_z="0",
        t_mat_name= ""
    }
}
EscudoMadera = {
    Name={
        t_name="escudom",
    },
    Transform = {
        positionX = "-500.0",
        positionY = "50.0",
        positionZ = "200.0",
        scaleX = "50",
        scaleY = "50",
        scaleZ = "50",
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
        t_model_name = "EscudoMadera.mesh",
        t_entity_name= "escudom",
        t_node_x="0",
        t_node_y="0",
        t_node_z="0",
        t_mat_name= ""
    }
}
PocionRoja = {
    Name={
        t_name="pocionRoja",
    },
    Transform = {
        positionX = "500.0",
        positionY = "300.0",
        positionZ = "-300.0",
        scaleX = "20",
        scaleY = "20",
        scaleZ = "20",
        rotationX = "1.0",
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
        t_model_name = "PocionRoja.mesh",
        t_entity_name= "pocionRoja",
        t_node_x="0",
        t_node_y="0",
        t_node_z="0",
        t_mat_name= ""
    },
    Scripts={
        "RedPotion"
    }
}
Tronco01 = {
    Name={
        t_name="tronco01"
    },
    Transform = {
        positionX = "-8000.0",
        positionY = "250.0",
        positionZ = "-400.0",
        scaleX = "70.0",
        scaleY = "70.0",
        scaleZ = "70.0",
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
        t_model_name = "tronco.mesh",
        t_entity_name= "tronco01",
        t_node_x=" 1.0",
        t_node_y="1.0",
        t_node_z="1.0",
        t_mat_name= ""
    }
}
Tronco02 = {
    Name={
        t_name="tronco02"
    },
    Transform = {
        positionX = "-16500.0",
        positionY = "250.0",
        positionZ = "-1250.0",
        scaleX = "70.0",
        scaleY = "70.0",
        scaleZ = "70.0",
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
        t_model_name = "tronco.mesh",
        t_entity_name= "tronco02",
        t_node_x=" 1.0",
        t_node_y="1.0",
        t_node_z="1.0",
        t_mat_name= ""
    }
}
Tronco03 = {
    Name={
        t_name="tronco03"
    },
    Transform = {
        positionX = "-35000.0",
        positionY = "250.0",
        positionZ = "-11250.0",
        scaleX = "80.0",
        scaleY = "80.0",
        scaleZ = "80.0",
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
        t_model_name = "tronco.mesh",
        t_entity_name= "tronco03",
        t_node_x=" 1.0",
        t_node_y="1.0",
        t_node_z="1.0",
        t_mat_name= ""
    }
}
Tronco04 = {
    Name={
        t_name="tronco04"
    },
    Transform = {
        positionX = "-13500.0",
        positionY = "250.0",
        positionZ = "-6250.0",
        scaleX = "70.0",
        scaleY = "70.0",
        scaleZ = "70.0",
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
        t_model_name = "tronco.mesh",
        t_entity_name= "tronco04",
        t_node_x=" 1.0",
        t_node_y="1.0",
        t_node_z="1.0",
        t_mat_name= ""
    }
}
Tronco04 = {
    Name={
        t_name="tronco04"
    },
    Transform = {
        positionX = "500.0",
        positionY = "300.0",
        positionZ = "-8100.0",
        scaleX = "80.0",
        scaleY = "80.0",
        scaleZ = "80.0",
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
        t_model_name = "tronco.mesh",
        t_entity_name= "tronco04",
        t_node_x=" 1.0",
        t_node_y="1.0",
        t_node_z="1.0",
        t_mat_name= ""
    }
}
Tronco05 = {
    Name={
        t_name="tronco05"
    },
    Transform = {
        positionX = "2250.0",
        positionY = "250.0",
        positionZ = "2000.0",
        scaleX = "80.0",
        scaleY = "80.0",
        scaleZ = "80.0",
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
        t_model_name = "tronco.mesh",
        t_entity_name= "tronco05",
        t_node_x=" 1.0",
        t_node_y="1.0",
        t_node_z="1.0",
        t_mat_name= ""
    }
}
Tronco06 = {
    Name={
        t_name="tronco06"
    },
    Transform = {
        positionX = "10250.0",
        positionY = "300.0",
        positionZ = "4500.0",
        scaleX = "80.0",
        scaleY = "80.0",
        scaleZ = "80.0",
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
        t_model_name = "tronco.mesh",
        t_entity_name= "tronco06",
        t_node_x=" 1.0",
        t_node_y="1.0",
        t_node_z="1.0",
        t_mat_name= ""
    }
}
-- Colocar a todos los slimes por aqui
Tronco07 = {
    Name={
        t_name="tronco07"
    },
    Transform = {
        positionX = "19250.0",
        positionY = "250.0",
        positionZ = "500.0",
        scaleX = "80.0",
        scaleY = "80.0",
        scaleZ = "80.0",
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
        t_model_name = "tronco.mesh",
        t_entity_name= "tronco07",
        t_node_x=" 1.0",
        t_node_y="1.0",
        t_node_z="1.0",
        t_mat_name= ""
    }
}
M1 = {
    Name={
        t_name="m1"
    },
    Transform = {
        positionX = "-25000.0",
        positionY = "200.0",
        positionZ = "17000.0",
        scaleX = "8.0",
        scaleY = "8.0",
        scaleZ = "8.0",
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
        t_model_name = "Mountain_3.mesh",
        t_entity_name= "m1",
        t_node_x=" 1.0",
        t_node_y="1.0",
        t_node_z="1.0",
        t_mat_name= ""
    }
}
M2 = {
    Name={
        t_name="m2"
    },
    Transform = {
        positionX = "-38000.0",
        positionY = "2000.0",
        positionZ = "17000.0",
        scaleX = "5.0",
        scaleY = "5.0",
        scaleZ = "5.0",
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
        t_model_name = "Mountain_2.mesh",
        t_entity_name= "m2",
        t_node_x=" 1.0",
        t_node_y="1.0",
        t_node_z="1.0",
        t_mat_name= ""
    }
}
M3 = {
    Name={
        t_name="m3"
    },
    Transform = {
        positionX = "-16500.0",
        positionY = "2000.0",
        positionZ = "17000.0",
        scaleX = "5.0",
        scaleY = "5.0",
        scaleZ = "5.0",
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
        t_model_name = "Mountain_1.mesh",
        t_entity_name= "m3",
        t_node_x=" 1.0",
        t_node_y="1.0",
        t_node_z="1.0",
        t_mat_name= ""
    }
}
M4 = {
    Name={
        t_name="m4"
    },
    Transform = {
        positionX = "-9500.0",
        positionY = "1000.0",
        positionZ = "14000.0",
        scaleX = "3.0",
        scaleY = "3.0",
        scaleZ = "3.0",
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
        t_model_name = "Mountain_4.mesh",
        t_entity_name= "m4",
        t_node_x=" 1.0",
        t_node_y="1.0",
        t_node_z="1.0",
        t_mat_name= ""
    }
}
M5 = {
    Name={
        t_name="m5"
    },
    Transform = {
        positionX = "-2000.0",
        positionY = "200.0",
        positionZ = "12000.0",
        scaleX = "2.5",
        scaleY = "2.5",
        scaleZ = "2.5",
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
        t_model_name = "Mountain_5.mesh",
        t_entity_name= "m5",
        t_node_x=" 1.0",
        t_node_y="1.0",
        t_node_z="1.0",
        t_mat_name= ""
    }
}
M6 = {
    Name={
        t_name="m6"
    },
    Transform = {
        positionX = "6000.0",
        positionY = "1500.0",
        positionZ = "16500.0",
        scaleX = "3.2",
        scaleY = "3.2",
        scaleZ = "3.2",
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
        t_model_name = "Mountain_6.mesh",
        t_entity_name= "m6",
        t_node_x=" 1.0",
        t_node_y="1.0",
        t_node_z="1.0",
        t_mat_name= ""
    }
}
M7 = {
    Name={
        t_name="m7"
    },
    Transform = {
        positionX = "5500.0",
        positionY = "1500.0",
        positionZ = "24000.0",
        scaleX = "2",
        scaleY = "2",
        scaleZ = "2",
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
        t_model_name = "Mountain_7.mesh",
        t_entity_name= "m7",
        t_node_x=" 1.0",
        t_node_y="1.0",
        t_node_z="1.0",
        t_mat_name= ""
    }
}
M8 = {
    Name={
        t_name="m8"
    },
    Transform = {
        positionX = "-49000.0",
        positionY = "200.0",
        positionZ = "20000.0",
        scaleX = "8.0",
        scaleY = "8.0",
        scaleZ = "8.0",
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
        t_model_name = "Mountain_8.mesh",
        t_entity_name= "m8",
        t_node_x=" 1.0",
        t_node_y="1.0",
        t_node_z="1.0",
        t_mat_name= ""
    }
}
M9 = {
    Name={
        t_name="m9"
    },
    Transform = {
        positionX = "-58500.0",
        positionY = "1500.0",
        positionZ = "14500.0",
        scaleX = "5.0",
        scaleY = "5.0",
        scaleZ = "5.0",
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
        t_model_name = "Mountain_9.mesh",
        t_entity_name= "m9",
        t_node_x=" 1.0",
        t_node_y="1.0",
        t_node_z="1.0",
        t_mat_name= ""
    }
}
M10 = {
    Name={
        t_name="m10"
    },
    Transform = {
        positionX = "-62000.0",
        positionY = "500.0",
        positionZ = "6500.0",
        scaleX = "5.0",
        scaleY = "5.0",
        scaleZ = "5.0",
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
        t_model_name = "Mountain_10.mesh",
        t_entity_name= "m10",
        t_node_x=" 1.0",
        t_node_y="1.0",
        t_node_z="1.0",
        t_mat_name= ""
    }
}
M11 = {
    Name={
        t_name="m11"
    },
    Transform = {
        positionX = "-64000.0",
        positionY = "2000.0",
        positionZ = "-3500.0",
        scaleX = "6.0",
        scaleY = "3.0",
        scaleZ = "6.0",
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
        t_model_name = "Mountain_11.mesh",
        t_entity_name= "m11",
        t_node_x=" 1.0",
        t_node_y="1.0",
        t_node_z="1.0",
        t_mat_name= ""
    }
}
M12 = {
    Name={
        t_name="m12"
    },
    Transform = {
        positionX = "-68000.0",
        positionY = "500.0",
        positionZ = "-12500.0",
        scaleX = "5.0",
        scaleY = "5.0",
        scaleZ = "5.0",
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
        t_model_name = "Mountain_12.mesh",
        t_entity_name= "m12",
        t_node_x=" 1.0",
        t_node_y="1.0",
        t_node_z="1.0",
        t_mat_name= ""
    }
}
M13 = {
    Name={
        t_name="m13"
    },
    Transform = {
        positionX = "-57000.0",
        positionY = "1500.0",
        positionZ = "-17000.0",
        scaleX = "6.0",
        scaleY = "2.0",
        scaleZ = "6.0",
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
        t_model_name = "Mountain_13.mesh",
        t_entity_name= "m13",
        t_node_x=" 1.0",
        t_node_y="1.0",
        t_node_z="1.0",
        t_mat_name= ""
    }
}
M14 = {
    Name={
        t_name="m14"
    },
    Transform = {
        positionX = "-48000.0",
        positionY = "500.0",
        positionZ = "-20000.0",
        scaleX = "5.0",
        scaleY = "5.0",
        scaleZ = "5.0",
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
        t_model_name = "Mountain_12.mesh",
        t_entity_name= "m14",
        t_node_x=" 1.0",
        t_node_y="1.0",
        t_node_z="1.0",
        t_mat_name= ""
    }
}
M15 = {
    Name={
        t_name="m15"
    },
    Transform = {
        positionX = "-37000.0",
        positionY = "2000.0",
        positionZ = "-23500.0",
        scaleX = "3.0",
        scaleY = "3.0",
        scaleZ = "3.0",
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
        t_model_name = "Mountain_15.mesh",
        t_entity_name= "m15",
        t_node_x=" 1.0",
        t_node_y="1.0",
        t_node_z="1.0",
        t_mat_name= ""
    }
}
M16 = {
    Name={
        t_name="m16"
    },
    Transform = {
        positionX = "-22000.0",
        positionY = "2000.0",
        positionZ = "-28000.0",
        scaleX = "3.0",
        scaleY = "3.0",
        scaleZ = "3.0",
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
        t_model_name = "Mountain_16.mesh",
        t_entity_name= "m16",
        t_node_x=" 1.0",
        t_node_y="1.0",
        t_node_z="1.0",
        t_mat_name= ""
    }
}
M17 = {
    Name={
        t_name="m17"
    },
    Transform = {
        positionX = "-5000.0",
        positionY = "2000.0",
        positionZ = "-32000.0",
        scaleX = "2.0",
        scaleY = "2.0",
        scaleZ = "2.0",
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
        t_model_name = "Mountain_17.mesh",
        t_entity_name= "m17",
        t_node_x=" 1.0",
        t_node_y="1.0",
        t_node_z="1.0",
        t_mat_name= ""
    }
}
M18 = {
    Name={
        t_name="m18"
    },
    Transform = {
        positionX = "7500.0",
        positionY = "2000.0",
        positionZ = "-31000.0",
        scaleX = "2.5",
        scaleY = "2.5",
        scaleZ = "2.5",
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
        t_model_name = "Mountain_18.mesh",
        t_entity_name= "m18",
        t_node_x=" 1.0",
        t_node_y="1.0",
        t_node_z="1.0",
        t_mat_name= ""
    }
}
M19 = {
    Name={
        t_name="m19"
    },
    Transform = {
        positionX = "13000.0",
        positionY = "2000.0",
        positionZ = "-28000.0",
        scaleX = "2.5",
        scaleY = "2.5",
        scaleZ = "2.5",
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
        t_model_name = "Mountain_19.mesh",
        t_entity_name= "m19",
        t_node_x=" 1.0",
        t_node_y="1.0",
        t_node_z="1.0",
        t_mat_name= ""
    }
}
M20 = {
    Name={
        t_name="m20"
    },
    Transform = {
        positionX = "15000.0",
        positionY = "2000.0",
        positionZ = "-22000.0",
        scaleX = "2.5",
        scaleY = "2.5",
        scaleZ = "2.5",
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
        t_model_name = "Mountain_20.mesh",
        t_entity_name= "m20",
        t_node_x=" 1.0",
        t_node_y="1.0",
        t_node_z="1.0",
        t_mat_name= ""
    }
}
M21 = {
    Name={
        t_name="m21"
    },
    Transform = {
        positionX = "20000.0",
        positionY = "1500.0",
        positionZ = "-16000.0",
        scaleX = "2.5",
        scaleY = "2.5",
        scaleZ = "2.5",
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
        t_model_name = "Mountain_21.mesh",
        t_entity_name= "m21",
        t_node_x=" 1.0",
        t_node_y="1.0",
        t_node_z="1.0",
        t_mat_name= ""
    }
}
M22 = {
    Name={
        t_name="m22"
    },
    Transform = {
        positionX = "29000.0",
        positionY = "1500.0",
        positionZ = "-13000.0",
        scaleX = "2.5",
        scaleY = "2.5",
        scaleZ = "2.5",
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
        t_model_name = "Mountain_22.mesh",
        t_entity_name= "m22",
        t_node_x=" 1.0",
        t_node_y="1.0",
        t_node_z="1.0",
        t_mat_name= ""
    }
}
A81 = {
    Name={
        t_name="a81"
    },
    Transform = {
        positionX = "-50000.0",
        positionY = "560.0",
        positionZ = "500.0",
        scaleX = "0.2",
        scaleY = "0.2",
        scaleZ = "0.2",
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
        t_model_name = "Arbol08.mesh",
        t_entity_name= "a81",
        t_node_x="0",
        t_node_y="0",
        t_node_z="0",
        t_mat_name= ""
    }
}
A82 = {
    Name={
        t_name="a82"
    },
    Transform = {
        positionX = "-43000.0",
        positionY = "560.0",
        positionZ = "4000.0",
        scaleX = "0.2",
        scaleY = "0.2",
        scaleZ = "0.2",
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
        t_model_name = "Arbol08.mesh",
        t_entity_name= "a82",
        t_node_x="0",
        t_node_y="0",
        t_node_z="0",
        t_mat_name= ""
    }
}
A84 = {
    Name={
        t_name="a84"
    },
    Transform = {
        positionX = "-54000.0",
        positionY = "560.0",
        positionZ = "-8000.0",
        scaleX = "0.2",
        scaleY = "0.2",
        scaleZ = "0.2",
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
        t_model_name = "Arbol08.mesh",
        t_entity_name= "a84",
        t_node_x="0",
        t_node_y="0",
        t_node_z="0",
        t_mat_name= ""
    }
}
A86 = {
    Name={
        t_name="a86"
    },
    Transform = {
        positionX = "-42000.0",
        positionY = "560.0",
        positionZ = "-7000.0",
        scaleX = "0.2",
        scaleY = "0.2",
        scaleZ = "0.2",
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
        t_model_name = "Arbol08.mesh",
        t_entity_name= "a86",
        t_node_x="0",
        t_node_y="0",
        t_node_z="0",
        t_mat_name= ""
    }
}
A87 = {
    Name={
        t_name="a87"
    },
    Transform = {
        positionX = "-51000.0",
        positionY = "560.0",
        positionZ = "8700.0",
        scaleX = "0.2",
        scaleY = "0.2",
        scaleZ = "0.2",
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
        t_model_name = "Arbol08.mesh",
        t_entity_name= "a87",
        t_node_x="0",
        t_node_y="0",
        t_node_z="0",
        t_mat_name= ""
    }
}
A88 = {
    Name={
        t_name="a88"
    },
    Transform = {
        positionX = "-58000.0",
        positionY = "560.0",
        positionZ = "7000.0",
        scaleX = "0.2",
        scaleY = "0.2",
        scaleZ = "0.2",
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
        t_model_name = "Arbol08.mesh",
        t_entity_name= "a88",
        t_node_x="0",
        t_node_y="0",
        t_node_z="0",
        t_mat_name= ""
    }
}
A89 = {
    Name={
        t_name="a89"
    },
    Transform = {
        positionX = "-45000.0",
        positionY = "560.0",
        positionZ = "-3000.0",
        scaleX = "0.2",
        scaleY = "0.2",
        scaleZ = "0.2",
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
        t_model_name = "Arbol08.mesh",
        t_entity_name= "a89",
        t_node_x="0",
        t_node_y="0",
        t_node_z="0",
        t_mat_name= ""
    }
}
A813 = {
    Name={
        t_name="a813"
    },
    Transform = {
        positionX = "-48000.0",
        positionY = "560.0",
        positionZ = "4000.0",
        scaleX = "0.2",
        scaleY = "0.2",
        scaleZ = "0.2",
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
        t_model_name = "Arbol08.mesh",
        t_entity_name= "a813",
        t_node_x="0",
        t_node_y="0",
        t_node_z="0",
        t_mat_name= ""
    }
}
A814 = {
    Name={
        t_name="a814"
    },
    Transform = {
        positionX = "-60000.0",
        positionY = "560.0",
        positionZ = "-9000.0",
        scaleX = "0.2",
        scaleY = "0.2",
        scaleZ = "0.2",
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
        t_model_name = "Arbol08.mesh",
        t_entity_name= "a814",
        t_node_x="0",
        t_node_y="0",
        t_node_z="0",
        t_mat_name= ""
    }
}
A815 = {
    Name={
        t_name="a815"
    },
    Transform = {
        positionX = "-56000.0",
        positionY = "560.0",
        positionZ = "-5000.0",
        scaleX = "0.2",
        scaleY = "0.2",
        scaleZ = "0.2",
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
        t_model_name = "Arbol08.mesh",
        t_entity_name= "a815",
        t_node_x="0",
        t_node_y="0",
        t_node_z="0",
        t_mat_name= ""
    }
}
A816 = {
    Name={
        t_name="a816"
    },
    Transform = {
        positionX = "-55700.0",
        positionY = "560.0",
        positionZ = "000.0",
        scaleX = "0.2",
        scaleY = "0.2",
        scaleZ = "0.2",
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
        t_model_name = "Arbol08.mesh",
        t_entity_name= "a816",
        t_node_x="0",
        t_node_y="0",
        t_node_z="0",
        t_mat_name= ""
    }
}
A817 = {
    Name={
        t_name="a817"
    },
    Transform = {
        positionX = "-40000.0",
        positionY = "560.0",
        positionZ = "000.0",
        scaleX = "0.2",
        scaleY = "0.2",
        scaleZ = "0.2",
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
        t_model_name = "Arbol08.mesh",
        t_entity_name= "a817",
        t_node_x="0",
        t_node_y="0",
        t_node_z="0",
        t_mat_name= ""
    }
}
A818 = {
    Name={
        t_name="a818"
    },
    Transform = {
        positionX = "-40000.0",
        positionY = "560.0",
        positionZ = "8000.0",
        scaleX = "0.2",
        scaleY = "0.2",
        scaleZ = "0.2",
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
        t_model_name = "Arbol08.mesh",
        t_entity_name= "a818",
        t_node_x="0",
        t_node_y="0",
        t_node_z="0",
        t_mat_name= ""
    }
}
A819 = {
    Name={
        t_name="a819"
    },
    Transform = {
        positionX = "-33000.0",
        positionY = "560.0",
        positionZ = "10000.0",
        scaleX = "0.2",
        scaleY = "0.2",
        scaleZ = "0.2",
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
        t_model_name = "Arbol08.mesh",
        t_entity_name= "a819",
        t_node_x="0",
        t_node_y="0",
        t_node_z="0",
        t_mat_name= ""
    }
}
A823 = {
    Name={
        t_name="a823"
    },
    Transform = {
        positionX = "-57000.0",
        positionY = "560.0",
        positionZ = "-11000.0",
        scaleX = "0.2",
        scaleY = "0.2",
        scaleZ = "0.2",
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
        t_model_name = "Arbol08.mesh",
        t_entity_name= "a823",
        t_node_x="0",
        t_node_y="0",
        t_node_z="0",
        t_mat_name= ""
    }
}
A824 = {
    Name={
        t_name="a824"
    },
    Transform = {
        positionX = "-57000.0",
        positionY = "560.0",
        positionZ = "4000.0",
        scaleX = "0.2",
        scaleY = "0.2",
        scaleZ = "0.2",
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
        t_model_name = "Arbol08.mesh",
        t_entity_name= "a824",
        t_node_x="0",
        t_node_y="0",
        t_node_z="0",
        t_mat_name= ""
    }
}
A825 = {
    Name={
        t_name="a825"
    },
    Transform = {
        positionX = "-52000.0",
        positionY = "560.0",
        positionZ = "5000.0",
        scaleX = "0.2",
        scaleY = "0.2",
        scaleZ = "0.2",
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
        t_model_name = "Arbol08.mesh",
        t_entity_name= "a825",
        t_node_x="0",
        t_node_y="0",
        t_node_z="0",
        t_mat_name= ""
    }
}
A21 = {
    Name={
        t_name="a21"
    },
    Transform = {
        positionX = "-32000.0",
        positionY = "390.0",
        positionZ = "0.0",
        scaleX = "0.2",
        scaleY = "0.2",
        scaleZ = "0.2",
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
        t_model_name = "Arbol02.mesh",
        t_entity_name= "a21",
        t_node_x="0",
        t_node_y="0",
        t_node_z="0",
        t_mat_name= ""
    }
}
A22 = {
    Name={
        t_name="a22"
    },
    Transform = {
        positionX = "-32000.0",
        positionY = "390.0",
        positionZ = "5000.0",
        scaleX = "0.2",
        scaleY = "0.2",
        scaleZ = "0.2",
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
        t_model_name = "Arbol02.mesh",
        t_entity_name= "a22",
        t_node_x="0",
        t_node_y="0",
        t_node_z="0",
        t_mat_name= ""
    }
}
A23 = {
    Name={
        t_name="a23"
    },
    Transform = {
        positionX = "-32000.0",
        positionY = "390.0",
        positionZ = "-5000.0",
        scaleX = "0.2",
        scaleY = "0.2",
        scaleZ = "0.2",
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
        t_model_name = "Arbol02.mesh",
        t_entity_name= "a23",
        t_node_x="0",
        t_node_y="0",
        t_node_z="0",
        t_mat_name= ""
    }
}
A28 = {
    Name={
        t_name="a28"
    },
    Transform = {
        positionX = "-28000.0",
        positionY = "390.0",
        positionZ = "5000.0",
        scaleX = "0.2",
        scaleY = "0.2",
        scaleZ = "0.2",
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
        t_model_name = "Arbol02.mesh",
        t_entity_name= "a28",
        t_node_x="0",
        t_node_y="0",
        t_node_z="0",
        t_mat_name= ""
    }
}
A29 = {
    Name={
        t_name="a29"
    },
    Transform = {
        positionX = "-28000.0",
        positionY = "390.0",
        positionZ = "-10000.0",
        scaleX = "0.2",
        scaleY = "0.2",
        scaleZ = "0.2",
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
        t_model_name = "Arbol02.mesh",
        t_entity_name= "a29",
        t_node_x="0",
        t_node_y="0",
        t_node_z="0",
        t_mat_name= ""
    }
}
A212 = {
    Name={
        t_name="a212"
    },
    Transform = {
        positionX = "-24000.0",
        positionY = "390.0",
        positionZ = "0.0",
        scaleX = "0.2",
        scaleY = "0.2",
        scaleZ = "0.2",
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
        t_model_name = "Arbol02.mesh",
        t_entity_name= "a212",
        t_node_x="0",
        t_node_y="0",
        t_node_z="0",
        t_mat_name= ""
    }
}
A214 = {
    Name={
        t_name="a214"
    },
    Transform = {
        positionX = "-24000.0",
        positionY = "390.0",
        positionZ = "-5000.0",
        scaleX = "0.2",
        scaleY = "0.2",
        scaleZ = "0.2",
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
        t_model_name = "Arbol02.mesh",
        t_entity_name= "a214",
        t_node_x="0",
        t_node_y="0",
        t_node_z="0",
        t_mat_name= ""
    }
}
A215 = {
    Name={
        t_name="a215"
    },
    Transform = {
        positionX = "-24000.0",
        positionY = "390.0",
        positionZ = "-10000.0",
        scaleX = "0.2",
        scaleY = "0.2",
        scaleZ = "0.2",
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
        t_model_name = "Arbol02.mesh",
        t_entity_name= "a215",
        t_node_x="0",
        t_node_y="0",
        t_node_z="0",
        t_mat_name= ""
    }
}
A216 = {
    Name={
        t_name="a216"
    },
    Transform = {
        positionX = "-24000.0",
        positionY = "390.0",
        positionZ = "-15000.0",
        scaleX = "0.2",
        scaleY = "0.2",
        scaleZ = "0.2",
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
        t_model_name = "Arbol02.mesh",
        t_entity_name= "a216",
        t_node_x="0",
        t_node_y="0",
        t_node_z="0",
        t_mat_name= ""
    }
}
A218 = {
    Name={
        t_name="a218"
    },
    Transform = {
        positionX = "-24000.0",
        positionY = "390.0",
        positionZ = "10000.0",
        scaleX = "0.2",
        scaleY = "0.2",
        scaleZ = "0.2",
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
        t_model_name = "Arbol02.mesh",
        t_entity_name= "a218",
        t_node_x="0",
        t_node_y="0",
        t_node_z="0",
        t_mat_name= ""
    }
}
A219 = {
    Name={
        t_name="a219"
    },
    Transform = {
        positionX = "-20000.0",
        positionY = "390.0",
        positionZ = "0.0",
        scaleX = "0.2",
        scaleY = "0.2",
        scaleZ = "0.2",
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
        t_model_name = "Arbol02.mesh",
        t_entity_name= "a219",
        t_node_x="0",
        t_node_y="0",
        t_node_z="0",
        t_mat_name= ""
    }
}
A220 = {
    Name={
        t_name="a220"
    },
    Transform = {
        positionX = "-20000.0",
        positionY = "390.0",
        positionZ = "5000.0",
        scaleX = "0.2",
        scaleY = "0.2",
        scaleZ = "0.2",
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
        t_model_name = "Arbol02.mesh",
        t_entity_name= "a220",
        t_node_x="0",
        t_node_y="0",
        t_node_z="0",
        t_mat_name= ""
    }
}
A221 = {
    Name={
        t_name="a221"
    },
    Transform = {
        positionX = "-20000.0",
        positionY = "390.0",
        positionZ = "-5000.0",
        scaleX = "0.2",
        scaleY = "0.2",
        scaleZ = "0.2",
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
        t_model_name = "Arbol02.mesh",
        t_entity_name= "a221",
        t_node_x="0",
        t_node_y="0",
        t_node_z="0",
        t_mat_name= ""
    }
}
A223 = {
    Name={
        t_name="a223"
    },
    Transform = {
        positionX = "-20000.0",
        positionY = "390.0",
        positionZ = "-15000.0",
        scaleX = "0.2",
        scaleY = "0.2",
        scaleZ = "0.2",
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
        t_model_name = "Arbol02.mesh",
        t_entity_name= "a223",
        t_node_x="0",
        t_node_y="0",
        t_node_z="0",
        t_mat_name= ""
    }
}
A224 = {
    Name={
        t_name="a224"
    },
    Transform = {
        positionX = "-20000.0",
        positionY = "390.0",
        positionZ = "-19000.0",
        scaleX = "0.2",
        scaleY = "0.2",
        scaleZ = "0.2",
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
        t_model_name = "Arbol02.mesh",
        t_entity_name= "a224",
        t_node_x="0",
        t_node_y="0",
        t_node_z="0",
        t_mat_name= ""
    }
}
A225 = {
    Name={
        t_name="a225"
    },
    Transform = {
        positionX = "-20000.0",
        positionY = "390.0",
        positionZ = "10000.0",
        scaleX = "0.2",
        scaleY = "0.2",
        scaleZ = "0.2",
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
        t_model_name = "Arbol02.mesh",
        t_entity_name= "a225",
        t_node_x="0",
        t_node_y="0",
        t_node_z="0",
        t_mat_name= ""
    }
}
A229 = {
    Name={
        t_name="a229"
    },
    Transform = {
        positionX = "-16000.0",
        positionY = "390.0",
        positionZ = "-5000.0",
        scaleX = "0.2",
        scaleY = "0.2",
        scaleZ = "0.2",
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
        t_model_name = "Arbol02.mesh",
        t_entity_name= "a229",
        t_node_x="0",
        t_node_y="0",
        t_node_z="0",
        t_mat_name= ""
    }
}
A230 = {
    Name={
        t_name="a230"
    },
    Transform = {
        positionX = "-16000.0",
        positionY = "390.0",
        positionZ = "-10000.0",
        scaleX = "0.2",
        scaleY = "0.2",
        scaleZ = "0.2",
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
        t_model_name = "Arbol02.mesh",
        t_entity_name= "a230",
        t_node_x="0",
        t_node_y="0",
        t_node_z="0",
        t_mat_name= ""
    }
}
A232 = {
    Name={
        t_name="a232"
    },
    Transform = {
        positionX = "-16000.0",
        positionY = "390.0",
        positionZ = "-19000.0",
        scaleX = "0.2",
        scaleY = "0.2",
        scaleZ = "0.2",
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
        t_model_name = "Arbol02.mesh",
        t_entity_name= "a232",
        t_node_x="0",
        t_node_y="0",
        t_node_z="0",
        t_mat_name= ""
    }
}
A233 = {
    Name={
        t_name="a233"
    },
    Transform = {
        positionX = "-16000.0",
        positionY = "390.0",
        positionZ = "10000.0",
        scaleX = "0.2",
        scaleY = "0.2",
        scaleZ = "0.2",
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
        t_model_name = "Arbol02.mesh",
        t_entity_name= "a233",
        t_node_x="0",
        t_node_y="0",
        t_node_z="0",
        t_mat_name= ""
    }
}
A235 = {
    Name={
        t_name="a235"
    },
    Transform = {
        positionX = "-12000.0",
        positionY = "390.0",
        positionZ = "0.0",
        scaleX = "0.2",
        scaleY = "0.2",
        scaleZ = "0.2",
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
        t_model_name = "Arbol02.mesh",
        t_entity_name= "a235",
        t_node_x="0",
        t_node_y="0",
        t_node_z="0",
        t_mat_name= ""
    }
}
A236 = {
    Name={
        t_name="a236"
    },
    Transform = {
        positionX = "-12000.0",
        positionY = "390.0",
        positionZ = "5000.0",
        scaleX = "0.2",
        scaleY = "0.2",
        scaleZ = "0.2",
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
        t_model_name = "Arbol02.mesh",
        t_entity_name= "a236",
        t_node_x="0",
        t_node_y="0",
        t_node_z="0",
        t_mat_name= ""
    }
}
A238 = {
    Name={
        t_name="a238"
    },
    Transform = {
        positionX = "-12000.0",
        positionY = "390.0",
        positionZ = "-10000.0",
        scaleX = "0.2",
        scaleY = "0.2",
        scaleZ = "0.2",
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
        t_model_name = "Arbol02.mesh",
        t_entity_name= "a238",
        t_node_x="0",
        t_node_y="0",
        t_node_z="0",
        t_mat_name= ""
    }
}
A239 = {
    Name={
        t_name="a239"
    },
    Transform = {
        positionX = "-12000.0",
        positionY = "390.0",
        positionZ = "-15000.0",
        scaleX = "0.2",
        scaleY = "0.2",
        scaleZ = "0.2",
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
        t_model_name = "Arbol02.mesh",
        t_entity_name= "a239",
        t_node_x="0",
        t_node_y="0",
        t_node_z="0",
        t_mat_name= ""
    }
}
A240 = {
    Name={
        t_name="a240"
    },
    Transform = {
        positionX = "-12000.0",
        positionY = "390.0",
        positionZ = "-19000.0",
        scaleX = "0.2",
        scaleY = "0.2",
        scaleZ = "0.2",
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
        t_model_name = "Arbol02.mesh",
        t_entity_name= "a240",
        t_node_x="0",
        t_node_y="0",
        t_node_z="0",
        t_mat_name= ""
    }
}
A242 = {
    Name={
        t_name="a242"
    },
    Transform = {
        positionX = "-12000.0",
        positionY = "390.0",
        positionZ = "-23000.0",
        scaleX = "0.2",
        scaleY = "0.2",
        scaleZ = "0.2",
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
        t_model_name = "Arbol02.mesh",
        t_entity_name= "a242",
        t_node_x="0",
        t_node_y="0",
        t_node_z="0",
        t_mat_name= ""
    }
}
A243 = {
    Name={
        t_name="a243"
    },
    Transform = {
        positionX = "-8000.0",
        positionY = "390.0",
        positionZ = "0.0",
        scaleX = "0.2",
        scaleY = "0.2",
        scaleZ = "0.2",
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
        t_model_name = "Arbol02.mesh",
        t_entity_name= "a243",
        t_node_x="0",
        t_node_y="0",
        t_node_z="0",
        t_mat_name= ""
    }
}
A244 = {
    Name={
        t_name="a244"
    },
    Transform = {
        positionX = "-8000.0",
        positionY = "390.0",
        positionZ = "5000.0",
        scaleX = "0.2",
        scaleY = "0.2",
        scaleZ = "0.2",
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
        t_model_name = "Arbol02.mesh",
        t_entity_name= "a244",
        t_node_x="0",
        t_node_y="0",
        t_node_z="0",
        t_mat_name= ""
    }
}
A245 = {
    Name={
        t_name="a245"
    },
    Transform = {
        positionX = "-8000.0",
        positionY = "390.0",
        positionZ = "-5000.0",
        scaleX = "0.2",
        scaleY = "0.2",
        scaleZ = "0.2",
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
        t_model_name = "Arbol02.mesh",
        t_entity_name= "a245",
        t_node_x="0",
        t_node_y="0",
        t_node_z="0",
        t_mat_name= ""
    }
}
A246 = {
    Name={
        t_name="a246"
    },
    Transform = {
        positionX = "-8000.0",
        positionY = "390.0",
        positionZ = "-10000.0",
        scaleX = "0.2",
        scaleY = "0.2",
        scaleZ = "0.2",
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
        t_model_name = "Arbol02.mesh",
        t_entity_name= "a246",
        t_node_x="0",
        t_node_y="0",
        t_node_z="0",
        t_mat_name= ""
    }
}
A248 = {
    Name={
        t_name="a248"
    },
    Transform = {
        positionX = "0.0",
        positionY = "390.0",
        positionZ = "0.0",
        scaleX = "0.2",
        scaleY = "0.2",
        scaleZ = "0.2",
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
        t_model_name = "Arbol02.mesh",
        t_entity_name= "a248",
        t_node_x="0",
        t_node_y="0",
        t_node_z="0",
        t_mat_name= ""
    }
}
A249 = {
    Name={
        t_name="a249"
    },
    Transform = {
        positionX = "0.0",
        positionY = "390.0",
        positionZ = "5000.0",
        scaleX = "0.2",
        scaleY = "0.2",
        scaleZ = "0.2",
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
        t_model_name = "Arbol02.mesh",
        t_entity_name= "a249",
        t_node_x="0",
        t_node_y="0",
        t_node_z="0",
        t_mat_name= ""
    }
}
A250 = {
    Name={
        t_name="a250"
    },
    Transform = {
        positionX = "0.0",
        positionY = "390.0",
        positionZ = "-5000.0",
        scaleX = "0.2",
        scaleY = "0.2",
        scaleZ = "0.2",
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
        t_model_name = "Arbol02.mesh",
        t_entity_name= "a250",
        t_node_x="0",
        t_node_y="0",
        t_node_z="0",
        t_mat_name= ""
    }
}
A251 = {
    Name={
        t_name="a251"
    },
    Transform = {
        positionX = "0.0",
        positionY = "390.0",
        positionZ = "-10000.0",
        scaleX = "0.2",
        scaleY = "0.2",
        scaleZ = "0.2",
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
        t_model_name = "Arbol02.mesh",
        t_entity_name= "a251",
        t_node_x="0",
        t_node_y="0",
        t_node_z="0",
        t_mat_name= ""
    }
}
A253 = {
    Name={
        t_name="a253"
    },
    Transform = {
        positionX = "0.0",
        positionY = "390.0",
        positionZ = "-19000.0",
        scaleX = "0.2",
        scaleY = "0.2",
        scaleZ = "0.2",
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
        t_model_name = "Arbol02.mesh",
        t_entity_name= "a253",
        t_node_x="0",
        t_node_y="0",
        t_node_z="0",
        t_mat_name= ""
    }
}
A255 = {
    Name={
        t_name="a255"
    },
    Transform = {
        positionX = "0.0",
        positionY = "390.0",
        positionZ = "-23000.0",
        scaleX = "0.2",
        scaleY = "0.2",
        scaleZ = "0.2",
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
        t_model_name = "Arbol02.mesh",
        t_entity_name= "a255",
        t_node_x="0",
        t_node_y="0",
        t_node_z="0",
        t_mat_name= ""
    }
}
A256 = {
    Name={
        t_name="a256"
    },
    Transform = {
        positionX = "4000.0",
        positionY = "390.0",
        positionZ = "0.0",
        scaleX = "0.2",
        scaleY = "0.2",
        scaleZ = "0.2",
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
        t_model_name = "Arbol02.mesh",
        t_entity_name= "a256",
        t_node_x="0",
        t_node_y="0",
        t_node_z="0",
        t_mat_name= ""
    }
}
A258 = {
    Name={
        t_name="a258"
    },
    Transform = {
        positionX = "4000.0",
        positionY = "390.0",
        positionZ = "-5000.0",
        scaleX = "0.2",
        scaleY = "0.2",
        scaleZ = "0.2",
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
        t_model_name = "Arbol02.mesh",
        t_entity_name= "a258",
        t_node_x="0",
        t_node_y="0",
        t_node_z="0",
        t_mat_name= ""
    }
}
A264 = {
    Name={
        t_name="a264"
    },
    Transform = {
        positionX = "4000.0",
        positionY = "390.0",
        positionZ = "10000.0",
        scaleX = "0.2",
        scaleY = "0.2",
        scaleZ = "0.2",
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
        t_model_name = "Arbol02.mesh",
        t_entity_name= "a264",
        t_node_x="0",
        t_node_y="0",
        t_node_z="0",
        t_mat_name= ""
    }
}
A266 = {
    Name={
        t_name="a266"
    },
    Transform = {
        positionX = "8000.0",
        positionY = "390.0",
        positionZ = "10000.0",
        scaleX = "0.2",
        scaleY = "0.2",
        scaleZ = "0.2",
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
        t_model_name = "Arbol02.mesh",
        t_entity_name= "a266",
        t_node_x="0",
        t_node_y="0",
        t_node_z="0",
        t_mat_name= ""
    }
}
A267 = {
    Name={
        t_name="a267"
    },
    Transform = {
        positionX = "8000.0",
        positionY = "390.0",
        positionZ = "-5000.0",
        scaleX = "0.2",
        scaleY = "0.2",
        scaleZ = "0.2",
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
        t_model_name = "Arbol02.mesh",
        t_entity_name= "a267",
        t_node_x="0",
        t_node_y="0",
        t_node_z="0",
        t_mat_name= ""
    }
}
A268 = {
    Name={
        t_name="a268"
    },
    Transform = {
        positionX = "8000.0",
        positionY = "390.0",
        positionZ = "-10000.0",
        scaleX = "0.2",
        scaleY = "0.2",
        scaleZ = "0.2",
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
        t_model_name = "Arbol02.mesh",
        t_entity_name= "a268",
        t_node_x="0",
        t_node_y="0",
        t_node_z="0",
        t_mat_name= ""
    }
}
A273 = {
    Name={
        t_name="a273"
    },
    Transform = {
        positionX = "12000.0",
        positionY = "390.0",
        positionZ = "0.0",
        scaleX = "0.2",
        scaleY = "0.2",
        scaleZ = "0.2",
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
        t_model_name = "Arbol02.mesh",
        t_entity_name= "a273",
        t_node_x="0",
        t_node_y="0",
        t_node_z="0",
        t_mat_name= ""
    }
}
A275 = {
    Name={
        t_name="a275"
    },
    Transform = {
        positionX = "12000.0",
        positionY = "390.0",
        positionZ = "-5000.0",
        scaleX = "0.2",
        scaleY = "0.2",
        scaleZ = "0.2",
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
        t_model_name = "Arbol02.mesh",
        t_entity_name= "a275",
        t_node_x="0",
        t_node_y="0",
        t_node_z="0",
        t_mat_name= ""
    }
}
A280 = {
    Name={
        t_name="a280"
    },
    Transform = {
        positionX = "12000.0",
        positionY = "390.0",
        positionZ = "20000.0",
        scaleX = "0.2",
        scaleY = "0.2",
        scaleZ = "0.2",
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
        t_model_name = "Arbol02.mesh",
        t_entity_name= "a280",
        t_node_x="0",
        t_node_y="0",
        t_node_z="0",
        t_mat_name= ""
    }
}
A281 = {
    Name={
        t_name="a281"
    },
    Transform = {
        positionX = "12000.0",
        positionY = "390.0",
        positionZ = "10000.0",
        scaleX = "0.2",
        scaleY = "0.2",
        scaleZ = "0.2",
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
        t_model_name = "Arbol02.mesh",
        t_entity_name= "a281",
        t_node_x="0",
        t_node_y="0",
        t_node_z="0",
        t_mat_name= ""
    }
}
A283 = {
    Name={
        t_name="a283"
    },
    Transform = {
        positionX = "16000.0",
        positionY = "390.0",
        positionZ = "5000.0",
        scaleX = "0.2",
        scaleY = "0.2",
        scaleZ = "0.2",
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
        t_model_name = "Arbol02.mesh",
        t_entity_name= "a283",
        t_node_x="0",
        t_node_y="0",
        t_node_z="0",
        t_mat_name= ""
    }
}
A284 = {
    Name={
        t_name="a284"
    },
    Transform = {
        positionX = "16000.0",
        positionY = "390.0",
        positionZ = "-5000.0",
        scaleX = "0.2",
        scaleY = "0.2",
        scaleZ = "0.2",
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
        t_model_name = "Arbol02.mesh",
        t_entity_name= "a284",
        t_node_x="0",
        t_node_y="0",
        t_node_z="0",
        t_mat_name= ""
    }
}
A287 = {
    Name={
        t_name="a287"
    },
    Transform = {
        positionX = "16000.0",
        positionY = "390.0",
        positionZ = "15000.0",
        scaleX = "0.2",
        scaleY = "0.2",
        scaleZ = "0.2",
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
        t_model_name = "Arbol02.mesh",
        t_entity_name= "a287",
        t_node_x="0",
        t_node_y="0",
        t_node_z="0",
        t_mat_name= ""
    }
}
A288 = {
    Name={
        t_name="a288"
    },
    Transform = {
        positionX = "16000.0",
        positionY = "390.0",
        positionZ = "25000.0",
        scaleX = "0.2",
        scaleY = "0.2",
        scaleZ = "0.2",
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
        t_model_name = "Arbol02.mesh",
        t_entity_name= "a288",
        t_node_x="0",
        t_node_y="0",
        t_node_z="0",
        t_mat_name= ""
    }
}
A290 = {
    Name={
        t_name="a290"
    },
    Transform = {
        positionX = "20000.0",
        positionY = "390.0",
        positionZ = "0.0",
        scaleX = "0.2",
        scaleY = "0.2",
        scaleZ = "0.2",
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
        t_model_name = "Arbol02.mesh",
        t_entity_name= "a290",
        t_node_x="0",
        t_node_y="0",
        t_node_z="0",
        t_mat_name= ""
    }
}
A291 = {
    Name={
        t_name="a291"
    },
    Transform = {
        positionX = "20000.0",
        positionY = "390.0",
        positionZ = "5000.0",
        scaleX = "0.2",
        scaleY = "0.2",
        scaleZ = "0.2",
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
        t_model_name = "Arbol02.mesh",
        t_entity_name= "a291",
        t_node_x="0",
        t_node_y="0",
        t_node_z="0",
        t_mat_name= ""
    }
}
A292 = {
    Name={
        t_name="a292"
    },
    Transform = {
        positionX = "20000.0",
        positionY = "390.0",
        positionZ = "-5000.0",
        scaleX = "0.2",
        scaleY = "0.2",
        scaleZ = "0.2",
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
        t_model_name = "Arbol02.mesh",
        t_entity_name= "a292",
        t_node_x="0",
        t_node_y="0",
        t_node_z="0",
        t_mat_name= ""
    }
}
A293 = {
    Name={
        t_name="a293"
    },
    Transform = {
        positionX = "20000.0",
        positionY = "390.0",
        positionZ = "-10000.0",
        scaleX = "0.2",
        scaleY = "0.2",
        scaleZ = "0.2",
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
        t_model_name = "Arbol02.mesh",
        t_entity_name= "a293",
        t_node_x="0",
        t_node_y="0",
        t_node_z="0",
        t_mat_name= ""
    }
}
A294 = {
    Name={
        t_name="a294"
    },
    Transform = {
        positionX = "20000.0",
        positionY = "390.0",
        positionZ = "10000.0",
        scaleX = "0.2",
        scaleY = "0.2",
        scaleZ = "0.2",
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
        t_model_name = "Arbol02.mesh",
        t_entity_name= "a294",
        t_node_x="0",
        t_node_y="0",
        t_node_z="0",
        t_mat_name= ""
    }
}
A297 = {
    Name={
        t_name="a297"
    },
    Transform = {
        positionX = "20000.0",
        positionY = "390.0",
        positionZ = "20000.0",
        scaleX = "0.2",
        scaleY = "0.2",
        scaleZ = "0.2",
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
        t_model_name = "Arbol02.mesh",
        t_entity_name= "a297",
        t_node_x="0",
        t_node_y="0",
        t_node_z="0",
        t_mat_name= ""
    }
}
A298 = {
    Name={
        t_name="a298"
    },
    Transform = {
        positionX = "24000.0",
        positionY = "390.0",
        positionZ = "0.0",
        scaleX = "0.2",
        scaleY = "0.2",
        scaleZ = "0.2",
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
        t_model_name = "Arbol02.mesh",
        t_entity_name= "a298",
        t_node_x="0",
        t_node_y="0",
        t_node_z="0",
        t_mat_name= ""
    }
}
A2100 = {
    Name={
        t_name="a2100"
    },
    Transform = {
        positionX = "24000.0",
        positionY = "390.0",
        positionZ = "-5000.0",
        scaleX = "0.2",
        scaleY = "0.2",
        scaleZ = "0.2",
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
        t_model_name = "Arbol02.mesh",
        t_entity_name= "a2100",
        t_node_x="0",
        t_node_y="0",
        t_node_z="0",
        t_mat_name= ""
    }
}
A2102 = {
    Name={
        t_name="a102"
    },
    Transform = {
        positionX = "24000.0",
        positionY = "390.0",
        positionZ = "10000.0",
        scaleX = "0.2",
        scaleY = "0.2",
        scaleZ = "0.2",
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
        t_model_name = "Arbol02.mesh",
        t_entity_name= "a102",
        t_node_x="0",
        t_node_y="0",
        t_node_z="0",
        t_mat_name= ""
    }
}
A2105 = {
    Name={
        t_name="a2105"
    },
    Transform = {
        positionX = "24000.0",
        positionY = "390.0",
        positionZ = "20000.0",
        scaleX = "0.2",
        scaleY = "0.2",
        scaleZ = "0.2",
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
        t_model_name = "Arbol02.mesh",
        t_entity_name= "a2105",
        t_node_x="0",
        t_node_y="0",
        t_node_z="0",
        t_mat_name= ""
    }
}
A2107 = {
    Name={
        t_name="a2107"
    },
    Transform = {
        positionX = "28000.0",
        positionY = "390.0",
        positionZ = "5000.0",
        scaleX = "0.2",
        scaleY = "0.2",
        scaleZ = "0.2",
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
        t_model_name = "Arbol02.mesh",
        t_entity_name= "a2107",
        t_node_x="0",
        t_node_y="0",
        t_node_z="0",
        t_mat_name= ""
    }
}
A2108 = {
    Name={
        t_name="a2108"
    },
    Transform = {
        positionX = "28000.0",
        positionY = "390.0",
        positionZ = "-5000.0",
        scaleX = "0.2",
        scaleY = "0.2",
        scaleZ = "0.2",
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
        t_model_name = "Arbol02.mesh",
        t_entity_name= "a2108",
        t_node_x="0",
        t_node_y="0",
        t_node_z="0",
        t_mat_name= ""
    }
}
A2109 = {
    Name={
        t_name="a2109"
    },
    Transform = {
        positionX = "28000.0",
        positionY = "390.0",
        positionZ = "-10000.0",
        scaleX = "0.2",
        scaleY = "0.2",
        scaleZ = "0.2",
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
        t_model_name = "Arbol02.mesh",
        t_entity_name= "a2109",
        t_node_x="0",
        t_node_y="0",
        t_node_z="0",
        t_mat_name= ""
    }
}
A62 = {
    Name={
        t_name="a62"
    },
    Transform = {
        positionX = "-30000.0",
        positionY = "390.0",
        positionZ = "7500.0",
        scaleX = "0.2",
        scaleY = "0.2",
        scaleZ = "0.2",
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
        t_model_name = "Arbol06.mesh",
        t_entity_name= "a62",
        t_node_x="0",
        t_node_y="0",
        t_node_z="0",
        t_mat_name= ""
    }
}
A63 = {
    Name={
        t_name="a63"
    },
    Transform = {
        positionX = "-30000.0",
        positionY = "390.0",
        positionZ = "-2500.0",
        scaleX = "0.2",
        scaleY = "0.2",
        scaleZ = "0.2",
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
        t_model_name = "Arbol06.mesh",
        t_entity_name= "a63",
        t_node_x="0",
        t_node_y="0",
        t_node_z="0",
        t_mat_name= ""
    }
}
A64 = {
    Name={
        t_name="a64"
    },
    Transform = {
        positionX = "-30000.0",
        positionY = "390.0",
        positionZ = "-7500.0",
        scaleX = "0.2",
        scaleY = "0.2",
        scaleZ = "0.2",
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
        t_model_name = "Arbol06.mesh",
        t_entity_name= "a64",
        t_node_x="0",
        t_node_y="0",
        t_node_z="0",
        t_mat_name= ""
    }
}
A66 = {
    Name={
        t_name="a66"
    },
    Transform = {
        positionX = "-30000.0",
        positionY = "390.0",
        positionZ = "-17500.0",
        scaleX = "0.2",
        scaleY = "0.2",
        scaleZ = "0.2",
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
        t_model_name = "Arbol06.mesh",
        t_entity_name= "a66",
        t_node_x="0",
        t_node_y="0",
        t_node_z="0",
        t_mat_name= ""
    }
}
A67 = {
    Name={
        t_name="a67"
    },
    Transform = {
        positionX = "-26000.0",
        positionY = "390.0",
        positionZ = "2500.0",
        scaleX = "0.2",
        scaleY = "0.2",
        scaleZ = "0.2",
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
        t_model_name = "Arbol06.mesh",
        t_entity_name= "a67",
        t_node_x="0",
        t_node_y="0",
        t_node_z="0",
        t_mat_name= ""
    }
}
A69 = {
    Name={
        t_name="a69"
    },
    Transform = {
        positionX = "-26000.0",
        positionY = "390.0",
        positionZ = "-2500.0",
        scaleX = "0.2",
        scaleY = "0.2",
        scaleZ = "0.2",
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
        t_model_name = "Arbol06.mesh",
        t_entity_name= "a69",
        t_node_x="0",
        t_node_y="0",
        t_node_z="0",
        t_mat_name= ""
    }
}
A610 = {
    Name={
        t_name="a610"
    },
    Transform = {
        positionX = "-26000.0",
        positionY = "390.0",
        positionZ = "-7500.0",
        scaleX = "0.2",
        scaleY = "0.2",
        scaleZ = "0.2",
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
        t_model_name = "Arbol06.mesh",
        t_entity_name= "a610",
        t_node_x="0",
        t_node_y="0",
        t_node_z="0",
        t_mat_name= ""
    }
}
A611 = {
    Name={
        t_name="a611"
    },
    Transform = {
        positionX = "-26000.0",
        positionY = "390.0",
        positionZ = "-12500.0",
        scaleX = "0.2",
        scaleY = "0.2",
        scaleZ = "0.2",
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
        t_model_name = "Arbol06.mesh",
        t_entity_name= "a611",
        t_node_x="0",
        t_node_y="0",
        t_node_z="0",
        t_mat_name= ""
    }
}
A613 = {
    Name={
        t_name="a613"
    },
    Transform = {
        positionX = "-22000.0",
        positionY = "390.0",
        positionZ = "2500.0",
        scaleX = "0.2",
        scaleY = "0.2",
        scaleZ = "0.2",
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
        t_model_name = "Arbol06.mesh",
        t_entity_name= "a613",
        t_node_x="0",
        t_node_y="0",
        t_node_z="0",
        t_mat_name= ""
    }
}
A615 = {
    Name={
        t_name="a615"
    },
    Transform = {
        positionX = "-22000.0",
        positionY = "390.0",
        positionZ = "-2500.0",
        scaleX = "0.2",
        scaleY = "0.2",
        scaleZ = "0.2",
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
        t_model_name = "Arbol06.mesh",
        t_entity_name= "a615",
        t_node_x="0",
        t_node_y="0",
        t_node_z="0",
        t_mat_name= ""
    }
}
A616 = {
    Name={
        t_name="a616"
    },
    Transform = {
        positionX = "-22000.0",
        positionY = "390.0",
        positionZ = "-7500.0",
        scaleX = "0.2",
        scaleY = "0.2",
        scaleZ = "0.2",
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
        t_model_name = "Arbol06.mesh",
        t_entity_name= "a616",
        t_node_x="0",
        t_node_y="0",
        t_node_z="0",
        t_mat_name= ""
    }
}
A617 = {
    Name={
        t_name="a617"
    },
    Transform = {
        positionX = "-22000.0",
        positionY = "390.0",
        positionZ = "-12500.0",
        scaleX = "0.2",
        scaleY = "0.2",
        scaleZ = "0.2",
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
        t_model_name = "Arbol06.mesh",
        t_entity_name= "a617",
        t_node_x="0",
        t_node_y="0",
        t_node_z="0",
        t_mat_name= ""
    }
}
A619 = {
    Name={
        t_name="a619"
    },
    Transform = {
        positionX = "-22000.0",
        positionY = "390.0",
        positionZ = "12500.0",
        scaleX = "0.2",
        scaleY = "0.2",
        scaleZ = "0.2",
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
        t_model_name = "Arbol06.mesh",
        t_entity_name= "a619",
        t_node_x="0",
        t_node_y="0",
        t_node_z="0",
        t_mat_name= ""
    }
}
A620 = {
    Name={
        t_name="a620"
    },
    Transform = {
        positionX = "-22000.0",
        positionY = "390.0",
        positionZ = "-22500.0",
        scaleX = "0.2",
        scaleY = "0.2",
        scaleZ = "0.2",
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
        t_model_name = "Arbol06.mesh",
        t_entity_name= "a620",
        t_node_x="0",
        t_node_y="0",
        t_node_z="0",
        t_mat_name= ""
    }
}
A622 = {
    Name={
        t_name="a622"
    },
    Transform = {
        positionX = "-18000.0",
        positionY = "390.0",
        positionZ = "7500.0",
        scaleX = "0.2",
        scaleY = "0.2",
        scaleZ = "0.2",
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
        t_model_name = "Arbol06.mesh",
        t_entity_name= "a622",
        t_node_x="0",
        t_node_y="0",
        t_node_z="0",
        t_mat_name= ""
    }
}
A623 = {
    Name={
        t_name="a623"
    },
    Transform = {
        positionX = "-18000.0",
        positionY = "390.0",
        positionZ = "-2500.0",
        scaleX = "0.2",
        scaleY = "0.2",
        scaleZ = "0.2",
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
        t_model_name = "Arbol06.mesh",
        t_entity_name= "a623",
        t_node_x="0",
        t_node_y="0",
        t_node_z="0",
        t_mat_name= ""
    }
}
A624 = {
    Name={
        t_name="a624"
    },
    Transform = {
        positionX = "-18000.0",
        positionY = "390.0",
        positionZ = "-7500.0",
        scaleX = "0.2",
        scaleY = "0.2",
        scaleZ = "0.2",
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
        t_model_name = "Arbol06.mesh",
        t_entity_name= "a624",
        t_node_x="0",
        t_node_y="0",
        t_node_z="0",
        t_mat_name= ""
    }
}
A625 = {
    Name={
        t_name="a625"
    },
    Transform = {
        positionX = "-18000.0",
        positionY = "390.0",
        positionZ = "-12500.0",
        scaleX = "0.2",
        scaleY = "0.2",
        scaleZ = "0.2",
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
        t_model_name = "Arbol06.mesh",
        t_entity_name= "a625",
        t_node_x="0",
        t_node_y="0",
        t_node_z="0",
        t_mat_name= ""
    }
}
A626 = {
    Name={
        t_name="a626"
    },
    Transform = {
        positionX = "-18000.0",
        positionY = "390.0",
        positionZ = "-17500.0",
        scaleX = "0.2",
        scaleY = "0.2",
        scaleZ = "0.2",
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
        t_model_name = "Arbol06.mesh",
        t_entity_name= "a626",
        t_node_x="0",
        t_node_y="0",
        t_node_z="0",
        t_mat_name= ""
    }
}
A629 = {
    Name={
        t_name="a629"
    },
    Transform = {
        positionX = "-14000.0",
        positionY = "390.0",
        positionZ = "2500.0",
        scaleX = "0.2",
        scaleY = "0.2",
        scaleZ = "0.2",
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
        t_model_name = "Arbol06.mesh",
        t_entity_name= "a629",
        t_node_x="0",
        t_node_y="0",
        t_node_z="0",
        t_mat_name= ""
    }
}
A631 = {
    Name={
        t_name="a631"
    },
    Transform = {
        positionX = "-14000.0",
        positionY = "390.0",
        positionZ = "-2500.0",
        scaleX = "0.2",
        scaleY = "0.2",
        scaleZ = "0.2",
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
        t_model_name = "Arbol06.mesh",
        t_entity_name= "a631",
        t_node_x="0",
        t_node_y="0",
        t_node_z="0",
        t_mat_name= ""
    }
}
A632 = {
    Name={
        t_name="a632"
    },
    Transform = {
        positionX = "-14000.0",
        positionY = "390.0",
        positionZ = "-7500.0",
        scaleX = "0.2",
        scaleY = "0.2",
        scaleZ = "0.2",
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
        t_model_name = "Arbol06.mesh",
        t_entity_name= "a632",
        t_node_x="0",
        t_node_y="0",
        t_node_z="0",
        t_mat_name= ""
    }
}
A634 = {
    Name={
        t_name="a634"
    },
    Transform = {
        positionX = "-14000.0",
        positionY = "390.0",
        positionZ = "-17500.0",
        scaleX = "0.2",
        scaleY = "0.2",
        scaleZ = "0.2",
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
        t_model_name = "Arbol06.mesh",
        t_entity_name= "a634",
        t_node_x="0",
        t_node_y="0",
        t_node_z="0",
        t_mat_name= ""
    }
}
A637 = {
    Name={
        t_name="a637"
    },
    Transform = {
        positionX = "-10000.0",
        positionY = "390.0",
        positionZ = "7500.0",
        scaleX = "0.2",
        scaleY = "0.2",
        scaleZ = "0.2",
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
        t_model_name = "Arbol06.mesh",
        t_entity_name= "a637",
        t_node_x="0",
        t_node_y="0",
        t_node_z="0",
        t_mat_name= ""
    }
}
A640 = {
    Name={
        t_name="a640"
    },
    Transform = {
        positionX = "-10000.0",
        positionY = "390.0",
        positionZ = "-12500.0",
        scaleX = "0.2",
        scaleY = "0.2",
        scaleZ = "0.2",
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
        t_model_name = "Arbol06.mesh",
        t_entity_name= "a640",
        t_node_x="0",
        t_node_y="0",
        t_node_z="0",
        t_mat_name= ""
    }
}
A642 = {
    Name={
        t_name="a642"
    },
    Transform = {
        positionX = "-10000.0",
        positionY = "390.0",
        positionZ = "-22500.0",
        scaleX = "0.2",
        scaleY = "0.2",
        scaleZ = "0.2",
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
        t_model_name = "Arbol06.mesh",
        t_entity_name= "a642",
        t_node_x="0",
        t_node_y="0",
        t_node_z="0",
        t_mat_name= ""
    }
}
A643 = {
    Name={
        t_name="a643"
    },
    Transform = {
        positionX = "-6000.0",
        positionY = "390.0",
        positionZ = "2500.0",
        scaleX = "0.2",
        scaleY = "0.2",
        scaleZ = "0.2",
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
        t_model_name = "Arbol06.mesh",
        t_entity_name= "a643",
        t_node_x="0",
        t_node_y="0",
        t_node_z="0",
        t_mat_name= ""
    }
}
A646 = {
    Name={
        t_name="a646"
    },
    Transform = {
        positionX = "-6000.0",
        positionY = "390.0",
        positionZ = "-7500.0",
        scaleX = "0.2",
        scaleY = "0.2",
        scaleZ = "0.2",
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
        t_model_name = "Arbol06.mesh",
        t_entity_name= "a646",
        t_node_x="0",
        t_node_y="0",
        t_node_z="0",
        t_mat_name= ""
    }
}
A648 = {
    Name={
        t_name="a648"
    },
    Transform = {
        positionX = "-6000.0",
        positionY = "390.0",
        positionZ = "-17500.0",
        scaleX = "0.2",
        scaleY = "0.2",
        scaleZ = "0.2",
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
        t_model_name = "Arbol06.mesh",
        t_entity_name= "a648",
        t_node_x="0",
        t_node_y="0",
        t_node_z="0",
        t_mat_name= ""
    }
}
A650 = {
    Name={
        t_name="a650"
    },
    Transform = {
        positionX = "-2000.0",
        positionY = "390.0",
        positionZ = "2500.0",
        scaleX = "0.2",
        scaleY = "0.2",
        scaleZ = "0.2",
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
        t_model_name = "Arbol06.mesh",
        t_entity_name= "a650",
        t_node_x="0",
        t_node_y="0",
        t_node_z="0",
        t_mat_name= ""
    }
}
A653 = {
    Name={
        t_name="a653"
    },
    Transform = {
        positionX = "-2000.0",
        positionY = "390.0",
        positionZ = "-7000.0",
        scaleX = "0.2",
        scaleY = "0.2",
        scaleZ = "0.2",
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
        t_model_name = "Arbol06.mesh",
        t_entity_name= "a653",
        t_node_x="0",
        t_node_y="0",
        t_node_z="0",
        t_mat_name= ""
    }
}
A655 = {
    Name={
        t_name="a655"
    },
    Transform = {
        positionX = "-2000.0",
        positionY = "390.0",
        positionZ = "-17500.0",
        scaleX = "0.2",
        scaleY = "0.2",
        scaleZ = "0.2",
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
        t_model_name = "Arbol06.mesh",
        t_entity_name= "a655",
        t_node_x="0",
        t_node_y="0",
        t_node_z="0",
        t_mat_name= ""
    }
}
A657 = {
    Name={
        t_name="a657"
    },
    Transform = {
        positionX = "-2000.0",
        positionY = "390.0",
        positionZ = "-27500.0",
        scaleX = "0.2",
        scaleY = "0.2",
        scaleZ = "0.2",
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
        t_model_name = "Arbol06.mesh",
        t_entity_name= "a657",
        t_node_x="0",
        t_node_y="0",
        t_node_z="0",
        t_mat_name= ""
    }
}
A658 = {
    Name={
        t_name="a658"
    },
    Transform = {
        positionX = "2000.0",
        positionY = "390.0",
        positionZ = "2500.0",
        scaleX = "0.2",
        scaleY = "0.2",
        scaleZ = "0.2",
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
        t_model_name = "Arbol06.mesh",
        t_entity_name= "a658",
        t_node_x="0",
        t_node_y="0",
        t_node_z="0",
        t_mat_name= ""
    }
}
A659 = {
    Name={
        t_name="a659"
    },
    Transform = {
        positionX = "2000.0",
        positionY = "390.0",
        positionZ = "7500.0",
        scaleX = "0.2",
        scaleY = "0.2",
        scaleZ = "0.2",
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
        t_model_name = "Arbol06.mesh",
        t_entity_name= "a659",
        t_node_x="0",
        t_node_y="0",
        t_node_z="0",
        t_mat_name= ""
    }
}
A661 = {
    Name={
        t_name="a661"
    },
    Transform = {
        positionX = "2000.0",
        positionY = "390.0",
        positionZ = "-8000.0",
        scaleX = "0.2",
        scaleY = "0.2",
        scaleZ = "0.2",
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
        t_model_name = "Arbol06.mesh",
        t_entity_name= "a661",
        t_node_x="0",
        t_node_y="0",
        t_node_z="0",
        t_mat_name= ""
    }
}
A662 = {
    Name={
        t_name="a662"
    },
    Transform = {
        positionX = "2000.0",
        positionY = "390.0",
        positionZ = "-12500.0",
        scaleX = "0.2",
        scaleY = "0.2",
        scaleZ = "0.2",
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
        t_model_name = "Arbol06.mesh",
        t_entity_name= "a662",
        t_node_x="0",
        t_node_y="0",
        t_node_z="0",
        t_mat_name= ""
    }
}
A663 = {
    Name={
        t_name="a663"
    },
    Transform = {
        positionX = "2000.0",
        positionY = "390.0",
        positionZ = "-17500.0",
        scaleX = "0.2",
        scaleY = "0.2",
        scaleZ = "0.2",
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
        t_model_name = "Arbol06.mesh",
        t_entity_name= "a663",
        t_node_x="0",
        t_node_y="0",
        t_node_z="0",
        t_mat_name= ""
    }
}
A664 = {
    Name={
        t_name="a664"
    },
    Transform = {
        positionX = "2000.0",
        positionY = "390.0",
        positionZ = "-22500.0",
        scaleX = "0.2",
        scaleY = "0.2",
        scaleZ = "0.2",
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
        t_model_name = "Arbol06.mesh",
        t_entity_name= "a664",
        t_node_x="0",
        t_node_y="0",
        t_node_z="0",
        t_mat_name= ""
    }
}
A666 = {
    Name={
        t_name="a666"
    },
    Transform = {
        positionX = "6000.0",
        positionY = "390.0",
        positionZ = "2500.0",
        scaleX = "0.2",
        scaleY = "0.2",
        scaleZ = "0.2",
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
        t_model_name = "Arbol06.mesh",
        t_entity_name= "a666",
        t_node_x="0",
        t_node_y="0",
        t_node_z="0",
        t_mat_name= ""
    }
}
A667 = {
    Name={
        t_name="a667"
    },
    Transform = {
        positionX = "6000.0",
        positionY = "390.0",
        positionZ = "7500.0",
        scaleX = "0.2",
        scaleY = "0.2",
        scaleZ = "0.2",
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
        t_model_name = "Arbol06.mesh",
        t_entity_name= "a667",
        t_node_x="0",
        t_node_y="0",
        t_node_z="0",
        t_mat_name= ""
    }
}
A668 = {
    Name={
        t_name="a668"
    },
    Transform = {
        positionX = "6000.0",
        positionY = "390.0",
        positionZ = "-2500.0",
        scaleX = "0.2",
        scaleY = "0.2",
        scaleZ = "0.2",
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
        t_model_name = "Arbol06.mesh",
        t_entity_name= "a668",
        t_node_x="0",
        t_node_y="0",
        t_node_z="0",
        t_mat_name= ""
    }
}
A669 = {
    Name={
        t_name="a669"
    },
    Transform = {
        positionX = "6000.0",
        positionY = "390.0",
        positionZ = "-7500.0",
        scaleX = "0.2",
        scaleY = "0.2",
        scaleZ = "0.2",
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
        t_model_name = "Arbol06.mesh",
        t_entity_name= "a669",
        t_node_x="0",
        t_node_y="0",
        t_node_z="0",
        t_mat_name= ""
    }
}
A670 = {
    Name={
        t_name="a670"
    },
    Transform = {
        positionX = "6000.0",
        positionY = "390.0",
        positionZ = "-12500.0",
        scaleX = "0.2",
        scaleY = "0.2",
        scaleZ = "0.2",
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
        t_model_name = "Arbol06.mesh",
        t_entity_name= "a670",
        t_node_x="0",
        t_node_y="0",
        t_node_z="0",
        t_mat_name= ""
    }
}
A671 = {
    Name={
        t_name="a671"
    },
    Transform = {
        positionX = "6000.0",
        positionY = "390.0",
        positionZ = "-17500.0",
        scaleX = "0.2",
        scaleY = "0.2",
        scaleZ = "0.2",
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
        t_model_name = "Arbol06.mesh",
        t_entity_name= "a671",
        t_node_x="0",
        t_node_y="0",
        t_node_z="0",
        t_mat_name= ""
    }
}
A673 = {
    Name={
        t_name="a673"
    },
    Transform = {
        positionX = "6000.0",
        positionY = "390.0",
        positionZ = "-27500.0",
        scaleX = "0.2",
        scaleY = "0.2",
        scaleZ = "0.2",
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
        t_model_name = "Arbol06.mesh",
        t_entity_name= "a673",
        t_node_x="0",
        t_node_y="0",
        t_node_z="0",
        t_mat_name= ""
    }
}
A675 = {
    Name={
        t_name="a675"
    },
    Transform = {
        positionX = "10000.0",
        positionY = "390.0",
        positionZ = "7500.0",
        scaleX = "0.2",
        scaleY = "0.2",
        scaleZ = "0.2",
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
        t_model_name = "Arbol06.mesh",
        t_entity_name= "a675",
        t_node_x="0",
        t_node_y="0",
        t_node_z="0",
        t_mat_name= ""
    }
}
A676 = {
    Name={
        t_name="a676"
    },
    Transform = {
        positionX = "10000.0",
        positionY = "390.0",
        positionZ = "-2500.0",
        scaleX = "0.2",
        scaleY = "0.2",
        scaleZ = "0.2",
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
        t_model_name = "Arbol06.mesh",
        t_entity_name= "a676",
        t_node_x="0",
        t_node_y="0",
        t_node_z="0",
        t_mat_name= ""
    }
}
A679 = {
    Name={
        t_name="a679"
    },
    Transform = {
        positionX = "10000.0",
        positionY = "390.0",
        positionZ = "-17500.0",
        scaleX = "0.2",
        scaleY = "0.2",
        scaleZ = "0.2",
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
        t_model_name = "Arbol06.mesh",
        t_entity_name= "a679",
        t_node_x="0",
        t_node_y="0",
        t_node_z="0",
        t_mat_name= ""
    }
}
A681 = {
    Name={
        t_name="a681"
    },
    Transform = {
        positionX = "10000.0",
        positionY = "390.0",
        positionZ = "-27500.0",
        scaleX = "0.2",
        scaleY = "0.2",
        scaleZ = "0.2",
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
        t_model_name = "Arbol06.mesh",
        t_entity_name= "a681",
        t_node_x="0",
        t_node_y="0",
        t_node_z="0",
        t_mat_name= ""
    }
}
A682 = {
    Name={
        t_name="a682"
    },
    Transform = {
        positionX = "14000.0",
        positionY = "390.0",
        positionZ = "2500.0",
        scaleX = "0.2",
        scaleY = "0.2",
        scaleZ = "0.2",
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
        t_model_name = "Arbol06.mesh",
        t_entity_name= "a682",
        t_node_x="0",
        t_node_y="0",
        t_node_z="0",
        t_mat_name= ""
    }
}
A683 = {
    Name={
        t_name="a683"
    },
    Transform = {
        positionX = "14000.0",
        positionY = "390.0",
        positionZ = "7500.0",
        scaleX = "0.2",
        scaleY = "0.2",
        scaleZ = "0.2",
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
        t_model_name = "Arbol06.mesh",
        t_entity_name= "a683",
        t_node_x="0",
        t_node_y="0",
        t_node_z="0",
        t_mat_name= ""
    }
}
A686 = {
    Name={
        t_name="a686"
    },
    Transform = {
        positionX = "14000.0",
        positionY = "390.0",
        positionZ = "-12500.0",
        scaleX = "0.2",
        scaleY = "0.2",
        scaleZ = "0.2",
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
        t_model_name = "Arbol06.mesh",
        t_entity_name= "a686",
        t_node_x="0",
        t_node_y="0",
        t_node_z="0",
        t_mat_name= ""
    }
}
A687 = {
    Name={
        t_name="a687"
    },
    Transform = {
        positionX = "14000.0",
        positionY = "390.0",
        positionZ = "-17500.0",
        scaleX = "0.2",
        scaleY = "0.2",
        scaleZ = "0.2",
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
        t_model_name = "Arbol06.mesh",
        t_entity_name= "a687",
        t_node_x="0",
        t_node_y="0",
        t_node_z="0",
        t_mat_name= ""
    }
}
A688 = {
    Name={
        t_name="a688"
    },
    Transform = {
        positionX = "14000.0",
        positionY = "390.0",
        positionZ = "-22500.0",
        scaleX = "0.2",
        scaleY = "0.2",
        scaleZ = "0.2",
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
        t_model_name = "Arbol06.mesh",
        t_entity_name= "a688",
        t_node_x="0",
        t_node_y="0",
        t_node_z="0",
        t_mat_name= ""
    }
}
A690 = {
    Name={
        t_name="a690"
    },
    Transform = {
        positionX = "14000.0",
        positionY = "390.0",
        positionZ = "17500.0",
        scaleX = "0.2",
        scaleY = "0.2",
        scaleZ = "0.2",
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
        t_model_name = "Arbol06.mesh",
        t_entity_name= "a690",
        t_node_x="0",
        t_node_y="0",
        t_node_z="0",
        t_mat_name= ""
    }
}
A692 = {
    Name={
        t_name="a692"
    },
    Transform = {
        positionX = "14000.0",
        positionY = "390.0",
        positionZ = "27500.0",
        scaleX = "0.2",
        scaleY = "0.2",
        scaleZ = "0.2",
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
        t_model_name = "Arbol06.mesh",
        t_entity_name= "a692",
        t_node_x="0",
        t_node_y="0",
        t_node_z="0",
        t_mat_name= ""
    }
}
A693 = {
    Name={
        t_name="a693"
    },
    Transform = {
        positionX = "18000.0",
        positionY = "390.0",
        positionZ = "2500.0",
        scaleX = "0.2",
        scaleY = "0.2",
        scaleZ = "0.2",
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
        t_model_name = "Arbol06.mesh",
        t_entity_name= "a693",
        t_node_x="0",
        t_node_y="0",
        t_node_z="0",
        t_mat_name= ""
    }
}
A696 = {
    Name={
        t_name="a696"
    },
    Transform = {
        positionX = "18000.0",
        positionY = "390.0",
        positionZ = "-7500.0",
        scaleX = "0.2",
        scaleY = "0.2",
        scaleZ = "0.2",
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
        t_model_name = "Arbol06.mesh",
        t_entity_name= "a696",
        t_node_x="0",
        t_node_y="0",
        t_node_z="0",
        t_mat_name= ""
    }
}
A698 = {
    Name={
        t_name="a698"
    },
    Transform = {
        positionX = "18000.0",
        positionY = "390.0",
        positionZ = "-17500.0",
        scaleX = "0.2",
        scaleY = "0.2",
        scaleZ = "0.2",
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
        t_model_name = "Arbol06.mesh",
        t_entity_name= "a698",
        t_node_x="0",
        t_node_y="0",
        t_node_z="0",
        t_mat_name= ""
    }
}
A6102 = {
    Name={
        t_name="a6102"
    },
    Transform = {
        positionX = "18000.0",
        positionY = "390.0",
        positionZ = "22500.0",
        scaleX = "0.2",
        scaleY = "0.2",
        scaleZ = "0.2",
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
        t_model_name = "Arbol06.mesh",
        t_entity_name= "a6102",
        t_node_x="0",
        t_node_y="0",
        t_node_z="0",
        t_mat_name= ""
    }
}
A6103 = {
    Name={
        t_name="a6103"
    },
    Transform = {
        positionX = "22000.0",
        positionY = "390.0",
        positionZ = "2500.0",
        scaleX = "0.2",
        scaleY = "0.2",
        scaleZ = "0.2",
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
        t_model_name = "Arbol06.mesh",
        t_entity_name= "a6103",
        t_node_x="0",
        t_node_y="0",
        t_node_z="0",
        t_mat_name= ""
    }
}
A6104 = {
    Name={
        t_name="a6104"
    },
    Transform = {
        positionX = "22000.0",
        positionY = "390.0",
        positionZ = "7500.0",
        scaleX = "0.2",
        scaleY = "0.2",
        scaleZ = "0.2",
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
        t_model_name = "Arbol06.mesh",
        t_entity_name= "a6104",
        t_node_x="0",
        t_node_y="0",
        t_node_z="0",
        t_mat_name= ""
    }
}
A6105 = {
    Name={
        t_name="a6105"
    },
    Transform = {
        positionX = "22000.0",
        positionY = "390.0",
        positionZ = "-2500.0",
        scaleX = "0.2",
        scaleY = "0.2",
        scaleZ = "0.2",
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
        t_model_name = "Arbol06.mesh",
        t_entity_name= "a6105",
        t_node_x="0",
        t_node_y="0",
        t_node_z="0",
        t_mat_name= ""
    }
}
A6106 = {
    Name={
        t_name="a6106"
    },
    Transform = {
        positionX = "22000.0",
        positionY = "390.0",
        positionZ = "-7500.0",
        scaleX = "0.2",
        scaleY = "0.2",
        scaleZ = "0.2",
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
        t_model_name = "Arbol06.mesh",
        t_entity_name= "a6106",
        t_node_x="0",
        t_node_y="0",
        t_node_z="0",
        t_mat_name= ""
    }
}
A6107 = {
    Name={
        t_name="a6107"
    },
    Transform = {
        positionX = "22000.0",
        positionY = "390.0",
        positionZ = "-12500.0",
        scaleX = "0.2",
        scaleY = "0.2",
        scaleZ = "0.2",
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
        t_model_name = "Arbol06.mesh",
        t_entity_name= "a6107",
        t_node_x="0",
        t_node_y="0",
        t_node_z="0",
        t_mat_name= ""
    }
}
A6111 = {
    Name={
        t_name="a6111"
    },
    Transform = {
        positionX = "22000.0",
        positionY = "390.0",
        positionZ = "17500.0",
        scaleX = "0.2",
        scaleY = "0.2",
        scaleZ = "0.2",
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
        t_model_name = "Arbol06.mesh",
        t_entity_name= "a6111",
        t_node_x="0",
        t_node_y="0",
        t_node_z="0",
        t_mat_name= ""
    }
}
A6114 = {
    Name={
        t_name="a6114"
    },
    Transform = {
        positionX = "26000.0",
        positionY = "390.0",
        positionZ = "7500.0",
        scaleX = "0.2",
        scaleY = "0.2",
        scaleZ = "0.2",
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
        t_model_name = "Arbol06.mesh",
        t_entity_name= "a6114",
        t_node_x="0",
        t_node_y="0",
        t_node_z="0",
        t_mat_name= ""
    }
}
A6115 = {
    Name={
        t_name="a6115"
    },
    Transform = {
        positionX = "26000.0",
        positionY = "390.0",
        positionZ = "-2500.0",
        scaleX = "0.2",
        scaleY = "0.2",
        scaleZ = "0.2",
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
        t_model_name = "Arbol06.mesh",
        t_entity_name= "a6115",
        t_node_x="0",
        t_node_y="0",
        t_node_z="0",
        t_mat_name= ""
    }
}
A6117 = {
    Name={
        t_name="a6117"
    },
    Transform = {
        positionX = "26000.0",
        positionY = "390.0",
        positionZ = "-12500.0",
        scaleX = "0.2",
        scaleY = "0.2",
        scaleZ = "0.2",
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
        t_model_name = "Arbol06.mesh",
        t_entity_name= "a6117",
        t_node_x="0",
        t_node_y="0",
        t_node_z="0",
        t_mat_name= ""
    }
}
A6120 = {
    Name={
        t_name="a6120"
    },
    Transform = {
        positionX = "26000.0",
        positionY = "390.0",
        positionZ = "12500.0",
        scaleX = "0.2",
        scaleY = "0.2",
        scaleZ = "0.2",
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
        t_model_name = "Arbol06.mesh",
        t_entity_name= "a6120",
        t_node_x="0",
        t_node_y="0",
        t_node_z="0",
        t_mat_name= ""
    }
}
A6121 = {
    Name={
        t_name="a6121"
    },
    Transform = {
        positionX = "26000.0",
        positionY = "390.0",
        positionZ = "17500.0",
        scaleX = "0.2",
        scaleY = "0.2",
        scaleZ = "0.2",
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
        t_model_name = "Arbol06.mesh",
        t_entity_name= "a6121",
        t_node_x="0",
        t_node_y="0",
        t_node_z="0",
        t_mat_name= ""
    }
}
A6123 = {
    Name={
        t_name="a6123"
    },
    Transform = {
        positionX = "30000.0",
        positionY = "390.0",
        positionZ = "2500.0",
        scaleX = "0.2",
        scaleY = "0.2",
        scaleZ = "0.2",
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
        t_model_name = "Arbol06.mesh",
        t_entity_name= "a6123",
        t_node_x="0",
        t_node_y="0",
        t_node_z="0",
        t_mat_name= ""
    }
}
A6124 = {
    Name={
        t_name="a6124"
    },
    Transform = {
        positionX = "30000.0",
        positionY = "390.0",
        positionZ = "7500.0",
        scaleX = "0.2",
        scaleY = "0.2",
        scaleZ = "0.2",
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
        t_model_name = "Arbol06.mesh",
        t_entity_name= "a6124",
        t_node_x="0",
        t_node_y="0",
        t_node_z="0",
        t_mat_name= ""
    }
}
A6125 = {
    Name={
        t_name="a6125"
    },
    Transform = {
        positionX = "30000.0",
        positionY = "390.0",
        positionZ = "-2500.0",
        scaleX = "0.2",
        scaleY = "0.2",
        scaleZ = "0.2",
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
        t_model_name = "Arbol06.mesh",
        t_entity_name= "a6125",
        t_node_x="0",
        t_node_y="0",
        t_node_z="0",
        t_mat_name= ""
    }
}
A51 = {
    Name={
        t_name="a51"
    },
    Transform = {
        positionX = "-30000.0",
        positionY = "390.0",
        positionZ = "300.0",
        scaleX = "0.2",
        scaleY = "0.2",
        scaleZ = "0.2",
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
        t_model_name = "Arbol05.mesh",
        t_entity_name= "a51",
        t_node_x="0",
        t_node_y="0",
        t_node_z="0",
        t_mat_name= ""
    }
}
A52 = {
    Name={
        t_name="a52"
    },
    Transform = {
        positionX = "-34000.0",
        positionY = "390.0",
        positionZ = "-3000.0",
        scaleX = "0.2",
        scaleY = "0.2",
        scaleZ = "0.2",
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
        t_model_name = "Arbol05.mesh",
        t_entity_name= "a52",
        t_node_x="0",
        t_node_y="0",
        t_node_z="0",
        t_mat_name= ""
    }
}
A53 = {
    Name={
        t_name="a53"
    },
    Transform = {
        positionX = "-35500.0",
        positionY = "390.0",
        positionZ = "-6000.0",
        scaleX = "0.2",
        scaleY = "0.2",
        scaleZ = "0.2",
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
        t_model_name = "Arbol05.mesh",
        t_entity_name= "a53",
        t_node_x="0",
        t_node_y="0",
        t_node_z="0",
        t_mat_name= ""
    }
}
A54 = {
    Name={
        t_name="a54"
    },
    Transform = {
        positionX = "-31500.0",
        positionY = "390.0",
        positionZ = "-8500.0",
        scaleX = "0.2",
        scaleY = "0.2",
        scaleZ = "0.2",
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
        t_model_name = "Arbol05.mesh",
        t_entity_name= "a54",
        t_node_x="0",
        t_node_y="0",
        t_node_z="0",
        t_mat_name= ""
    }
}
A55 = {
    Name={
        t_name="a55"
    },
    Transform = {
        positionX = "-21500.0",
        positionY = "390.0",
        positionZ = "9500.0",
        scaleX = "0.2",
        scaleY = "0.2",
        scaleZ = "0.2",
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
        t_model_name = "Arbol05.mesh",
        t_entity_name= "a55",
        t_node_x="0",
        t_node_y="0",
        t_node_z="0",
        t_mat_name= ""
    }
}
A56 = {
    Name={
        t_name="a56"
    },
    Transform = {
        positionX = "-7500.0",
        positionY = "390.0",
        positionZ = "11500.0",
        scaleX = "0.2",
        scaleY = "0.2",
        scaleZ = "0.2",
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
        t_model_name = "Arbol05.mesh",
        t_entity_name= "a56",
        t_node_x="0",
        t_node_y="0",
        t_node_z="0",
        t_mat_name= ""
    }
}
A57 = {
    Name={
        t_name="a57"
    },
    Transform = {
        positionX = "-3000.0",
        positionY = "390.0",
        positionZ = "500.0",
        scaleX = "0.2",
        scaleY = "0.2",
        scaleZ = "0.2",
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
        t_model_name = "Arbol05.mesh",
        t_entity_name= "a57",
        t_node_x="0",
        t_node_y="0",
        t_node_z="0",
        t_mat_name= ""
    }
}
A58 = {
    Name={
        t_name="a58"
    },
    Transform = {
        positionX = "3000.0",
        positionY = "390.0",
        positionZ = "4500.0",
        scaleX = "0.2",
        scaleY = "0.2",
        scaleZ = "0.2",
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
        t_model_name = "Arbol05.mesh",
        t_entity_name= "a58",
        t_node_x="0",
        t_node_y="0",
        t_node_z="0",
        t_mat_name= ""
    }
}
A59 = {
    Name={
        t_name="a59"
    },
    Transform = {
        positionX = "20300.0",
        positionY = "390.0",
        positionZ = "-9000.0",
        scaleX = "0.2",
        scaleY = "0.2",
        scaleZ = "0.2",
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
        t_model_name = "Arbol05.mesh",
        t_entity_name= "a59",
        t_node_x="0",
        t_node_y="0",
        t_node_z="0",
        t_mat_name= ""
    }
}
A510 = {
    Name={
        t_name="a510"
    },
    Transform = {
        positionX = "34800.0",
        positionY = "390.0",
        positionZ = "8500.0",
        scaleX = "0.2",
        scaleY = "0.2",
        scaleZ = "0.2",
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
        t_model_name = "Arbol05.mesh",
        t_entity_name= "a510",
        t_node_x="0",
        t_node_y="0",
        t_node_z="0",
        t_mat_name= ""
    }
}
A511 = {
    Name={
        t_name="a511"
    },
    Transform = {
        positionX = "31200.0",
        positionY = "390.0",
        positionZ = "10200.0",
        scaleX = "0.2",
        scaleY = "0.2",
        scaleZ = "0.2",
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
        t_model_name = "Arbol05.mesh",
        t_entity_name= "a511",
        t_node_x="0",
        t_node_y="0",
        t_node_z="0",
        t_mat_name= ""
    }
}
A512 = {
    Name={
        t_name="a512"
    },
    Transform = {
        positionX = "28700.0",
        positionY = "390.0",
        positionZ = "4053.0",
        scaleX = "0.2",
        scaleY = "0.2",
        scaleZ = "0.2",
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
        t_model_name = "Arbol05.mesh",
        t_entity_name= "a512",
        t_node_x="0",
        t_node_y="0",
        t_node_z="0",
        t_mat_name= ""
    }
}
A513 = {
    Name={
        t_name="a513"
    },
    Transform = {
        positionX = "-8000.0",
        positionY = "390.0",
        positionZ = "100.0",
        scaleX = "0.2",
        scaleY = "0.2",
        scaleZ = "0.2",
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
        t_model_name = "Arbol05.mesh",
        t_entity_name= "a513",
        t_node_x="0",
        t_node_y="0",
        t_node_z="0",
        t_mat_name= ""
    }
}
A514 = {
    Name={
        t_name="a514"
    },
    Transform = {
        positionX = "-18600.0",
        positionY = "390.0",
        positionZ = "-3400.0",
        scaleX = "0.2",
        scaleY = "0.2",
        scaleZ = "0.2",
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
        t_model_name = "Arbol05.mesh",
        t_entity_name= "a514",
        t_node_x="0",
        t_node_y="0",
        t_node_z="0",
        t_mat_name= ""
    }
}
A515 = {
    Name={
        t_name="a515"
    },
    Transform = {
        positionX = "11000.0",
        positionY = "390.0",
        positionZ = "6500.0",
        scaleX = "0.2",
        scaleY = "0.2",
        scaleZ = "0.2",
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
        t_model_name = "Arbol05.mesh",
        t_entity_name= "a515",
        t_node_x="0",
        t_node_y="0",
        t_node_z="0",
        t_mat_name= ""
    }
}
A516 = {
    Name={
        t_name="a516"
    },
    Transform = {
        positionX = "-47000.0",
        positionY = "390.0",
        positionZ = "4000.0",
        scaleX = "0.2",
        scaleY = "0.2",
        scaleZ = "0.2",
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
        t_model_name = "Arbol05.mesh",
        t_entity_name= "a516",
        t_node_x="0",
        t_node_y="0",
        t_node_z="0",
        t_mat_name= ""
    }
}