print("hi")
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
local Paragraph = Tab1:Paragraph({
	Title = "Welcome", -- Title of the Paragraph
	Content = 'Welcome to Sirus! the games supported are: Slap Battles (Teleports)' -- Paragraph Content
})

if game.placeId == 6403373529 then


























---Bed---
   
      if workspace:FindFirstChild("Bed") == nil then
         local Bed = Instance.new("Part")
         Bed.Name = "Bed"
         Bed.Anchored = true
         Bed.Position = Vector3.new(-100019.5, 104, -1500)
         Bed.Size = Vector3.new(0.01, 0.01, 10)
         Bed.Parent = workspace
         
         local B1 = Instance.new("Part")
         B1.Name = "Bed1"
         B1.Anchored = true
         B1.Position = Vector3.new(-100025, 104, -1500)
         B1.Size = Vector3.new(1, 6, 7)
         B1.BrickColor = BrickColor.new("Burnt Sienna")
         B1.Parent = workspace:FindFirstChild("Bed")
         
         local B2 = Instance.new("Part")
         B2.Name = "Bed2"
         B2.Anchored = true
         B2.Position = Vector3.new(-100023, 104.5, -1500)
         B2.Size = Vector3.new(2, 1, 6)
         B2.BrickColor = BrickColor.new("Mid gray")
         B2.Parent = workspace:FindFirstChild("Bed")
         
         local B3 = Instance.new("Part")
         B3.Name = "Bed3"
         B3.Anchored = true
         B3.Position = Vector3.new(-100019, 104, -1500)
         B3.Size = Vector3.new(11, 1, 7)
         B3.BrickColor = BrickColor.new("Crimson")
         B3.Parent = workspace:FindFirstChild("Bed")
         
         local B4 = Instance.new("Part")
         B4.Name = "Bed4"
         B4.Anchored = true
         B4.Position = Vector3.new(-100013, 104, -1500)
         B4.Size = Vector3.new(1, 6, 7)
         B4.BrickColor = BrickColor.new("Burnt Sienna")
         B4.Parent = workspace:FindFirstChild("Bed")
         
         local B5 = Instance.new("Part")
         B5.Name = "Bed5"
         B5.Anchored = true
         B5.Position = Vector3.new(-100019, 103, -1500)
         B5.Size = Vector3.new(11, 1, 7)
         B5.BrickColor = BrickColor.new("Dark orange")
         B5.Parent = workspace:FindFirstChild("Bed")
         end
      
      
      
      function ttostring(tbl)
         if type(tbl) == "table" then
             local result
             for i, v in ipairs(tbl) do
                 result = tostring(v)
                 if i < #tbl then
                      result = result .. ", "
                 end
             end
             result = result
             return result
         else
             return tbl
         end
      end




































    local SLAPTab1 = Window:InitTab({
	Title = 'Map Teleports', -- Set Title
	-- Locked = false
	-- Key = 'ABC' 
})

local Paragraph = SLAPTab1:Paragraph({
	Title = "Notice", -- Title of the Paragraph
	Content = 'Limbo, Retro, and Kraken areas will not reward the badges if teleported there with scripts, and you must show them before you teleport' -- Paragraph Content
})



SLAPTab1:Button({
	Title = 'Kraken', -- Set Title
	Description = 'Welcome to the Abyss (Wont Award Badge)', -- Description (Optional)
	Type = 'Default', -- Type [ Default, Hold ] (Optional)
	HoldTime = 2, -- Hold Time When Type is *Hold
	CallBack = function()
	       game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(194, 35, -12671)
	end,
})

SLAPTab1:Button({
	Title = 'Show Kraken', -- Set Title
	Description = 'Let the Kraken Rise', -- Description (Optional)
	Type = 'Default', -- Type [ Default, Hold ] (Optional)
	HoldTime = 2, -- Hold Time When Type is *Hold
	CallBack = function()
	       game.ReplicatedStorage.AbyssAssets.Abyss.Parent = game.Workspace
	end,
})
SLAPTab1:Button({
	Title = 'Hide Kraken', -- Set Title
	Description = '', -- Description (Optional)
	Type = 'Default', -- Type [ Default, Hold ] (Optional)
	HoldTime = 2, -- Hold Time When Type is *Hold
	CallBack = function()
	       game.Workspace.Abyss.Parent = game.ReplicatedStorage.AbyssAssets
	end,
})

