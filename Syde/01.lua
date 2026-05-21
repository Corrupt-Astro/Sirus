local syde = loadstring(game:HttpGet("https://raw.githubusercontent.com/essencejs/syde/refs/heads/main/source",true))()
syde:Load({
	Logo = '7488932274',
	Name = 'Sirus',
	Status = 'Stable', -- {Stable, Unstable, Detected, Patched}
	Accent = Color3.fromRGB(251, 144, 255), -- Window Accent Theme
	HitBox = Color3.fromRGB(251, 144, 255), -- Window HitBox Theme (ex. Toggle Color)
	AutoLoad = false, -- Does Not Work !
	Socials = {    -- Allows 1 Large and 2 Small Blocks
		{
			Name = 'Syde';
			Style = 'Discord';
			Size = "Large";
			CopyToClip = true -- Copy To Clip (coming very soon)
		},
		{
			Name = 'Darklaw101';
			Style = 'GitHub';
			Size = "Small";
			CopyToClip = true
		}
	},
	ConfigurationSaving = { -- Allows Config Saving
		Enabled = true,
		FolderName = 'since',
		FileName = "hot"
	},
	AutoJoinDiscord = { 
		Enabled = false, -- Prompt the user to join your Discord server if their executor supports it
		Invite = "CZRZBwPz", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ ABCD would be ABCD
		RememberJoins = false -- Set this to false to make them join the discord every time they load it up
	},
})
local Window =syde:Init({
	Title = 'Sirus'; -- Set Title
	SubText = 'The One and Only Origin' -- Set Subtitle
})
local Tab1 = Window:InitTab({
	Title = 'Welcome', -- Set Title
	-- Locked = false
	-- Key = 'ABC' 
})
-- Key only supports Text for now.
