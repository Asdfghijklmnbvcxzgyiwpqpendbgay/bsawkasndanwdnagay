-- Main.lua
-- Example usage of the Triplesixxx library
-- Place this in a LocalScript in your Roblox game

local Players = game:GetService("Players")
local HttpService = game:GetService("HttpService")

-- Load the Triplesixxx library with error handling
local Triplesixxx
local success, result = pcall(function()
    return loadstring(game:HttpGet("https://raw.githubusercontent.com/Asdfghijklmnbvcxzgyiwpqpendbgay/awbauhsalwndankshwoianwajnsa.luau/main/ansawbsaasmdbabdasaboolgede"))()
end)
if not success then
    warn("Failed to load Triplesixxx library: " .. result)
    return
end
Triplesixxx = result

-- Verify Triplesixxx is a table
if type(Triplesixxx) ~= "table" then
    warn("Triplesixxx is not a table, got: " .. type(Triplesixxx))
    return
end

-- Create a new window
local Window
success, result = pcall(function()
    return Triplesixxx:Window({
        Title = "My Custom GUI",
        Footer = "Made by You",
        Color = Color3.fromRGB(139, 0, 0), -- Dark red
        TabWidth = 150,
        Version = "1.0",
        Image = "rbxassetid://12120698352" -- Optional icon
    })
end)
if not success then
    warn("Failed to create window: " .. result)
    return
end
Window = result

-- Create a notification
success, result = pcall(function()
    Triplesixxx:MakeNotify({
        Title = "Welcome!",
        Description = "GUI Loaded",
        Content = "Your custom GUI has been successfully loaded!",
        Color = Color3.fromRGB(0, 170, 255),
        Time = 0.5,
        Delay = 5
    })
end)
if not success then
    warn("Notification failed: " .. result)
end

-- Create a tab for "Main" features
local MainTab
success, result = pcall(function()
    return Window:AddTab({
        Name = "Main",
        Icon = "player"
    })
end)
if not success then
    warn("Failed to create Main tab: " .. result)
    return
end
MainTab = result

-- Add a section to the Main tab
local MainSection
success, result = pcall(function()
    return MainTab:AddSection("Player Settings", true)
end)
if not success then
    warn("Failed to create Main section: " .. result)
    return
end
MainSection = result

-- Add a toggle to the section
success, result = pcall(function()
    MainSection:AddToggle({
        Title = "God Mode",
        Content = "Enable to become invincible",
        Default = false,
        Callback = function(value)
            print("God Mode set to: " .. tostring(value))
            -- Add your toggle logic here
        end
    })
end)
if not success then
    warn("Failed to add toggle: " .. result)
end

-- Add a slider to the section
success, result = pcall(function()
    MainSection:AddSlider({
        Title = "Walk Speed",
        Content = "Adjust your character's walk speed",
        Min = 16,
        Max = 100,
        Increment = 1,
        Default = 16,
        Callback = function(value)
            print("Walk Speed set to: " .. value)
            if Players.LocalPlayer.Character and Players.LocalPlayer.Character:FindFirstChild("Humanoid") then
                Players.LocalPlayer.Character.Humanoid.WalkSpeed = value
            else
                warn("Character or Humanoid not found")
            end
        end
    })
end)
if not success then
    warn("Failed to add slider: " .. result)
end

-- Add an input field to the section
success, result = pcall(function()
    MainSection:AddInput({
        Title = "Player Name",
        Content = "Enter a player name to teleport to",
        Default = "",
        Callback = function(value)
            print("Teleporting to: " .. value)
            -- Add teleport logic here
        end
    })
end)
if not success then
    warn("Failed to add input: " .. result)
end

-- Add a dropdown to the section
success, result = pcall(function()
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
end)
if not success then
    warn("Failed to add dropdown: " .. result)
end

-- Add a paragraph with a button
success, result = pcall(function()
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
end)
if not success then
    warn("Failed to add paragraph: " .. result)
end

-- Create another tab for "Visuals"
local VisualsTab
success, result = pcall(function()
    return Window:AddTab({
        Name = "Visuals",
        Icon = "eyes"
    })
end)
if not success then
    warn("Failed to create Visuals tab: " .. result)
    return
end
VisualsTab = result

-- Add a section to the Visuals tab
local VisualsSection
success, result = pcall(function()
    return VisualsTab:AddSection("ESP Settings")
end)
if not success then
    warn("Failed to create Visuals section: " .. result)
    return
end
VisualsSection = result

-- Add a multi-select dropdown
success, result = pcall(function()
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
end)
if not success then
    warn("Failed to add multi-select dropdown: " .. result)
end

-- Add a button to the section
success, result = pcall(function()
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
end)
if not success then
    warn("Failed to add button: " .. result)
end

-- Add a divider
success, result = pcall(function()
    VisualsSection:AddDivider()
end)
if not success then
    warn("Failed to add divider: " .. result)
end

-- Add a sub-section
success, result = pcall(function()
    VisualsSection:AddSubSection("Advanced Visuals")
end)
if not success then
    warn("Failed to add sub-section: " .. result)
end

-- Add a panel with input and buttons
success, result = pcall(function()
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
end)
if not success then
    warn("Failed to add panel: " .. result)
end

-- Load saved configuration
success, result = pcall(function()
    Window:LoadConfigElements()
end)
if not success then
    warn("Failed to load config elements: " .. result)
end
