entities = {"ButtonGame", "Title", "CamaraPpal", "Luz"}

ButtonGame = {
    Name={
        t_name="button"
    },
    Transform = {
        positionX = "39.0",
        positionY = "55.0",
        positionZ = "0.0",
        scaleX = "150.0",
        scaleY = "120.0",
        scaleZ = "0.0",
        rotationX = "0.0",
        rotationY = "0.0",
        rotationZ = "0.0",
        rotationW = "0.0"
    },
    UIElement = {
        t_type = "FlamingoDefaultUI/Button",
        t_name = "button",
        t_text = "PLAY",
        t_image = ""
    },
    Scripts = {
        t_scriptName = "ChangeScene"
    }
}
Title = {
    Name={
        t_name="title"
    },
    Transform = {
        positionX = "30.0",
        positionY = "10.0",
        positionZ = "0.0",
        scaleX = "300.0",
        scaleY = "200.0",
        scaleZ = "0.0",
        rotationX = "0.0",
        rotationY = "0.0",
        rotationZ = "0.0",
        rotationW = "1.0"
    },
    UIElement = {
        t_type = "FlamingoDefaultUI/StaticImage",
        t_name = "title",
        t_text = "ELDERSBANE",
        t_image = "eldersbane.png"
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