SLAPTab1:Button({
	Title = 'Limbo', -- Set Title
	Description = 'Teleport to Limbo! (Wont Award Badge )', -- Description (Optional)
	Type = 'Default', -- Type [ Default, Hold ] (Optional)
	HoldTime = 2, -- Hold Time When Type is *Hold
	CallBack = function()
	       game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.RepressedMemories.Limbo.CFrame * CFrame.new(0,-5,0)
	end,
})
SLAPTab1:Button({
	Title = 'Show Limbo', -- Set Title
	Description = 'Use this before teleporting to limbo otherwise it will simply make you fall in the void', -- Description (Optional)
	Type = 'Default', -- Type [ Default, Hold ] (Optional)
	HoldTime = 2, -- Hold Time When Type is *Hold
	CallBack = function()
	       game.ReplicatedStorage.RepressedMemoriesMap.Parent = game.Workspace
	end,
})
SLAPTab1:Button({
	Title = 'Hide Limbo', -- Set Title
	Description = 'Get rid of your Repressed Memories', -- Description (Optional)
	Type = 'Default', -- Type [ Default, Hold ] (Optional)
	HoldTime = 2, -- Hold Time When Type is *Hold
	CallBack = function()
	       game.Workspace.RepressedMemoriesMap.Parent = game.ReplicatedStorage
	end,
})


-- retro stuff
SLAPTab1:Button({
	Title = 'Retro Stage 1', -- Set Title
	Description = '', -- Description (Optional)
	Type = 'Default', -- Type [ Default, Hold ] (Optional)
	HoldTime = 2, -- Hold Time When Type is *Hold
	CallBack = function()
	       game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Retro.Map.RetroObbyMap.Spawn.CFrame
	end,
})
SLAPTab1:Button({
	Title = 'Retro stage 2', -- Set Title
	Description = '', -- Description (Optional)
	Type = 'Default', -- Type [ Default, Hold ] (Optional)
	HoldTime = 2, -- Hold Time When Type is *Hold
	CallBack = function()
	       game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Retro.Map.RetroObbyMap.Spawn_stage2.CFrame
	end,
})
SLAPTab1:Button({
	Title = 'Retro stage 3', -- Set Title
	Description = '', -- Description (Optional)
	Type = 'Default', -- Type [ Default, Hold ] (Optional)
	HoldTime = 2, -- Hold Time When Type is *Hold
	CallBack = function()
	       game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Retro.Map.RetroObbyMap.Spawn_stage3.CFrame
	end,
})
SLAPTab1:Button({
	Title = 'Retro end', -- Set Title
	Description = '', -- Description (Optional)
	Type = 'Default', -- Type [ Default, Hold ] (Optional)
	HoldTime = 2, -- Hold Time When Type is *Hold
	CallBack = function()
	       game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.FinishDoor_Retro.Part.CFrame
	end,
})
SLAPTab1:Button({
	Title = 'Show Retro', -- Set Title
	Description = '', -- Description (Optional)
	Type = 'Default', -- Type [ Default, Hold ] (Optional)
	HoldTime = 2, -- Hold Time When Type is *Hold
	CallBack = function()
	       game.ReplicatedStorage.Assets.Retro.Parent = game.Workspace
	end,
})
SLAPTab1:Button({
	Title = 'Hide Retro', -- Set Title
	Description = '', -- Description (Optional)
	Type = 'Default', -- Type [ Default, Hold ] (Optional)
	HoldTime = 2, -- Hold Time When Type is *Hold
	CallBack = function()
	       game.Workspace.Retro.Parent = game.ReplicatedStorage.Assets
	end,
})
end

if game.placeId == 6403373529 then
    local SLAPTab2 = Window:InitTab({
	Title = 'Teleports', -- Set Title
	-- Locked = false
	-- Key = 'ABC' 
})

