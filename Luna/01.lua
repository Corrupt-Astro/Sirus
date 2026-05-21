-- Luna.lua
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
    -- Logic is done this way to not immediately rule out unknown executors.
    -- For example, if Delta is confirmed to break with your script, it can go in Unsupported.
    -- If users use Trigon but you don't have it/unsure whether it works, it can be left out and marked as a maybe

    SupportedExecutors = {Codex, Delta, Wave}, 
    UnsupportedExecutors = {Krnl},

    DiscordInvite = "1234", -- The Discord Invite Link. Do Not Include discord.gg/ | Only Include the code.
    Backdrop = nil, -- A Custom Image to use for the backdrop. Set to 0 to use the Game's Thumbnail. Defaults To A Roblox Void. Set to a blank image to not use.  

    IconStyle = 1, -- 1 for solid, 2 for outline

    Changelog = {
        -- Pass Tables For Each Update
        
        {
            Title = "Creation",
            Date = "May 20 2026",
            Description = "The Script Was Created and Basic support Added",
        },
        {
            Title = "Slap Battles",
            Date = "Started May 21st 2026, continued May 28th-June 4th 2026",
            Description = "Added full slap battles Support",
        }  
    }
})


local Tab = TabSection:CreateTab({
    Name = "Welcome!",
    Icon = NebulaIcons:GetIcon('view_in_ar', 'Material'),
    Columns = 2,
}, "INDEX")


