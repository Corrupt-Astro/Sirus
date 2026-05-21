--// Load the main Starlight suite and Icon packages
local Starlight = loadstring(game:HttpGet("https://raw.nebulasoftworks.xyz/starlight"))()  
local NebulaIcons = loadstring(game:HttpGet("https://raw.nebulasoftworks.xyz/nebula-icon-library-loader"))()

--// Create Main Window Frame
local Window = Starlight:CreateWindow({
    Name = "Sirus",
    Subtitle = "v0.1",
    Icon = 123456789,

    LoadingSettings = {
        Title = "My Script Hub",
        Subtitle = "Welcome to My Script Hub",
    },

    FileSettings = {
        ConfigFolder = "MyScript"
    },
})

--// Generate Home / Overview Page
Window:CreateHomeTab({
    SupportedExecutors = {"Delta", "Codex", "Krnl"}, 
    UnsupportedExecutors = {}, 

    DiscordInvite = "1234", 
    Backdrop = nil, 
    IconStyle = 1, 

    Changelog = {
        {
            Title = "Example Update",
            Date = "25th october twentyfive",
            Description = "blablblablajana \n blabakjakd",
        },
        {
            Title = "Second Update!!",
            Date = "sometime after example update",
            Description = "",
        }  
    }
})

--// 1. Create a Standard Tab
-- Passing Name and an asset ID integer for your tab icons
local MainTab = Window:CreateTab({
    Name = "Main Features",
    Icon = 6023426922 -- Example asset icon ID
})

--// 2. Create a Groupbox layout element inside your Tab
-- Groupboxes act as containers holding your elements.
local CombatGroupbox = MainTab:CreateGroupbox({
    Name = "Combat Modifications",
    Icon = 6031280882, -- Optional Groupbox Header Icon ID
    Column = 1,        -- Defines what layout grid side to render on (1 = Left, 2 = Right)
    Style = 1          -- Preset visual box frame designs
})

--// 3. Populate your Groupbox with interactive options

-- Toggle Switch Element
CombatGroupbox:CreateSwitch({
    Name = "Kill Aura",
    CurrentValue = false,
    InitialCallback = false, -- Determines if callback should automatically trigger when script loads
    Callback = function(state)
        print("Kill Aura toggled to: ", state)
    end,
})

-- Action Button Element
CombatGroupbox:CreateButton({
    Name = "Instant Teleport To Enemy",
    Icon = 6023565901, -- Button Icon Id
    Callback = function()
        print("Teleporting...")
    end,
})

-- Value Adjuster Slider Element
CombatGroupbox:CreateSlider({
    Name = "Speed Velocity",
    Range = {16, 100}, -- [1] Minimum Value, [2] Maximum Value
    CurrentValue = 16,
    Suffix = " studs/sec",
    HideMax = false, -- Shows /100 indicator if false
    Callback = function(value)
        print("Updated speed limit: ", value)
    end,
}, "speed_slider_id") -- Optional second parameter acts as internal element indexing ID

-- Text Entry Input Field Element
CombatGroupbox:CreateInput({
    Name = "Target Player Username",
    PlaceholderText = "Type player name...",
    CurrentValue = "",
    RemoveTextOnFocus = true,
    RemoveTextAfterFocusLost = false,
    Numeric = false, -- Restricts typing to only numbers if set to true
    Enter = true,    -- Requires pressing 'Enter' to fire the callback if set to true
    Callback = function(text)
        print("New active target locked: ", text)
    end,
}, "target_input_id")
