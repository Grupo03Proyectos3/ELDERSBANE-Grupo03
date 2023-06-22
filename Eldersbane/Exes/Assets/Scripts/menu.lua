entities = {"ButtonGame", "ExitGame", "Title", "CamaraPpal", "Luz"}

ButtonGame = {
    Name={
        t_name="button"
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
        t_name = "button",
        t_text = "",
        t_image = "Play.png"
    },
    ChangeScene={
        t_scene = "mapa",
    },
    MenuMusic={

    },
    AudioSource = {
        t_routeSong = "Assets/Audio/EldersbaneMenuTheme.mp3",
        t_songName = "MenuTheme",
        t_music = "true"
    }
}
ExitGame = {
    Name={
        t_name="exitButton"
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
        t_name = "exitButton",
        t_text = "",
        t_image = "Exit.png"
    },
    ExitGame={
        
    }
}
Title = {
    Name={
        t_name="title"
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
        t_name = "title",
        t_text = "ELDERSBANE",
        t_image = "EldersbaneMenu.png"
    }
}
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
        t_entity_name="myCamera2",
        t_color_x="0.0",
        t_color_y="0.0",
        t_color_z="0.0"
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