SLAPTab2:Button({
	Title = 'Enter portal', -- Set Title
	Description = '', -- Description (Optional)
	Type = 'Default', -- Type [ Default, Hold ] (Optional)
	HoldTime = 2, -- Hold Time When Type is *Hold
	CallBack = function()
	       firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport1.TouchInterest.Parent, 0)

	end,
})
SLAPTab2:Button({
	Title = 'Normal Arena', -- Set Title
	Description = '', -- Description (Optional)
	Type = 'Default', -- Type [ Default, Hold ] (Optional)
	HoldTime = 2, -- Hold Time When Type is *Hold
	CallBack = function()
	    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.workspace.Origo.CFrame * CFrame.new(0,-5,0)

	end,
})
SLAPTab2:Button({
	Title = 'Default Arena', -- Set Title
	Description = '', -- Description (Optional)
	Type = 'Default', -- Type [ Default, Hold ] (Optional)
	HoldTime = 2, -- Hold Time When Type is *Hold
	CallBack = function()
	       game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(120,360,-3)

	end,
})
SLAPTab2:Button({
	Title = 'Lobby', -- Set Title
	Description = '', -- Description (Optional)
	Type = 'Default', -- Type [ Default, Hold ] (Optional)
	HoldTime = 2, -- Hold Time When Type is *Hold
	CallBack = function()
	       game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-800,328,-2.5)

	end,
})
SLAPTab2:Button({
	Title = 'Bounty Room', -- Set Title
	Description = '', -- Description (Optional)
	Type = 'Default', -- Type [ Default, Hold ] (Optional)
	HoldTime = 2, -- Hold Time When Type is *Hold
	CallBack = function()
	       game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.workspace.BountyHunterRoom.Union.CFrame * CFrame.new(0,5,0)

	end,
})
SLAPTab2:Button({
	Title = 'Barzil', -- Set Title
	Description = '', -- Description (Optional)
	Type = 'Default', -- Type [ Default, Hold ] (Optional)
	HoldTime = 2, -- Hold Time When Type is *Hold
	CallBack = function()
	       game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.workspace.Lobby.brazil.portal.CFrame

	end,
})
SLAPTab2:Button({
	Title = 'Slapple', -- Set Title
	Description = '', -- Description (Optional)
	Type = 'Default', -- Type [ Default, Hold ] (Optional)
	HoldTime = 2, -- Hold Time When Type is *Hold
	CallBack = function()
	       game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.workspace.Arena.island5.Union.CFrame * CFrame.new(0,3.25,0)

	end,
})
SLAPTab2:Button({
	Title = 'Plate', -- Set Title
	Description = '', -- Description (Optional)
	Type = 'Default', -- Type [ Default, Hold ] (Optional)
	HoldTime = 2, -- Hold Time When Type is *Hold
	CallBack = function()
	       game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Arena.Plate.CFrame

	end,
})
SLAPTab2:Button({
	Title = 'Tournament', -- Set Title
	Description = '', -- Description (Optional)
	Type = 'Default', -- Type [ Default, Hold ] (Optional)
	HoldTime = 2, -- Hold Time When Type is *Hold
	CallBack = function()
	     game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Battlearena.Arena.CFrame * CFrame.new(0,10,0)  

	end,
})
SLAPTab2:Button({
	Title = 'Cannon Island', -- Set Title
	Description = '', -- Description (Optional)
	Type = 'Default', -- Type [ Default, Hold ] (Optional)
	HoldTime = 2, -- Hold Time When Type is *Hold
	CallBack = function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Arena.CannonIsland.Cannon.Base.CFrame * CFrame.new(0,0,35)
	end,
})
SLAPTab2:Button({
	Title = 'Moai Island', -- Set Title
	Description = '', -- Description (Optional)
	Type = 'Default', -- Type [ Default, Hold ] (Optional)
	HoldTime = 2, -- Hold Time When Type is *Hold
	CallBack = function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(215, -15.5, 0.5)
	end,
})
SLAPTab2:Button({
	Title = 'Island 1', -- Set Title
	Description = '', -- Description (Optional)
	Type = 'Default', -- Type [ Default, Hold ] (Optional)
	HoldTime = 2, -- Hold Time When Type is *Hold
	CallBack = function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-6.66747713, -5.06731462, 213.575378, 0.945777893, 2.52095178e-10, 0.324814111, -3.7823856e-08, 1, 1.09357536e-07, -0.324814111, -1.15713661e-07, 0.945777893)
	end,
})
SLAPTab2:Button({
	Title = 'Island 2', -- Set Title
	Description = '', -- Description (Optional)
	Type = 'Default', -- Type [ Default, Hold ] (Optional)
	HoldTime = 2, -- Hold Time When Type is *Hold
	CallBack = function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-211.210846, -5.27827597, 4.13719559, -0.0225322824, 1.83683113e-08, -0.999746144, -1.83560154e-08, 1, 1.87866842e-08, 0.999746144, 1.87746618e-08, -0.0225322824)
	end,
})
SLAPTab2:Button({
	Title = 'Island 3', -- Set Title
	Description = '', -- Description (Optional)
	Type = 'Default', -- Type [ Default, Hold ] (Optional)
	HoldTime = 2, -- Hold Time When Type is *Hold
	CallBack = function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-8.17191315, -5.14452887, -205.249741, -0.98216176, -3.48867246e-09, -0.188037917, -4.19987778e-09, 1, 3.38382322e-09, 0.188037917, 4.11319823e-09, -0.98216176)
	end,
})
SLAPTab2:Button({
	Title = 'Cube of Death', -- Set Title
	Description = '', -- Description (Optional)
	Type = 'Default', -- Type [ Default, Hold ] (Optional)
	HoldTime = 2, -- Hold Time When Type is *Hold
	CallBack = function()
		if game.Workspace:FindFirstChild("the cube of death(i heard it kills)", 1) then
               game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Arena.CubeOfDeathArea["the cube of death(i heard it kills)"].Part.CFrame * CFrame.new(0,5,0)
	end,
})
SLAPTab2:Button({
	Title = 'Bed', -- Set Title
	Description = '', -- Description (Optional)
	Type = 'Default', -- Type [ Default, Hold ] (Optional)
	HoldTime = 2, -- Hold Time When Type is *Hold
	CallBack = function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace["Bed"].Bed3.CFrame * CFrame.new(0,0,-1)

	end,
})
SLAPTab2:Button({
	Title = 'House', -- Set Title
	Description = '', -- Description (Optional)
	Type = 'Default', -- Type [ Default, Hold ] (Optional)
	HoldTime = 2, -- Hold Time When Type is *Hold
	CallBack = function()
		syde:Notify({
	Title = 'NOTICE',
	Content = 'This does not work yet!',
	Duration = 5
	-- Icons Coming Very Soon
	-- Types Coming Very Soon ex. { Options }
})
	end,

end

