local Triplesixxx = loadstring(game:HttpGet("https://raw.githubusercontent.com/Asdfghijklmnbvcxzgyiwpqpendbgay/awbauhsalwndankshwoianwajnsa.luau/main/ansawbsaasmdbabdasaboolgede"))() -- Replace with actual script URL or require

-- Create the main window with red and black theme
local Window = Triplesixxx:Window({
    Title = "Red & Black GUI",
    Footer = "Powered by Triplesixxx",
    Color = Color3.fromRGB(255, 0, 0), -- Red primary color
    Version = 1,
    Image = "rbxassetid://12120698352", -- Optional: player icon for toggle button
    ["Tab Width"] = 150
})

-- Create a notification with red and black theme
Triplesixxx:MakeNotify({
    Title = "Welcome",
    Description = "GUI Loaded",
    Content = "Red & Black themed GUI successfully loaded!",
    Color = Color3.fromRGB(255, 0, 0), -- Red
    Time = 0.5,
    Delay = 5
})

-- Create a main tab
local MainTab = Window:AddTab({
    Name = "Main",
    Icon = "player" -- Using icon from Icons table
})

-- Create a section in the main tab
local MainSection = MainTab:AddSection("Main Features", true)

-- Add various elements with red and black styling
MainSection:AddToggle({
    Title = "Auto Farm",
    Content = "Enable automatic resource farming",
    Default = false,
    Callback = function(value)
        print("Auto Farm: " .. tostring(value))
    end
})

MainSection:AddSlider({
    Title = "Speed Adjust",
    Content = "Adjust movement speed",
    Min = 0,
    Max = 100,
    Increment = 1,
    Default = 50,
    Callback = function(value)
        print("Speed set to: " .. value)
    end
})

MainSection:AddDropdown({
    Title = "Weapon Select",
    Content = "Choose your weapon",
    Multi = false,
    Options = {"Sword", "Bow", "Staff", "Axe"},
    Default = "Sword",
    Callback = function(value)
        print("Selected weapon: " .. value)
    end
})

MainSection:AddButton({
    Title = "Execute",
    Callback = function()
        print("Execute button clicked!")
    end,
    SubTitle = "Reset",
    SubCallback = function()
        print("Reset button clicked!")
    end
})

MainSection:AddParagraph({
    Title = "Information",
    Content = "This is a red and black themed GUI example using the Triplesixxx library.",
    Icon = "info"
})

MainSection:AddInput({
    Title = "Player Name",
    Content = "Enter target player name",
    Default = "",
    Callback = function(value)
        print("Entered name: " .. value)
    end
})

-- Create a settings tab
local SettingsTab = Window:AddTab({
    Name = "Settings",
    Icon = "settings"
})

local SettingsSection = SettingsTab:AddSection("Configuration", true)

SettingsSection:AddToggle({
    Title = "Dark Mode",
    Content = "Toggle between light and dark theme",
    Default = true,
    Callback = function(value)
        print("Dark Mode: " .. tostring(value))
        -- Add logic to change GUI appearance
    end
})

SettingsSection:AddDivider()

SettingsSection:AddSubSection("Advanced Settings")

SettingsSection:AddPanel({
    Title = "Custom Config",
    Content = "Enter custom configuration code",
    Placeholder = "Enter code here",
    Default = "",
    ButtonText = "Apply",
    ButtonCallback = function(value)
        print("Applied config: " .. value)
    end,
    SubButtonText = "Clear",
    SubButtonCallback = function()
        print("Config cleared")
    end
})

-- Styling adjustments for red and black theme
local function applyTheme()
    -- Modify existing elements to match red and black theme
    local CoreGui = game:GetService("CoreGui")
    local Gui = CoreGui:FindFirstChild("Triplesixxx")
    
    if Gui then
        -- Change main frame background
        local Main = Gui.DropShadowHolder.DropShadow.Main
        Main.BackgroundColor3 = Color3.fromRGB(20, 20, 20) -- Dark background
        
        -- Update tab colors
        for _, tab in pairs(Gui.DropShadowHolder.DropShadow.Main.LayersTab.ScrollTab:GetChildren()) do
            if tab.Name == "Tab" then
                tab.BackgroundColor3 = Color3.fromRGB(30, 30, 30) -- Darker tab background
                local tabButton = tab:FindFirstChild("TabButton")
                if tabButton then
                    tabButton.TextColor3 = Color3.fromRGB(255, 0, 0) -- Red text
                end
            end
        end
        
        -- Update section backgrounds
        for _, section in pairs(Gui.DropShadowHolder.DropShadow.Main.Layers.LayersReal.LayersFolder:GetChildren()) do
            if section:IsA("ScrollingFrame") then
                for _, sec in pairs(section:GetChildren()) do
                    if sec.Name == "Section" then
                        sec.BackgroundColor3 = Color3.fromRGB(25, 25, 25) -- Dark section background
                    end
                end
            end
        end
    end
end

-- Apply theme after GUI creation
applyTheme()

-- Save configuration when GUI is closed
game:GetService("CoreGui").Triplesixxx.DropShadowHolder.Top.Close.Activated:Connect(function()
    SaveConfig()
end)
