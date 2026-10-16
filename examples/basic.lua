local Mono = loadstring(game:HttpGet("https://raw.githubusercontent.com/Hqkepckw/idk-ui/refs/heads/main/dist/bruh.lua"))()

local Window = Mono:CreateWindow({
    Title     = "My Script",
    ToggleKey = Enum.KeyCode.RightShift,
    Scale     = 1,
})

local Main = Window:Tab({ Title = "Main", Icon = "user" })
Main:Section({ Title = "Movement" })

Main:Toggle({
    Title = "Fly",
    Desc  = "Barebones fly.",
    Icon  = "wind",
    Value = false,
    Callback = function(state)
        print("Fly:", state)
    end,
})

Main:Slider({
    Title = "Speed",
    Desc  = "Studs per second.",
    Value = { Min = 10, Max = 400, Default = 80 },
    Step  = 5,
    Callback = function(v)
        print("Speed:", v)
    end,
})

Main:Dropdown({
    Title  = "Mode",
    Values = { "Toggle", "Hold" },
    Value  = "Toggle",
    Callback = function(v)
        print("Mode:", v)
    end,
})

Main:Keybind({
    Title = "Bind",
    Value = "V",
    Callback = function(k)
        print("Bind:", k)
    end,
})

Main:Button({
    Title = "Test",
    Icon  = "play",
    Callback = function()
        Mono:Notify({ Title = "Test", Content = "it works", Duration = 3, Icon = "check" })
    end,
})

Main:Paragraph({
    Title = "Info",
    Desc  = "Live status text here.",
})
