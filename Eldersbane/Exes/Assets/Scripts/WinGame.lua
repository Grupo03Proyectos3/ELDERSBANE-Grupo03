entities = {"PlayGame", "MenuGame", "Back", "CamaraPpal", "Luz"}

MenuGame = {
    Name={
        t_name="menuButtonWin"
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
        t_name = "menuButtonWin",
        t_text = "",
        t_image = "Menu.png"
    },
    Scripts = {
        "GoToMenu"
    }
}
Back = {
    Name={
        t_name="win"
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
        t_image = "EldersbaneWinGame.png"
    }
}

PlayGame = {
    Name={
        t_name="playButtonWin"
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
        t_name = "playButtonWin",
        t_text = "",
        t_image = "Play.png"
    },
    Scripts = {
       "GoToGame"
    }
}
CamaraPpal={
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
Luz={
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
