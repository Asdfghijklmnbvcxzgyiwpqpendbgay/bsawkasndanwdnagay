-- Load the Triplesixxx library
local Triplesixxx = loadstring(game:HttpGet("https://raw.githubusercontent.com/Asdfghijklmnbvcxzgyiwpqpendbgay/awbauhsalwndankshwoianwajnsa.luau/main/ansawbsaasmdbabdasaboolgede"))() -- Replace with actual library loading method

-- Create a new window
local Window = Triplesixxx:Window({
    Title = "My Custom GUI",
    Footer = "Made by You",
    Color = Color3.fromRGB(139, 0, 0), -- Merah kehitaman
    TabWidth = 150,
    Version = "1.0",
    Image = "rbxassetid://12120698352" -- Optional icon for toggle button
})

-- Create a notification
Triplesixxx:MakeNotify({
    Title = "Welcome!",
    Description = "GUI Loaded",
    Content = "Your custom GUI has been successfully loaded!",
    Color = Color3.fromRGB(0, 170, 255),
    Time = 0.5,
    Delay = 5
})

-- Create a tab for "Main" features
local MainTab = Window:AddTab({
    Name = "Main",
    Icon = "player" -- Using an icon from the Icons table
})

-- Add a section to the Main tab
local MainSection = MainTab:AddSection("Player Settings", true) -- Always open section

-- Add a toggle to the section
MainSection:AddToggle({
    Title = "God Mode",
    Content = "Enable to become invincible",
    Default = false,
    Callback = function(value)
        print("God Mode set to: " .. tostring(value))
        -- Add your toggle logic here
    end
})

-- Add a slider to the section
MainSection:AddSlider({
    Title = "Walk Speed",
    Content = "Adjust your character's walk speed",
    Min = 16,
    Max = 100,
    Increment = 1,
    Default = 16,
    Callback = function(value)
        print("Walk Speed set to: " .. value)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = value
    end
})

-- Add an input field to the section
MainSection:AddInput({
    Title = "Player Name",
    Content = "Enter a player name to teleport to",
    Default = "",
    Callback = function(value)
        print("Teleporting to: " .. value)
        -- Add teleport logic here
    end
})

-- Add a dropdown to the section
MainSection:AddDropdown({
    Title = "Teleport Location",
    Content = "Select a location to teleport",
    Options = {
        { Label = "Spawn", Value = "spawn" },
        { Label = "Safe Zone", Value = "safe_zone" },
        { Label = "Boss Arena", Value = "boss_arena" }
    },
    Default = "spawn",
    Callback = function(value)
        print("Teleporting to: " .. value)
        -- Add teleport logic here
    end
})

-- Add a paragraph with a button
MainSection:AddParagraph({
    Title = "Information",
    Content = "This GUI allows you to control various game settings. Click below to reset settings.",
    Icon = "info",
    ButtonText = "Reset Settings",
    ButtonCallback = function()
        print("Settings reset!")
        -- Add reset logic here
    end
})

-- Create another tab for "Visuals"
local VisualsTab = Window:AddTab({
    Name = "Visuals",
    Icon = "eyes"
})

-- Add a section to the Visuals tab
local VisualsSection = VisualsTab:AddSection("ESP Settings")

-- Add a multi-select dropdown
VisualsSection:AddDropdown({
    Title = "ESP Options",
    Content = "Select ESP features to enable",
    Multi = true,
    Options = {
        { Label = "Player ESP", Value = "player_esp" },
        { Label = "Item ESP", Value = "item_esp" },
        { Label = "Enemy ESP", Value = "enemy_esp" }
    },
    Default = {"player_esp"},
    Callback = function(values)
        print("ESP Options selected: " .. table.concat(values, ", "))
        -- Add ESP logic here
    end
})

-- Add a button to the section
VisualsSection:AddButton({
    Title = "Toggle All ESP",
    Callback = function()
        print("Toggling all ESP features")
        -- Add ESP toggle logic here
    end,
    SubTitle = "Clear ESP",
    SubCallback = function()
        print("Clearing all ESP features")
        -- Add ESP clear logic here
    end
})

-- Add a divider
VisualsSection:AddDivider()

-- Add a sub-section
VisualsSection:AddSubSection("Advanced Visuals")

-- Add a panel with input and buttons
VisualsSection:AddPanel({
    Title = "Custom Color",
    Content = "Set a custom ESP color",
    Placeholder = "Enter RGB (e.g., 255, 0, 0)",
    Default = "255, 0, 0",
    ButtonText = "Apply Color",
    ButtonCallback = function(value)
        print("Applying color: " .. value)
        -- Add color application logic here
    end,
    SubButtonText = "Reset Color",
    SubButtonCallback = function()
        print("Resetting color")
        -- Add color reset logic here
    end
})

-- Load saved configuration
Window:LoadConfigElements()
