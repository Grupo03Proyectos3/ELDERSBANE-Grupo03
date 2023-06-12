entities = {"PlayGame1", "MenuGame1", "Back1", "CamaraPpal1", "Luz1"}

MenuGame1 = {
    Name={
        t_name="menuButtonLose"
    },
    Transform = {
        positionX = "39.0",
        positionY = "75.0",
        positionZ = "0.0",
        scaleX = "130.0",
        scaleY = "100.0",
        scaleZ = "1.0",
        rotationX = "0.0",
        rotationY = "0.0",
        rotationZ = "0.0",
        rotationW = "0.0"
    },
    UIElement = {
        t_type = "FlamingoDefaultUI/ImageButton",
        t_name = "menuButtonLose",
        t_text = "",
        t_image = "Menu.png"
    },
    ChangeScene={
        t_scene_change = "menu",
    }
}
Back1 = {
    Name={
        t_name="end"
    },
    Transform = {
        positionX = "0.0",
        positionY = "0.0",
        positionZ = "0.0",
        scaleX = "800.0",
        scaleY = "800.0",
        scaleZ = "1.0",
        rotationX = "0.0",
        rotationY = "0.0",
        rotationZ = "0.0",
        rotationW = "1.0"
    },
    UIElement = {
        t_type = "FlamingoDefaultUI/StaticImage",
        t_name = "end",
        t_text = "",
        t_image = "EldersbaneEndGame.png"
    }
}

PlayGame1 = {
    Name={
        t_name="playButtonLose"
    },
    Transform = {
        positionX = "39.0",
        positionY = "55.0",
        positionZ = "0.0",
        scaleX = "130.0",
        scaleY = "100.0",
        scaleZ = "1.0",
        rotationX = "0.0",
        rotationY = "0.0",
        rotationZ = "0.0",
        rotationW = "1.0"
    },
    UIElement = {
        t_type = "FlamingoDefaultUI/ImageButton",
        t_name = "playButtonLose",
        t_text = "",
        t_image = "Play.png"
    },
    ChangeScene={
        t_scene_change = "mapa",
    }
}
CamaraPpal1={
    Name={
        t_name="myCameraend"
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
        t_name="myCameraend",
        t_entity_name="myCamera2end",
        t_color_x="0.1",
        t_color_y="0.4",
        t_color_z="0.7"
    }
}
Luz1={
    Name={
        t_name="mylightEnd"
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
        t_name="myLightend"
    }
}
