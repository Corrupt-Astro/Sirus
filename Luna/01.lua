local Starlight = loadstring(game:HttpGet("https://raw.nebulasoftworks.xyz/starlight"))()  
local NebulaIcons = loadstring(game:HttpGet("https://raw.nebulasoftworks.xyz/nebula-icon-library-loader"))()

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

Window:CreateHomeTab({
    -- Fixed: Wrapped executor names in quotes to make them strings
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
