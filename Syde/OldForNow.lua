--[[ info
1.line 1-2884 or whatever is slap battles 
2.line 2885 - 3049 = universal
3.line 3050 - 3053 = Info
3.line 3054 - 3065 = Brookhaven

]]--



local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
      local Window = Rayfield:CreateWindow({
        Name = "Project Echo V1.4",
        Icon = 0, -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
        LoadingTitle = "Welcome To Project Echo!",
        LoadingSubtitle = "By Echo",
        Theme = "Amethyst", -- Check https://docs.sirius.menu/rayfield/configuration/themes
         DisableRayfieldPrompts = false,
        DisableBuildWarnings = false, -- Prevents Rayfield from warning when the script has a version mismatch with the interface
      
        ConfigurationSaving = {
           Enabled = true,
           FolderName = nil, -- Create a custom folder for your hub/game
           FileName = "Big Hub"
        },
      
        Discord = {
           Enabled = false, -- Prompt the user to join your Discord server if their executor supports it
           Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ ABCD would be ABCD
           RememberJoins = true -- Set this to false to make them join the discord every time they load it up
        },
      
        KeySystem = false, -- Set this to true to use our key system
        KeySettings = {
           Title = "Untitled",
           Subtitle = "Key System",
           Note = "No method of obtaining the key is provided", -- Use this to tell the user how to get a key
           FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
           SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
           GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
           Key = {"Hello"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
        }
      })




    if not game:IsLoaded() then
  loadstring(game:HttpGet("https://raw.githubusercontent.com/Pro666Pro/OpenSourceScripts/refs/heads/main/Other/ClearNonUsableGloves.luau",true))()
else
end

if not game:IsLoaded() then
  loadstring(game:HttpGet("https://raw.githubusercontent.com/Pro666Pro/OpenSourceScripts/refs/heads/main/UI/MoreButtons.luau",true))()
else
end




if workspace:FindFirstChild("VoidPart") == nil then
local VoidPart = Instance.new("Part", workspace)
VoidPart.Position = Vector3.new(-80.5, -10.005, -246.5)
VoidPart.Name = "VoidPart"
VoidPart.Size = Vector3.new(2048, 1, 2048)
VoidPart.Material = "ForceField"
VoidPart.Anchored = true
VoidPart.Transparency = 1
VoidPart.CanCollide = false

local VoidPart1 = Instance.new("Part", VoidPart)
VoidPart1.Position = Vector3.new(0,-50026.5,0)
VoidPart1.Name = "VoidPart1"
VoidPart1.Size = Vector3.new(2048,70,2048)
VoidPart1.Anchored = true
VoidPart1.Transparency = 1
VoidPart1.CanCollide = false
end




if workspace:FindFirstChild("Baseplate") == nil then

local S = Instance.new("Part")

S.Name = "Baseplate"

S.Anchored = true

S.CanCollide = true

S.Transparency = 0

S.Position = Vector3.new(-10000, -10000, -10000)

S.Size = Vector3.new(1000, 10, 1000)

S.Parent = workspace

end






---SafeSpot---

if workspace:FindFirstChild("Safespot") == nil then
   local Safespot = Instance.new("Part",workspace)
   Safespot.Name = "Safespot"
   Safespot.Position = Vector3.new(10000,-50,10000)
   Safespot.Size = Vector3.new(500,10,500)
   Safespot.Anchored = true
   Safespot.CanCollide = true
   Safespot.Transparency = .5
   
   local Safespot1 = Instance.new("Part",workspace)
   Safespot1.Name = "DefendPart"
   Safespot1.Position = Vector3.new(10000.2, 13, 9752.45)
   Safespot1.Size = Vector3.new(500, 117, 5)
   Safespot1.Anchored = true
   Safespot1.CanCollide = true
   Safespot1.Transparency = .5
   Safespot1.Parent = game.workspace.Safespot
   
   local Safespot2 = Instance.new("Part",workspace)
   Safespot2.Name = "DefendPart1"
   Safespot2.Position = Vector3.new(10248.2, 13, 10002.4)
   Safespot2.Size = Vector3.new(5, 117, 496)
   Safespot2.Anchored = true
   Safespot2.CanCollide = true
   Safespot2.Transparency = .5
   Safespot2.Parent = game.workspace.Safespot
   
   local Safespot3 = Instance.new("Part",workspace)
   Safespot3.Name = "DefendPart2"
   Safespot3.Position = Vector3.new(9998.13, 13, 10247.2)
   Safespot3.Size = Vector3.new(497, 117, 6)
   Safespot3.Anchored = true
   Safespot3.CanCollide = true
   Safespot3.Transparency = .5
   Safespot3.Parent = game.workspace.Safespot
   
   local Safespot4 = Instance.new("Part",workspace)
   Safespot4.Name = "DefendPart3"
   Safespot4.Position = Vector3.new(9752.71, 13, 9999.28)
   Safespot4.Size = Vector3.new(7, 117, 490)
   Safespot4.Anchored = true
   Safespot4.CanCollide = true
   Safespot4.Transparency = .5
   Safespot4.Parent = game.workspace.Safespot
   
   local Safespot5 = Instance.new("Part",workspace)
   Safespot5.Name = "DefendPart4"
   Safespot5.Position = Vector3.new(10001.1, 76, 9999.66)
   Safespot5.Size = Vector3.new(491, 10, 491)
   Safespot5.Anchored = true
   Safespot5.CanCollide = true
   Safespot5.Transparency = .5
   Safespot5.Parent = game.workspace.Safespot
   end
   ---SafeSpotBox---
   
   if workspace:FindFirstChild("SafeBox") == nil then
      local S = Instance.new("Part")
      S.Name = "SafeBox"
      S.Anchored = true
      S.CanCollide = true
      S.Transparency = .5
      S.Position = Vector3.new(-5500, -5000, -5000)
      S.Size = Vector3.new(21, 5, 21)
      S.Parent = workspace
      
      local S1 = Instance.new("Part")
      S1.Name = "S1"
      S1.Anchored = true
      S1.CanCollide = true
      S1.Transparency = .5
      S1.Position = Vector3.new(-5499.91, -4991.5, -4989.09)
      S1.Size = Vector3.new(20, 13, 2)
      S1.Parent = workspace:FindFirstChild("SafeBox")
      
      local S2 = Instance.new("Part")
      S2.Name = "S2"
      S2.Anchored = true
      S2.CanCollide = true
      S2.Transparency = .5
      S2.Position = Vector3.new(-5510.27979, -4991.5, -5000.08984, -4.47034836e-07, 0, 0.999999881, 0, 1, 0, -0.999999881, 0, -3.69319451e-07)
      S2.Size = Vector3.new(21, 14, 2)
      S2.Rotation = Vector3.new(0, -90, 0)
      S2.Parent = workspace:FindFirstChild("SafeBox")
      
      local S3 = Instance.new("Part")
      S3.Name = "S3"
      S3.Anchored = true
      S3.CanCollide = true
      S3.Transparency = .5
      S3.Position = Vector3.new(-5499.3, -4991.5, -5011.12)
      S3.Size = Vector3.new(21, 13, 2)
      S3.Parent = workspace:FindFirstChild("SafeBox")
      
      local S4 = Instance.new("Part")
      S4.Name = "S4"
      S4.Anchored = true
      S4.CanCollide = true
      S4.Transparency = .5
      S4.Position = Vector3.new(-5489.97559, -4991.5, -4999.52637, -4.37113883e-08, 0, 1, 0, 1, 0, -1, 0, -4.37113883e-08)
      S4.Size = Vector3.new(22, 13, 2)
      S4.Rotation = Vector3.new(0, -90, 0)
      S4.Parent = workspace:FindFirstChild("SafeBox")
      
      local S5 = Instance.new("Part")
      S5.Name = "S5"
      S5.Anchored = true
      S5.CanCollide = true
      S5.Transparency = .5
      S5.Position = Vector3.new(-5499.39, -4984, -5000.07)
      S5.Size = Vector3.new(24, 3, 24)
      S5.Parent = workspace:FindFirstChild("SafeBox")
      end
   
   ---SafeSpot---
   
   if workspace:FindFirstChild("Safespot") == nil then
      local Safespot = Instance.new("Part",workspace)
      Safespot.Name = "Safespot"
      Safespot.Position = Vector3.new(10000,-50,10000)
      Safespot.Size = Vector3.new(500,10,500)
      Safespot.Anchored = true
      Safespot.CanCollide = true
      Safespot.Transparency = .5
      
      local Safespot1 = Instance.new("Part",workspace)
      Safespot1.Name = "DefendPart"
      Safespot1.Position = Vector3.new(10000.2, 13, 9752.45)
      Safespot1.Size = Vector3.new(500, 117, 5)
      Safespot1.Anchored = true
      Safespot1.CanCollide = true
      Safespot1.Transparency = .5
      Safespot1.Parent = game.workspace.Safespot
      
      local Safespot2 = Instance.new("Part",workspace)
      Safespot2.Name = "DefendPart1"
      Safespot2.Position = Vector3.new(10248.2, 13, 10002.4)
      Safespot2.Size = Vector3.new(5, 117, 496)
      Safespot2.Anchored = true
      Safespot2.CanCollide = true
      Safespot2.Transparency = .5
      Safespot2.Parent = game.workspace.Safespot
      
      local Safespot3 = Instance.new("Part",workspace)
      Safespot3.Name = "DefendPart2"
      Safespot3.Position = Vector3.new(9998.13, 13, 10247.2)
      Safespot3.Size = Vector3.new(497, 117, 6)
      Safespot3.Anchored = true
      Safespot3.CanCollide = true
      Safespot3.Transparency = .5
      Safespot3.Parent = game.workspace.Safespot
      
      local Safespot4 = Instance.new("Part",workspace)
      Safespot4.Name = "DefendPart3"
      Safespot4.Position = Vector3.new(9752.71, 13, 9999.28)
      Safespot4.Size = Vector3.new(7, 117, 490)
      Safespot4.Anchored = true
      Safespot4.CanCollide = true
      Safespot4.Transparency = .5
      Safespot4.Parent = game.workspace.Safespot
      
      local Safespot5 = Instance.new("Part",workspace)
      Safespot5.Name = "DefendPart4"
      Safespot5.Position = Vector3.new(10001.1, 76, 9999.66)
      Safespot5.Size = Vector3.new(491, 10, 491)
      Safespot5.Anchored = true
      Safespot5.CanCollide = true
      Safespot5.Transparency = .5
      Safespot5.Parent = game.workspace.Safespot
      end
      
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
      
      
      

      
      local InfoTab = Window:CreateTab("Info", "Info")
      local Paragraph = InfoTab:CreateParagraph({Title = "Info", Content = "Hello! Welcome to the Ultimate Slap Battles script containing gloves and more!"})
 local Paragraph = InfoTab:CreateParagraph({Title = "Credits", Content = "First up thank you Nexer1234 for allowing me to use your scripts and credit to everyone's script such as kien and BaconScripter Also OFC credit to me for making this hub and the scripts"})
  local Paragraph = InfoTab:CreateParagraph({Title = "Info", Content = "Hello! Please Notice for some tabs you will have a seperate Ui and that is fine"}) 

local Button = InfoTab:CreateButton({
   Name = "Unload GUI",
   Callback = function()
      Rayfield:Destroy()
   -- The function that takes place when the button is pressed
   end,
})


if game.PlaceId == 129665246576996 then

while task.wait() do
if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(69,4240,2)
end
for i,v in pairs(workspace:GetDescendants()) do
if v and v.Name == "root" and v:FindFirstChildWhichIsA("TouchTransmitter") then
v.CanCollide = false
v.CanTouch = true
v.CanQuery = true
v.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
end
end
if workspace:FindFirstChild("Kenneth") and workspace.Kenneth:FindFirstChild("Head") and workspace.Kenneth.Head:FindFirstChild("ProximityPrompt") then
fireproximityprompt(workspace.Kenneth.Head.ProximityPrompt)
end
end

else
game:GetService("StarterGui"):SetCore("SendNotification",{
	Title = "Message from Nexer1234_AnotherAlt",
	Text = "Wrong game buddy",
    Icon = "rbxassetid://125704683916878",
	Duration = 36000,
	Button1 = "Oh..."
})
end

if game.PlaceId == 74169485398268 then
  local BindTab = Window:CreateTab("Bind", "rewind")
        local Button = BindTab:CreateButton({
         Name = "Auto-Get Bind",
         Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/Pro666Pro/OpenSourceScripts/refs/heads/main/Gloves/BindGlove.luau",true))()
         -- The function that takes place when the button is pressed
         end,
      })
else
end


if game.PlaceId == 18550498098 then
  local STab = Window:CreateTab("Guide Boss", "rewind")
      local Button = STab:CreateButton({
         Name = "Auto-Get Avatar/Hunter",
         Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/Pro666Pro/OpenSourceScripts/refs/heads/main/Gloves/AvatarAndHunterGloves.luau",true))()
         -- The function that takes place when the button is pressed
         end,
      })
      
      local Button = STab:CreateButton({
         Name = "Auto-Get Avatar/Relude",
         Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/Pro666Pro/OpenSourceScripts/refs/heads/main/Gloves/AvatarAndReludeGloves.luau",true))()
         -- The function that takes place when the button is pressed
         end,
      })
else
end
      

if game.Players.LocalPlayer.leaderstats.Glove.Value == "Eggler" then
    CTab = Window:CreateTab("Admin", "Apple")
  local Button = CTab:CreateButton({
   Name = "Death",
   Callback = function()
-- Ensure GloveStand folder exists in workspace
local gloveStandFolder = workspace:FindFirstChild("GloveStand") or Instance.new("Folder", workspace)
gloveStandFolder.Name = "GloveStand"

-- Create GloveStand model
local gloveModel = Instance.new("Model")
gloveModel.Name = "DEATH_GloveStand"
gloveModel.Parent = gloveStandFolder

-- Create the mesh part (the actual glove)
local meshPart = Instance.new("MeshPart")
meshPart.Name = "GloveMesh"
meshPart.Size = Vector3.new(1, 1, 1)
meshPart.Position = Vector3.new(-889.4178466796875, 326.9892272949219, -22.6553955078125)
meshPart.Orientation = Vector3.new(0, 270, 0)
meshPart.Anchored = true
meshPart.CanCollide = true
meshPart.MeshId = "rbxassetid://7054939800"
meshPart.Parent = gloveModel

-- Add outline using SelectionBox
local outline = Instance.new("SelectionBox")
outline.Adornee = meshPart
outline.LineThickness = 0.05
outline.Color3 = Color3.new(1, 0, 0)
outline.Parent = meshPart

-- Add shadows with SurfaceGui
local function addShadow(face)
	local gui = Instance.new("SurfaceGui")
	gui.Face = face
	gui.AlwaysOnTop = true
	gui.Adornee = meshPart
	gui.Parent = meshPart

	local shadow = Instance.new("Frame")
	shadow.Size = UDim2.new(1, 0, 1, 0)
	shadow.BackgroundColor3 = Color3.new(0, 0, 0)
	shadow.BackgroundTransparency = 0.7
	shadow.BorderSizePixel = 0
	shadow.Parent = gui
end

for _, face in pairs(Enum.NormalId:GetEnumItems()) do
	addShadow(face)
end

-- BillboardGui for "DEATH" label
local billboardGui = Instance.new("BillboardGui")
billboardGui.Size = UDim2.new(0, 100, 0, 25)
billboardGui.StudsOffset = Vector3.new(0, 2, 0)
billboardGui.AlwaysOnTop = true
billboardGui.Parent = meshPart

local textLabel = Instance.new("TextLabel")
textLabel.Size = UDim2.new(1, 0, 1, 0)
textLabel.BackgroundTransparency = 1
textLabel.Text = "DEATH"
textLabel.TextColor3 = Color3.new(1, 0, 0)
textLabel.Font = Enum.Font.GothamBlack
textLabel.TextSize = 16
textLabel.Parent = billboardGui

-- SlapsInfoPart
local slapsInfoPart = Instance.new("Part")
slapsInfoPart.Name = "SlapsInfoPart"
slapsInfoPart.Size = Vector3.new(3, 1, 1)
slapsInfoPart.Position = Vector3.new(-889.4178466796875, 325.5, -22.6553955078125)
slapsInfoPart.Anchored = true
slapsInfoPart.Transparency = 1
slapsInfoPart.CanCollide = false
slapsInfoPart.Parent = gloveModel

-- GloveDesc Billboard GUI
local gloveDesc = Instance.new("BillboardGui")
gloveDesc.Name = "GloveDesc"
gloveDesc.Size = UDim2.new(0, 180, 0, 110)
gloveDesc.StudsOffset = Vector3.new(0, 2, 0)
gloveDesc.AlwaysOnTop = true
gloveDesc.Parent = slapsInfoPart

-- DescOutline
local descOutline = Instance.new("Frame")
descOutline.Name = "DescOutline"
descOutline.Size = UDim2.new(1, 0, 1, 0)
descOutline.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
descOutline.BorderSizePixel = 0
descOutline.Parent = gloveDesc

local outlineCorner = Instance.new("UICorner")
outlineCorner.CornerRadius = UDim.new(0, 6)
outlineCorner.Parent = descOutline

-- Descframe
local descFrame = Instance.new("Frame")
descFrame.Name = "Descframe"
descFrame.Size = UDim2.new(0.95, 0, 0.95, 0)
descFrame.Position = UDim2.new(0.025, 0, 0.025, 0)
descFrame.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
descFrame.BorderSizePixel = 0
descFrame.Parent = descOutline

local innerCorner = Instance.new("UICorner")
innerCorner.CornerRadius = UDim.new(0, 6)
innerCorner.Parent = descFrame

-- Helper to make fixed-size labels
local function createLabel(name, text, yOffset)
	local label = Instance.new("TextLabel")
	label.Name = name
	label.Size = UDim2.new(1, -10, 0, 20)
	label.Position = UDim2.new(0, 5, 0, yOffset)
	label.BackgroundTransparency = 1
	label.TextColor3 = Color3.new(1, 1, 1)
	label.TextSize = 14
	label.Font = Enum.Font.Gotham
	label.TextXAlignment = Enum.TextXAlignment.Left
	label.Text = text
	label.Parent = descFrame
end

-- Add info labels
createLabel("Ability", "Ability: D E A T H", 5)
createLabel("Name", "Name: D E A T H", 30)
createLabel("Power", "Power: 44", 55)
createLabel("Speed", "Speed: 16", 80)

-- Default part (moved up on Y-axis)
local defaultPart = Instance.new("Part")
defaultPart.Name = "Default"
defaultPart.Size = Vector3.new(1, 1, 1)
defaultPart.Position = Vector3.new(-889.4178466796875, 329.5, -22.6553955078125)
defaultPart.Orientation = Vector3.new(180, 0, 0)
defaultPart.Anchored = true
defaultPart.CanCollide = true
defaultPart.BrickColor = BrickColor.new("Really black")
defaultPart.Parent = gloveModel

-- SpecialMesh
local mesh = Instance.new("SpecialMesh")
mesh.MeshType = Enum.MeshType.FileMesh
mesh.MeshId = "http://www.roblox.com/asset/?id=32054761"
mesh.Parent = defaultPart

-- ClickDetector (ClickDenator)
local clickDetector = Instance.new("ClickDetector")
clickDetector.Name = "ClickDenator"
clickDetector.MaxActivationDistance = 32
clickDetector.Parent = defaultPart

-- Execute code on click
clickDetector.MouseClick:Connect(function(player)
	pcall(function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/IMNOTFFBG8/DEATHGLOVE/refs/heads/main/DEATHGLOVE"))()
	end)
end)
   -- The function that takes place when the button is pressed
    end
})
 
local Button = CTab:CreateButton({
   Name = "UnGhost",
   Callback = function()
game:GetService("ReplicatedStorage").Ghostinvisibilitydeactivated:FireServer()
   -- The function that takes place when the button is pressed
   end,
})

    local Button = CTab:CreateButton({
   Name = "Project EchoV2 Test",
   Callback = function()
        loadstring(game:HttpGet("https://pastefy.app/DAzpA3ww",true))()
   -- The function that takes place when the button is pressed
   end,
})
  
  
  local Button = CTab:CreateButton({
   Name = "Become Invisible",
   Callback = function()
loadstring(game:HttpGet("https://pastefy.app/G5T2nMZp/raw",true))()
	 end,
}) 
  
     local Button = CTab:CreateButton({
   Name = "Safe GodHuman",
   Callback = function()
      --[[Cracked by cracking team and chineseguy_777]]
-- this shit is bad as the original
if not game:IsLoaded() then game.Loaded:Wait() end
if game.Players.LocalPlayer.leaderstats.Glove.Value ~= "Dual" then 
    fireclickdetector(game.Workspace.Lobby.Dual.ClickDetector) 
end

local t = Instance.new("Trail")
t.Parent = game.Players.LocalPlayer.Character or game.Players.LocalPlayer.CharacterAdded:Wait():WaitForChild("HumanoidRootPart")

local a0 = Instance.new("Attachment", game.Players.LocalPlayer.Character.HumanoidRootPart)
a0.Position = Vector3.new(0, 0.5, 0)

local a1 = Instance.new("Attachment", game.Players.LocalPlayer.Character.HumanoidRootPart)
a1.Position = Vector3.new(0, -0.5, 0)

t.Attachment0 = a0
t.Attachment1 = a1
t.Color = ColorSequence.new(Color3.new(1,1,1))
t.WidthScale = NumberSequence.new(0.15)
t.Transparency = NumberSequence.new(0)
t.Lifetime = 0.3
t.LightEmission = 1
t.LightInfluence = 0
t.Enabled = false

game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(21.782217, -5.1728549, 0.126389593, 0.8282848, 3.24886145e-08, 0.560307324, -2.53532892e-08, 1, -2.05045847e-08, -0.560307324, 2.77800249e-09, 0.8282848)
local gh = Instance.new("Tool")
gh.Name = "GodHuman"
gh.TextureId = "rbxassetid://140009737356934"

local handle = Instance.new("Part")
handle.Name = "Handle"
handle.Size = Vector3.new(1, 4, 1)
handle.CanCollide = false
handle.Transparency = 1
handle.Parent = gh

local s = Instance.new("ScreenGui")
s.Name = "GHG"
s.ResetOnSpawn = false
s.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
local zbt = Instance.new("TextButton")
zbt.Size = UDim2.new(0.15, 0, 0.168, 0)
zbt.AnchorPoint = Vector2.new(0.5, 0.5)
zbt.Position = UDim2.new(0.9, 0, 0.4, 0)
zbt.BackgroundColor3 = Color3.new(0, 0, 0)
zbt.BackgroundTransparency = 0.25
zbt.Text = "Z"
zbt.TextColor3 = Color3.new(1, 1, 1)
zbt.Font = Enum.Font.FredokaOne
zbt.TextScaled = true
zbt.BorderSizePixel = 2
zbt.BorderColor3 = Color3.new(1, 1, 1)
zbt.Visible = false
zbt.Parent = s

local uicorner = Instance.new("UICorner")
uicorner.CornerRadius = UDim.new(0.3, 0)
uicorner.Parent = zbt


gh.Equipped:Connect(function()
    zbt.Visible = true
end)

gh.Unequipped:Connect(function()
    zbt.Visible = false
end)

gh.Parent = game.Players.LocalPlayer.Backpack


local hs = game.Players.LocalPlayer.Character.HumanoidRootPart.Size
zbt.MouseButton1Click:Connect(function()
  for _, plr in ipairs(game.Players:GetPlayers()) do
    if plr ~= game.Players.LocalPlayer and plr.Character and plr.Character:FindFirstChild("HumanoidRootPart") then
        plr.Character.HumanoidRootPart.Size = hs + Vector3.new(2, 2, 2)
    end
end 
	local ts = game:GetService("TweenService")
	local rs = game:GetService("RunService")
	local hrp = game.Players.LocalPlayer.Character.HumanoidRootPart
	if not hrp then return end
	
	local p = Instance.new("Part", workspace)
	p.Anchored = true
	p.CanCollide = false
	p.Transparency = 1
	p.Size = Vector3.new(1, 1, 1)
	p.CFrame = hrp.CFrame + workspace.CurrentCamera.CFrame.LookVector * 30
	
	ts:Create(hrp, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {CFrame = p.CFrame}):Play()
	
	local run = true
	
	local function spb()
		local s = Instance.new("Part")
		s.Shape = Enum.PartType.Ball
		s.Material = Enum.Material.SmoothPlastic
		s.Size = Vector3.new(8, 8, 8)
		s.Color = Color3.new(1, 1, 1)
		s.Transparency = 1
		s.Anchored = true
		s.CanCollide = false
		s.CFrame = hrp.CFrame + Vector3.new(math.random(-3, 3), math.random(-3, 3), math.random(-3, 3))
		s.Parent = workspace
		
		ts:Create(s, TweenInfo.new(0.15), {Transparency = 0.35}):Play()
		
		task.delay(0.25, function()
			if s then s:Destroy() end
		end)
	end
	
	task.spawn(function()
		while run do
			spb()
			task.wait(0.03)
		end
	end)
	
	task.wait(0.3)
	
	local tgt
	for _, v in pairs(game.Players:GetPlayers()) do
		if v ~= game.Players.LocalPlayer and v.Character and v.Character:FindFirstChild("HumanoidRootPart") then
			if (v.Character.HumanoidRootPart.Position - hrp.Position).Magnitude < 5 then
				tgt = v.Character
				break
			end
		end
	end
	
	if tgt then
		local t0 = tick()
		local hit = false
		
		while tick() - t0 < 1.7 do
			if (hrp.Position - tgt.HumanoidRootPart.Position).Magnitude < 3 then
				hit = true
				break
			end
			local o = Vector3.new(math.random(-2, 2), math.random(-1, 2), math.random(-2, 2))
			hrp.CFrame = CFrame.new(tgt:GetPivot().Position + o)
			rs.RenderStepped:Wait()
		end
		if hit then
    t.Enabled = true
			local t1 = tick()
			while tick() - t1 < 1.75 do
				for _, part in ipairs(tgt:GetChildren()) do
					if part:IsA("BasePart") then
						hrp.CFrame = part.CFrame + Vector3.new(math.random(-1, 1), math.random(-1, 1), math.random(-1, 1))
						rs.RenderStepped:Wait()
					end
				end
			end
		end
		run = false
		t.Enabled = false
		game.ReplicatedStorage.GeneralHit:FireServer(tgt:FindFirstChild("Left Arm"))
	else
		run = false
		
		local n, d = nil, math.huge
		for _, v in ipairs(game.Players:GetPlayers()) do
			if v ~= game.Players.LocalPlayer and v.Character and v.Character:FindFirstChild("HumanoidRootPart") then
				local m = (hrp.Position - v.Character.HumanoidRootPart.Position).Magnitude
				if m < d then
					d = m
					n = v
				end
			end
		end
		
		if n then
			game.ReplicatedStorage.GeneralHit:FireServer(n.Character:FindFirstChild("Left Arm"))
		end
	end
	
	task.wait(1)
	p:Destroy()
end)
   end,
})

local Button = CTab:CreateButton({
   Name = "Saber",
   Callback = function()
      local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local rootPart = character:WaitForChild("HumanoidRootPart")
local humanoid = character:FindFirstChildOfClass("Humanoid")

-- GUI Setup (Start or Nah)
local screenGui = Instance.new("ScreenGui")
screenGui.Parent = game.CoreGui

local mainFrame = Instance.new("Frame")
mainFrame.Size = UDim2.new(0, 250, 0, 150)
mainFrame.Position = UDim2.new(0.5, -125, 0.4, -75)
mainFrame.BackgroundColor3 = Color3.fromRGB(255, 0, 0)

-- Apply Gradient Effect
local uiGradient = Instance.new("UIGradient")
uiGradient.Color = ColorSequence.new{
    ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 0, 0)),  
    ColorSequenceKeypoint.new(1, Color3.fromRGB(0, 0, 255))   
}
uiGradient.Parent = mainFrame

-- Rounded Corners
local uiCorner = Instance.new("UICorner")
uiCorner.CornerRadius = UDim.new(0, 15)
uiCorner.Parent = mainFrame

mainFrame.Active = true
mainFrame.Draggable = true
mainFrame.Parent = screenGui

local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, 0, 0.3, 0)
title.Text = "Made by @IMNOTFFBG8 - Showcased and asked to make by @Corrupt_Echo"
title.TextColor3 = Color3.new(1, 1, 1)
title.Font = Enum.Font.Arcade
title.TextScaled = true
title.BackgroundTransparency = 1
title.Parent = mainFrame

-- Create Button (Fixed version with parent)
local function createButton(text, pos, parent)
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(0.3, 0, 0.3, 0)
    button.Position = pos
    button.Text = text
    button.Font = Enum.Font.Arcade
    button.TextScaled = true
    button.TextColor3 = Color3.new(0, 0, 0)

    local buttonGradient = Instance.new("UIGradient")
    buttonGradient.Color = ColorSequence.new{
        ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 0, 0)),  
        ColorSequenceKeypoint.new(1, Color3.fromRGB(0, 0, 255))   
    }
    buttonGradient.Parent = button

    local buttonCorner = Instance.new("UICorner")
    buttonCorner.CornerRadius = UDim.new(0, 10)
    buttonCorner.Parent = button

    button.Parent = parent
    return button
end

local startButton = createButton("Start", UDim2.new(0.05, 0, 0.6, 0), mainFrame)
local nahButton = createButton("Nah", UDim2.new(0.65, 0, 0.6, 0), mainFrame)

local function startScript()
    screenGui:Destroy()

    -- Teleport Player to a Specific CFrame Position
    rootPart.CFrame = CFrame.new(0, 10, 0)

    -- Play Background Music
    local sound = Instance.new("Sound")
    sound.SoundId = "rbxassetid://1835322563"
    sound.Volume = 5
    sound.Looped = true
    sound.Parent = game:GetService("SoundService")
    sound:Play()

    -- Apply Custom Animations
    local animate = character:FindFirstChild("Animate")
    if animate then
        animate.idle.Animation1.AnimationId = "rbxassetid://16163355836"
        animate.idle.Animation2.AnimationId = "rbxassetid://16163355836"
        animate.walk.WalkAnim.AnimationId = "rbxassetid://16163350920"
    end

    -- Saber Glove GUI
    local gui = Instance.new("ScreenGui")
    gui.Parent = game.CoreGui

    local frame = Instance.new("Frame")
    frame.Size = UDim2.new(0, 200, 0, 150)
    frame.Position = UDim2.new(0.5, -100, 0.5, -75)
    frame.BackgroundColor3 = Color3.fromRGB(50, 50, 50)

    local uiGradientGui = Instance.new("UIGradient")
    uiGradientGui.Color = ColorSequence.new{
        ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 0, 0)),
        ColorSequenceKeypoint.new(1, Color3.fromRGB(0, 0, 255))
    }
    uiGradientGui.Parent = frame

    local uiCornerGui = Instance.new("UICorner")
    uiCornerGui.CornerRadius = UDim.new(0, 15)
    uiCornerGui.Parent = frame

    frame.Active = true
    frame.Draggable = true
    frame.Parent = gui

    local title = Instance.new("TextLabel")
    title.Size = UDim2.new(1, 0, 0.2, 0)
    title.Text = "Saber Glove"
    title.Font = Enum.Font.Arcade
    title.TextScaled = true
    title.TextColor3 = Color3.new(1, 1, 1)
    title.BackgroundTransparency = 1
    title.Parent = frame

    local hitboxButton = createButton("HIT", UDim2.new(0.05, 0, 0.4, 0), frame)
    local eButton = createButton("E", UDim2.new(0.35, 0, 0.4, 0), frame)
    local rButton = createButton("R", UDim2.new(0.65, 0, 0.4, 0), frame)

    -- HIT Toggle
    hitboxButton.MouseButton1Click:Connect(function()
        game:GetService("ReplicatedStorage").RetroAbility:FireServer("Ban Hammer")
    end)

    -- E Button: Teleport to Nearest Player
    eButton.MouseButton1Click:Connect(function()
        local players = game:GetService("Players")
        local nearestPlayer, shortestDistance = nil, math.huge

        for _, plr in pairs(players:GetPlayers()) do
            if plr ~= player and plr.Character then
                local targetRoot = plr.Character:FindFirstChild("HumanoidRootPart")
                if targetRoot then
                    local distance = (rootPart.Position - targetRoot.Position).Magnitude
                    if distance < shortestDistance then
                        shortestDistance = distance
                        nearestPlayer = targetRoot
                    end
                end
            end
        end

        if nearestPlayer then
            local args = {
                [1] = "default",
                [2] = {
                    ["goal"] = nearestPlayer.CFrame,
                    ["origin"] = rootPart.CFrame
                }
            }
            game:GetService("ReplicatedStorage").GeneralAbility:FireServer(unpack(args))
        end
    end)

    -- R Button: Activate Ultimate
    rButton.MouseButton1Click:Connect(function()
        local args = {
            [1] = "ultimate",
            [2] = {
                ["goal"] = CFrame.new(-96.98, -5.17, -37.43),
                ["origin"] = CFrame.new(-31.54, -5.17, 8.58)
            }
        }
        game:GetService("ReplicatedStorage"):WaitForChild("GeneralAbility"):FireServer(unpack(args))
    end)

    -- Reset on Death
    humanoid.Died:Connect(function()
        gui:Destroy()
        sound:Destroy()
    end)
end

startButton.MouseButton1Click:Connect(startScript)
nahButton.MouseButton1Click:Connect(function()
    screenGui:Destroy()
end)
    end
  })
  
  local Paragraph = CTab:CreateParagraph({Title = "Premium", Content = "Welcome Admin! you are officaly an admin of Project echo so hit the button below for the Premium Tab and use Eggler and execute to get back here!"})

local Button = CTab:CreateButton({
   Name = "Equip Spin",
   Callback = function()
      fireclickdetector(game.Workspace.Lobby.Frostbite.ClickDetector)
        loadstring(game:HttpGet("https://pastefy.app/kpPOqBW3/raw",true))()
   -- The function that takes place when the button is pressed
   end,
})


else
end

if game.Players.LocalPlayer.leaderstats.Glove.Value == "Frostbite" then
    ATab = Window:CreateTab("Early", "Apple")
  

  

  
  local Toggle = ATab:CreateToggle({
   Name = "Slapple",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
      	    SlappleFarm = Value
while SlappleFarm do
if game.Players.LocalPlayer.Character:FindFirstChild("entered") then
for i, v in pairs(workspace.Arena.island5.Slapples:GetChildren()) do
                if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and game.Players.LocalPlayer.Character:FindFirstChild("entered") and v.Name == "Slapple" or v.Name == "GoldenSlapple" and v:FindFirstChild("Glove") and v.Glove:FindFirstChildWhichIsA("TouchTransmitter") then
                    firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Glove, 0)
                    firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Glove, 1)
                end
            end
       end
task.wait()
end
	end    
})

  

  
        
  local Button = ATab:CreateButton({
   Name = "Death",
   Callback = function()
-- Ensure GloveStand folder exists in workspace
local gloveStandFolder = workspace:FindFirstChild("GloveStand") or Instance.new("Folder", workspace)
gloveStandFolder.Name = "GloveStand"

-- Create GloveStand model
local gloveModel = Instance.new("Model")
gloveModel.Name = "DEATH_GloveStand"
gloveModel.Parent = gloveStandFolder

-- Create the mesh part (the actual glove)
local meshPart = Instance.new("MeshPart")
meshPart.Name = "GloveMesh"
meshPart.Size = Vector3.new(1, 1, 1)
meshPart.Position = Vector3.new(-889.4178466796875, 326.9892272949219, -22.6553955078125)
meshPart.Orientation = Vector3.new(0, 270, 0)
meshPart.Anchored = true
meshPart.CanCollide = true
meshPart.MeshId = "rbxassetid://7054939800"
meshPart.Parent = gloveModel

-- Add outline using SelectionBox
local outline = Instance.new("SelectionBox")
outline.Adornee = meshPart
outline.LineThickness = 0.05
outline.Color3 = Color3.new(1, 0, 0)
outline.Parent = meshPart

-- Add shadows with SurfaceGui
local function addShadow(face)
	local gui = Instance.new("SurfaceGui")
	gui.Face = face
	gui.AlwaysOnTop = true
	gui.Adornee = meshPart
	gui.Parent = meshPart

	local shadow = Instance.new("Frame")
	shadow.Size = UDim2.new(1, 0, 1, 0)
	shadow.BackgroundColor3 = Color3.new(0, 0, 0)
	shadow.BackgroundTransparency = 0.7
	shadow.BorderSizePixel = 0
	shadow.Parent = gui
end

for _, face in pairs(Enum.NormalId:GetEnumItems()) do
	addShadow(face)
end

-- BillboardGui for "DEATH" label
local billboardGui = Instance.new("BillboardGui")
billboardGui.Size = UDim2.new(0, 100, 0, 25)
billboardGui.StudsOffset = Vector3.new(0, 2, 0)
billboardGui.AlwaysOnTop = true
billboardGui.Parent = meshPart

local textLabel = Instance.new("TextLabel")
textLabel.Size = UDim2.new(1, 0, 1, 0)
textLabel.BackgroundTransparency = 1
textLabel.Text = "DEATH"
textLabel.TextColor3 = Color3.new(1, 0, 0)
textLabel.Font = Enum.Font.GothamBlack
textLabel.TextSize = 16
textLabel.Parent = billboardGui

-- SlapsInfoPart
local slapsInfoPart = Instance.new("Part")
slapsInfoPart.Name = "SlapsInfoPart"
slapsInfoPart.Size = Vector3.new(3, 1, 1)
slapsInfoPart.Position = Vector3.new(-889.4178466796875, 325.5, -22.6553955078125)
slapsInfoPart.Anchored = true
slapsInfoPart.Transparency = 1
slapsInfoPart.CanCollide = false
slapsInfoPart.Parent = gloveModel

-- GloveDesc Billboard GUI
local gloveDesc = Instance.new("BillboardGui")
gloveDesc.Name = "GloveDesc"
gloveDesc.Size = UDim2.new(0, 180, 0, 110)
gloveDesc.StudsOffset = Vector3.new(0, 2, 0)
gloveDesc.AlwaysOnTop = true
gloveDesc.Parent = slapsInfoPart

-- DescOutline
local descOutline = Instance.new("Frame")
descOutline.Name = "DescOutline"
descOutline.Size = UDim2.new(1, 0, 1, 0)
descOutline.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
descOutline.BorderSizePixel = 0
descOutline.Parent = gloveDesc

local outlineCorner = Instance.new("UICorner")
outlineCorner.CornerRadius = UDim.new(0, 6)
outlineCorner.Parent = descOutline

-- Descframe
local descFrame = Instance.new("Frame")
descFrame.Name = "Descframe"
descFrame.Size = UDim2.new(0.95, 0, 0.95, 0)
descFrame.Position = UDim2.new(0.025, 0, 0.025, 0)
descFrame.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
descFrame.BorderSizePixel = 0
descFrame.Parent = descOutline

local innerCorner = Instance.new("UICorner")
innerCorner.CornerRadius = UDim.new(0, 6)
innerCorner.Parent = descFrame

-- Helper to make fixed-size labels
local function createLabel(name, text, yOffset)
	local label = Instance.new("TextLabel")
	label.Name = name
	label.Size = UDim2.new(1, -10, 0, 20)
	label.Position = UDim2.new(0, 5, 0, yOffset)
	label.BackgroundTransparency = 1
	label.TextColor3 = Color3.new(1, 1, 1)
	label.TextSize = 14
	label.Font = Enum.Font.Gotham
	label.TextXAlignment = Enum.TextXAlignment.Left
	label.Text = text
	label.Parent = descFrame
end

-- Add info labels
createLabel("Ability", "Ability: D E A T H", 5)
createLabel("Name", "Name: D E A T H", 30)
createLabel("Power", "Power: 44", 55)
createLabel("Speed", "Speed: 16", 80)

-- Default part (moved up on Y-axis)
local defaultPart = Instance.new("Part")
defaultPart.Name = "Default"
defaultPart.Size = Vector3.new(1, 1, 1)
defaultPart.Position = Vector3.new(-889.4178466796875, 329.5, -22.6553955078125)
defaultPart.Orientation = Vector3.new(180, 0, 0)
defaultPart.Anchored = true
defaultPart.CanCollide = true
defaultPart.BrickColor = BrickColor.new("Really black")
defaultPart.Parent = gloveModel

-- SpecialMesh
local mesh = Instance.new("SpecialMesh")
mesh.MeshType = Enum.MeshType.FileMesh
mesh.MeshId = "http://www.roblox.com/asset/?id=32054761"
mesh.Parent = defaultPart

-- ClickDetector (ClickDenator)
local clickDetector = Instance.new("ClickDetector")
clickDetector.Name = "ClickDenator"
clickDetector.MaxActivationDistance = 32
clickDetector.Parent = defaultPart

-- Execute code on click
clickDetector.MouseClick:Connect(function(player)
	pcall(function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/IMNOTFFBG8/DEATHGLOVE/refs/heads/main/DEATHGLOVE"))()
	end)
end)
   -- The function that takes place when the button is pressed
    end
})
 
local Button = ATab:CreateButton({
   Name = "UnGhost",
   Callback = function()
game:GetService("ReplicatedStorage").Ghostinvisibilitydeactivated:FireServer()
   -- The function that takes place when the button is pressed
   end,
})

     local Button = ATab:CreateButton({
   Name = "Safe GodHuman",
   Callback = function()
      --[[Cracked by cracking team and chineseguy_777]]
-- this shit is bad as the original
if not game:IsLoaded() then game.Loaded:Wait() end
if game.Players.LocalPlayer.leaderstats.Glove.Value ~= "Dual" then 
    fireclickdetector(game.Workspace.Lobby.Dual.ClickDetector) 
end

local t = Instance.new("Trail")
t.Parent = game.Players.LocalPlayer.Character or game.Players.LocalPlayer.CharacterAdded:Wait():WaitForChild("HumanoidRootPart")

local a0 = Instance.new("Attachment", game.Players.LocalPlayer.Character.HumanoidRootPart)
a0.Position = Vector3.new(0, 0.5, 0)

local a1 = Instance.new("Attachment", game.Players.LocalPlayer.Character.HumanoidRootPart)
a1.Position = Vector3.new(0, -0.5, 0)

t.Attachment0 = a0
t.Attachment1 = a1
t.Color = ColorSequence.new(Color3.new(1,1,1))
t.WidthScale = NumberSequence.new(0.15)
t.Transparency = NumberSequence.new(0)
t.Lifetime = 0.3
t.LightEmission = 1
t.LightInfluence = 0
t.Enabled = false

game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(21.782217, -5.1728549, 0.126389593, 0.8282848, 3.24886145e-08, 0.560307324, -2.53532892e-08, 1, -2.05045847e-08, -0.560307324, 2.77800249e-09, 0.8282848)
local gh = Instance.new("Tool")
gh.Name = "GodHuman"
gh.TextureId = "rbxassetid://140009737356934"

local handle = Instance.new("Part")
handle.Name = "Handle"
handle.Size = Vector3.new(1, 4, 1)
handle.CanCollide = false
handle.Transparency = 1
handle.Parent = gh

local s = Instance.new("ScreenGui")
s.Name = "GHG"
s.ResetOnSpawn = false
s.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
local zbt = Instance.new("TextButton")
zbt.Size = UDim2.new(0.15, 0, 0.168, 0)
zbt.AnchorPoint = Vector2.new(0.5, 0.5)
zbt.Position = UDim2.new(0.9, 0, 0.4, 0)
zbt.BackgroundColor3 = Color3.new(0, 0, 0)
zbt.BackgroundTransparency = 0.25
zbt.Text = "Z"
zbt.TextColor3 = Color3.new(1, 1, 1)
zbt.Font = Enum.Font.FredokaOne
zbt.TextScaled = true
zbt.BorderSizePixel = 2
zbt.BorderColor3 = Color3.new(1, 1, 1)
zbt.Visible = false
zbt.Parent = s

local uicorner = Instance.new("UICorner")
uicorner.CornerRadius = UDim.new(0.3, 0)
uicorner.Parent = zbt


gh.Equipped:Connect(function()
    zbt.Visible = true
end)

gh.Unequipped:Connect(function()
    zbt.Visible = false
end)

gh.Parent = game.Players.LocalPlayer.Backpack


local hs = game.Players.LocalPlayer.Character.HumanoidRootPart.Size
zbt.MouseButton1Click:Connect(function()
  for _, plr in ipairs(game.Players:GetPlayers()) do
    if plr ~= game.Players.LocalPlayer and plr.Character and plr.Character:FindFirstChild("HumanoidRootPart") then
        plr.Character.HumanoidRootPart.Size = hs + Vector3.new(2, 2, 2)
    end
end 
	local ts = game:GetService("TweenService")
	local rs = game:GetService("RunService")
	local hrp = game.Players.LocalPlayer.Character.HumanoidRootPart
	if not hrp then return end
	
	local p = Instance.new("Part", workspace)
	p.Anchored = true
	p.CanCollide = false
	p.Transparency = 1
	p.Size = Vector3.new(1, 1, 1)
	p.CFrame = hrp.CFrame + workspace.CurrentCamera.CFrame.LookVector * 30
	
	ts:Create(hrp, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {CFrame = p.CFrame}):Play()
	
	local run = true
	
	local function spb()
		local s = Instance.new("Part")
		s.Shape = Enum.PartType.Ball
		s.Material = Enum.Material.SmoothPlastic
		s.Size = Vector3.new(8, 8, 8)
		s.Color = Color3.new(1, 1, 1)
		s.Transparency = 1
		s.Anchored = true
		s.CanCollide = false
		s.CFrame = hrp.CFrame + Vector3.new(math.random(-3, 3), math.random(-3, 3), math.random(-3, 3))
		s.Parent = workspace
		
		ts:Create(s, TweenInfo.new(0.15), {Transparency = 0.35}):Play()
		
		task.delay(0.25, function()
			if s then s:Destroy() end
		end)
	end
	
	task.spawn(function()
		while run do
			spb()
			task.wait(0.03)
		end
	end)
	
	task.wait(0.3)
	
	local tgt
	for _, v in pairs(game.Players:GetPlayers()) do
		if v ~= game.Players.LocalPlayer and v.Character and v.Character:FindFirstChild("HumanoidRootPart") then
			if (v.Character.HumanoidRootPart.Position - hrp.Position).Magnitude < 5 then
				tgt = v.Character
				break
			end
		end
	end
	
	if tgt then
		local t0 = tick()
		local hit = false
		
		while tick() - t0 < 1.7 do
			if (hrp.Position - tgt.HumanoidRootPart.Position).Magnitude < 3 then
				hit = true
				break
			end
			local o = Vector3.new(math.random(-2, 2), math.random(-1, 2), math.random(-2, 2))
			hrp.CFrame = CFrame.new(tgt:GetPivot().Position + o)
			rs.RenderStepped:Wait()
		end
		if hit then
    t.Enabled = true
			local t1 = tick()
			while tick() - t1 < 1.75 do
				for _, part in ipairs(tgt:GetChildren()) do
					if part:IsA("BasePart") then
						hrp.CFrame = part.CFrame + Vector3.new(math.random(-1, 1), math.random(-1, 1), math.random(-1, 1))
						rs.RenderStepped:Wait()
					end
				end
			end
		end
		run = false
		t.Enabled = false
		game.ReplicatedStorage.GeneralHit:FireServer(tgt:FindFirstChild("Left Arm"))
	else
		run = false
		
		local n, d = nil, math.huge
		for _, v in ipairs(game.Players:GetPlayers()) do
			if v ~= game.Players.LocalPlayer and v.Character and v.Character:FindFirstChild("HumanoidRootPart") then
				local m = (hrp.Position - v.Character.HumanoidRootPart.Position).Magnitude
				if m < d then
					d = m
					n = v
				end
			end
		end
		
		if n then
			game.ReplicatedStorage.GeneralHit:FireServer(n.Character:FindFirstChild("Left Arm"))
		end
	end
	
	task.wait(1)
	p:Destroy()
end)
   end,
})
  

  
  

local Button = ATab:CreateButton({
   Name = "Saber",
   Callback = function()
      local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local rootPart = character:WaitForChild("HumanoidRootPart")
local humanoid = character:FindFirstChildOfClass("Humanoid")

-- GUI Setup (Start or Nah)
local screenGui = Instance.new("ScreenGui")
screenGui.Parent = game.CoreGui

local mainFrame = Instance.new("Frame")
mainFrame.Size = UDim2.new(0, 250, 0, 150)
mainFrame.Position = UDim2.new(0.5, -125, 0.4, -75)
mainFrame.BackgroundColor3 = Color3.fromRGB(255, 0, 0)

-- Apply Gradient Effect
local uiGradient = Instance.new("UIGradient")
uiGradient.Color = ColorSequence.new{
    ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 0, 0)),  
    ColorSequenceKeypoint.new(1, Color3.fromRGB(0, 0, 255))   
}
uiGradient.Parent = mainFrame

-- Rounded Corners
local uiCorner = Instance.new("UICorner")
uiCorner.CornerRadius = UDim.new(0, 15)
uiCorner.Parent = mainFrame

mainFrame.Active = true
mainFrame.Draggable = true
mainFrame.Parent = screenGui

local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, 0, 0.3, 0)
title.Text = "Made by @IMNOTFFBG8 - Showcased and asked to make by @Corrupt_Echo"
title.TextColor3 = Color3.new(1, 1, 1)
title.Font = Enum.Font.Arcade
title.TextScaled = true
title.BackgroundTransparency = 1
title.Parent = mainFrame

-- Create Button (Fixed version with parent)
local function createButton(text, pos, parent)
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(0.3, 0, 0.3, 0)
    button.Position = pos
    button.Text = text
    button.Font = Enum.Font.Arcade
    button.TextScaled = true
    button.TextColor3 = Color3.new(0, 0, 0)

    local buttonGradient = Instance.new("UIGradient")
    buttonGradient.Color = ColorSequence.new{
        ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 0, 0)),  
        ColorSequenceKeypoint.new(1, Color3.fromRGB(0, 0, 255))   
    }
    buttonGradient.Parent = button

    local buttonCorner = Instance.new("UICorner")
    buttonCorner.CornerRadius = UDim.new(0, 10)
    buttonCorner.Parent = button

    button.Parent = parent
    return button
end

local startButton = createButton("Start", UDim2.new(0.05, 0, 0.6, 0), mainFrame)
local nahButton = createButton("Nah", UDim2.new(0.65, 0, 0.6, 0), mainFrame)

local function startScript()
    screenGui:Destroy()

    -- Teleport Player to a Specific CFrame Position
    rootPart.CFrame = CFrame.new(0, 10, 0)

    -- Play Background Music
    local sound = Instance.new("Sound")
    sound.SoundId = "rbxassetid://1835322563"
    sound.Volume = 5
    sound.Looped = true
    sound.Parent = game:GetService("SoundService")
    sound:Play()

    -- Apply Custom Animations
    local animate = character:FindFirstChild("Animate")
    if animate then
        animate.idle.Animation1.AnimationId = "rbxassetid://16163355836"
        animate.idle.Animation2.AnimationId = "rbxassetid://16163355836"
        animate.walk.WalkAnim.AnimationId = "rbxassetid://16163350920"
    end

    -- Saber Glove GUI
    local gui = Instance.new("ScreenGui")
    gui.Parent = game.CoreGui

    local frame = Instance.new("Frame")
    frame.Size = UDim2.new(0, 200, 0, 150)
    frame.Position = UDim2.new(0.5, -100, 0.5, -75)
    frame.BackgroundColor3 = Color3.fromRGB(50, 50, 50)

    local uiGradientGui = Instance.new("UIGradient")
    uiGradientGui.Color = ColorSequence.new{
        ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 0, 0)),
        ColorSequenceKeypoint.new(1, Color3.fromRGB(0, 0, 255))
    }
    uiGradientGui.Parent = frame

    local uiCornerGui = Instance.new("UICorner")
    uiCornerGui.CornerRadius = UDim.new(0, 15)
    uiCornerGui.Parent = frame

    frame.Active = true
    frame.Draggable = true
    frame.Parent = gui

    local title = Instance.new("TextLabel")
    title.Size = UDim2.new(1, 0, 0.2, 0)
    title.Text = "Saber Glove"
    title.Font = Enum.Font.Arcade
    title.TextScaled = true
    title.TextColor3 = Color3.new(1, 1, 1)
    title.BackgroundTransparency = 1
    title.Parent = frame

    local hitboxButton = createButton("HIT", UDim2.new(0.05, 0, 0.4, 0), frame)
    local eButton = createButton("E", UDim2.new(0.35, 0, 0.4, 0), frame)
    local rButton = createButton("R", UDim2.new(0.65, 0, 0.4, 0), frame)

    -- HIT Toggle
    hitboxButton.MouseButton1Click:Connect(function()
        game:GetService("ReplicatedStorage").RetroAbility:FireServer("Ban Hammer")
    end)

    -- E Button: Teleport to Nearest Player
    eButton.MouseButton1Click:Connect(function()
        local players = game:GetService("Players")
        local nearestPlayer, shortestDistance = nil, math.huge

        for _, plr in pairs(players:GetPlayers()) do
            if plr ~= player and plr.Character then
                local targetRoot = plr.Character:FindFirstChild("HumanoidRootPart")
                if targetRoot then
                    local distance = (rootPart.Position - targetRoot.Position).Magnitude
                    if distance < shortestDistance then
                        shortestDistance = distance
                        nearestPlayer = targetRoot
                    end
                end
            end
        end

        if nearestPlayer then
            local args = {
                [1] = "default",
                [2] = {
                    ["goal"] = nearestPlayer.CFrame,
                    ["origin"] = rootPart.CFrame
                }
            }
            game:GetService("ReplicatedStorage").GeneralAbility:FireServer(unpack(args))
        end
    end)

    -- R Button: Activate Ultimate
    rButton.MouseButton1Click:Connect(function()
        local args = {
            [1] = "ultimate",
            [2] = {
                ["goal"] = CFrame.new(-96.98, -5.17, -37.43),
                ["origin"] = CFrame.new(-31.54, -5.17, 8.58)
            }
        }
        game:GetService("ReplicatedStorage"):WaitForChild("GeneralAbility"):FireServer(unpack(args))
    end)

    -- Reset on Death
    humanoid.Died:Connect(function()
        gui:Destroy()
        sound:Destroy()
    end)
end

startButton.MouseButton1Click:Connect(startScript)
nahButton.MouseButton1Click:Connect(function()
    screenGui:Destroy()
end)
    end
  })

  
local Button = ATab:CreateButton({
	Name = "Auto Farm Bob",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Giangplay/Slap_Battles/main/File/Farm%20Bob.lua"))()
  	end    
})


else
end

      local TeleportTab = Window:CreateTab("Teleport", "Plane")

        local Button = TeleportTab:CreateButton({
   Name = "Enter Portal",
   Callback = function()
        firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport1.TouchInterest.Parent, 0)
firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport1.TouchInterest.Parent, 1)
      end,
     })

local Section = TeleportTab:CreateSection("Islands")
      local Button = TeleportTab:CreateButton({
         Name = "Normal Arena",
         Callback = function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.workspace.Origo.CFrame * CFrame.new(0,-5,0)
         -- The function that takes place when the button is pressed
         end,
      })
      
      local Button = TeleportTab:CreateButton({
         Name = "Default Arena",
         Callback = function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(120,360,-3)
         -- The function that takes place when the button is pressed
         end,
      })
      
      --[[
         local Button = TeleportTab:CreateButton({
            Name = "Button Example",
            Callback = function()
               
            -- The function that takes place when the button is pressed
            end,
         })
      ]]--
      
      local Button = TeleportTab:CreateButton({
         Name = "Lobby",
         Callback = function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-800,328,-2.5)
         -- The function that takes place when the button is pressed
         end,
      })
      
      local Button = TeleportTab:CreateButton({
         Name = "Hunter Room",
         Callback = function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.workspace.BountyHunterRoom.Union.CFrame * CFrame.new(0,5,0)
         -- The function that takes place when the button is pressed
         end,
      })
      
      local Button = TeleportTab:CreateButton({
         Name = "Brazil",
         Callback = function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.workspace.Lobby.brazil.portal.CFrame
         -- The function that takes place when the button is pressed
         end,
      })
      
      local Button = TeleportTab:CreateButton({
         Name = "Slapple",
         Callback = function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.workspace.Arena.island5.Union.CFrame * CFrame.new(0,3.25,0)
         -- The function that takes place when the button is pressed
         end,
      })
      
      local Button = TeleportTab:CreateButton({
         Name = "Plate",
         Callback = function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Arena.Plate.CFrame
         -- The function that takes place when the button is pressed
         end,
      })
      
      local Button = TeleportTab:CreateButton({
         Name = "tournament",
         Callback = function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Battlearena.Arena.CFrame * CFrame.new(0,10,0)
         -- The function that takes place when the button is pressed
         end,
      })
      
      local Button = TeleportTab:CreateButton({
         Name = "Cannon Island",
         Callback = function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Arena.CannonIsland.Cannon.Base.CFrame * CFrame.new(0,0,35)
         -- The function that takes place when the button is pressed
         end,
      })
      
      local Button = TeleportTab:CreateButton({
         Name = "Moai",
         Callback = function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(215, -15.5, 0.5)
         -- The function that takes place when the button is pressed
         end,
      })
      
      local Button = TeleportTab:CreateButton({
         Name = "Island1",
         Callback = function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-6.66747713, -5.06731462, 213.575378, 0.945777893, 2.52095178e-10, 0.324814111, -3.7823856e-08, 1, 1.09357536e-07, -0.324814111, -1.15713661e-07, 0.945777893)
         -- The function that takes place when the button is pressed
         end,
      })
      
      local Button = TeleportTab:CreateButton({
         Name = "Island2",
         Callback = function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-211.210846, -5.27827597, 4.13719559, -0.0225322824, 1.83683113e-08, -0.999746144, -1.83560154e-08, 1, 1.87866842e-08, 0.999746144, 1.87746618e-08, -0.0225322824)
         -- The function that takes place when the button is pressed
         end,
      })
      
      local Button = TeleportTab:CreateButton({
         Name = "Island3",
         Callback = function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-8.17191315, -5.14452887, -205.249741, -0.98216176, -3.48867246e-09, -0.188037917, -4.19987778e-09, 1, 3.38382322e-09, 0.188037917, 4.11319823e-09, -0.98216176)
         -- The function that takes place when the button is pressed
         end,
      })
      
      local Button = TeleportTab:CreateButton({
         Name = "Cube of Death",
         Callback = function()
            if game.Workspace:FindFirstChild("the cube of death(i heard it kills)", 1) then
               game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Arena.CubeOfDeathArea["the cube of death(i heard it kills)"].Part.CFrame * CFrame.new(0,5,0)
               end
         -- The function that takes place when the button is pressed
         end,
      })
      
     local Section = TeleportTab:CreateSection("Safe/Badges")
local Button = TeleportTab:CreateButton({
         Name = "SafeSpot",
         Callback = function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(17894.3867, -20.5577297, -3562.97974, 0.999158919, -1.34026186e-08, -0.04100601, 1.42693359e-08, 1, 2.08436735e-08, 0.04100601, -2.14112692e-08, 0.999158919)
         -- The function that takes place when the button is pressed
         end,
      })
      
      local Button = TeleportTab:CreateButton({
         Name = "Bed",
         Callback = function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace["Bed"].Bed3.CFrame * CFrame.new(0,0,-1)
         -- The function that takes place when the button is pressed
         end,
      })
   
      local Button = TeleportTab:CreateButton({
         Name = "BigBox",
         Callback = function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace["Safespot"].CFrame * CFrame.new(0,10,0)
         -- The function that takes place when the button is pressed
         end,
      })
   
      local Button = TeleportTab:CreateButton({
         Name = "SmallBox",
         Callback = function()
   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace["SafeBox"].CFrame * CFrame.new(0,5,0)
         -- The function that takes place when the button is pressed
         end,
      })

local DTab = Window:CreateTab("Ingame-Teleports", "Plane")
local Section = DTab:CreateSection("Kraken")
    local Button = DTab:CreateButton({
   Name = "Kraken",
   Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(194, 35, -12671)
      end,
     })

    local Button = DTab:CreateButton({
   Name = "ShowKraken",
   Callback = function()
        game.ReplicatedStorage.AbyssAssets.Abyss.Parent = game.Workspace
      end,
     })

    local Button = DTab:CreateButton({
   Name = "OffKraken",
   Callback = function()
        game.Workspace.Abyss.Parent = game.ReplicatedStorage.AbyssAssets
      end,
     })


  local Section = DTab:CreateSection("Limbo")
      local Button = DTab:CreateButton({
   Name = "Limbo",
   Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.RepressedMemories.Limbo.CFrame * CFrame.new(0,-5,0)
      end,
     })

      local Button = DTab:CreateButton({
   Name = "ShowLimbo",
   Callback = function()
        game.ReplicatedStorage.RepressedMemoriesMap.Parent = game.Workspace
      end,
     })

      local Button = DTab:CreateButton({
   Name = "OffLimbo",
   Callback = function()
        game.Workspace.RepressedMemoriesMap.Parent = game.ReplicatedStorage
      end,
     })
  
local Section = DTab:CreateSection("Retro")
          local Button = DTab:CreateButton({
   Name = "Retro1",
   Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Retro.Map.RetroObbyMap.Spawn.CFrame
      end,
     })
  
            local Button = DTab:CreateButton({
   Name = "Retro2",
   Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Retro.Map.RetroObbyMap.Spawn_stage2.CFrame
      end,
     })
  
            local Button = DTab:CreateButton({
   Name = "Retro3",
   Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Retro.Map.RetroObbyMap.Spawn_stage3.CFrame
      end,
     })
  
            local Button = DTab:CreateButton({
   Name = "RetroEnd",
   Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.FinishDoor_Retro.Part.CFrame
      end,
     })

        local Button = DTab:CreateButton({
   Name = "ShowRetro",
   Callback = function()
      game.ReplicatedStorage.Assets.Retro.Parent = game.Workspace
      end,
     })

        local Button = DTab:CreateButton({
   Name = "OffRetro",
   Callback = function()
      game.Workspace.Retro.Parent = game.ReplicatedStorage.Assets
      end,
     })

 

      
      local BadgeTab = Window:CreateTab("Badges", "Award")
      --[[
         local Button = BadgeTab:CreateButton({
            Name = " ",
            Callback = function()
               
            -- The function that takes place when the button is pressed
            end,
         })
      ]]
      
      local Button = BadgeTab:CreateButton({
         Name = "Auto-Get Admin",
         Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/Pro666Pro/OpenSourceScripts/refs/heads/main/Gloves/AdminGlove.luau",true))()
         -- The function that takes place when the button is pressed
         end,
      })
      
      local Button = BadgeTab:CreateButton({
         Name = "Auto-Get Alchamist",
         Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/Pro666Pro/OpenSourceScripts/refs/heads/main/Gloves/AlchemistGlove.luau",true))()
         -- The function that takes place when the button is pressed
         end,
      })
      
      local Button = BadgeTab:CreateButton({
         Name = "Auto-Get Angler",
         Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/Pro666Pro/OpenSourceScripts/refs/heads/main/Gloves/AnglerGlove.luau",true))()
         -- The function that takes place when the button is pressed
         end,
      })


      
      local Button = BadgeTab:CreateButton({
         Name = "Auto-Get Avatar/Hunter",
         Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/Pro666Pro/OpenSourceScripts/refs/heads/main/Gloves/AvatarAndHunterGloves.luau",true))()
         -- The function that takes place when the button is pressed
         end,
      })
      
      local Button = BadgeTab:CreateButton({
         Name = "Auto-Get Avatar/Relude",
         Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/Pro666Pro/OpenSourceScripts/refs/heads/main/Gloves/AvatarAndReludeGloves.luau",true))()
         -- The function that takes place when the button is pressed
         end,
      })
      
      local Button = BadgeTab:CreateButton({
         Name = "Auto-Get Bind",
         Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/Pro666Pro/OpenSourceScripts/refs/heads/main/Gloves/BindGlove.luau",true))()
         -- The function that takes place when the button is pressed
         end,
      })
      
      local Button = BadgeTab:CreateButton({
         Name = "Auto-Get Bob",
         Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/Pro666Pro/OpenSourceScripts/refs/heads/main/Gloves/BobGlove.luau",true))()
         -- The function that takes place when the button is pressed
         end,
      })
      
      local Button = BadgeTab:CreateButton({
         Name = "Auto-Get Boxer",
         Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/Pro666Pro/OpenSourceScripts/refs/heads/main/Gloves/BoxerGlove.luau",true))()
         -- The function that takes place when the button is pressed
         end,
      })
      
      local Button = BadgeTab:CreateButton({
         Name = "Auto-Get Buddies",
         Callback = function()
            loadstring(game:HttpGet("https://github.com/Pro666Pro/OpenSourceScripts/raw/refs/heads/main/Gloves/BuddiesGlove.luau",true))()
         -- The function that takes place when the button is pressed
         end,
      })
      
      local Button = BadgeTab:CreateButton({
         Name = "Auto-Get Chain",
         Callback = function()
            loadstring(game:HttpGet("https://github.com/Pro666Pro/OpenSourceScripts/raw/refs/heads/main/Gloves/ChainGlove.luau",true))()
         -- The function that takes place when the button is pressed
         end,
      })
      
      local Button = BadgeTab:CreateButton({
         Name = "Auto-Get Clock",
         Callback = function()
            loadstring(game:HttpGet("https://github.com/Pro666Pro/OpenSourceScripts/raw/refs/heads/main/Gloves/ClockGlove.luau",true))()
         -- The function that takes place when the button is pressed
         end,
      })
      
      local Button = BadgeTab:CreateButton({
         Name = "Auto-Get Counter",
         Callback = function()
            loadstring(game:HttpGet("https://github.com/Pro666Pro/OpenSourceScripts/raw/refs/heads/main/Gloves/CounterGlove.luau",true))()
         -- The function that takes place when the button is pressed
         end,
      })
      
      local Button = BadgeTab:CreateButton({
         Name = "Auto-Get Eggler",
         Callback = function()
            loadstring(game:HttpGet("https://github.com/Pro666Pro/OpenSourceScripts/raw/refs/heads/main/Gloves/EgglerGlove.luau",true))()
         -- The function that takes place when the button is pressed
         end,
      })
      
      local Button = BadgeTab:CreateButton({
         Name = "Auto-Get Elude",
         Callback = function()
            loadstring(game:HttpGet("https://github.com/Pro666Pro/OpenSourceScripts/raw/refs/heads/main/Gloves/EludeGlove.luau",true))()
         -- The function that takes place when the button is pressed
         end,
      })
      
      local Button = BadgeTab:CreateButton({
         Name = "Auto-Get Fan",
         Callback = function()
            loadstring(game:HttpGet("https://github.com/Pro666Pro/OpenSourceScripts/raw/refs/heads/main/Gloves/FanGlove.luau",true))()
         -- The function that takes place when the button is pressed
         end,
      })
      
      local Button = BadgeTab:CreateButton({
         Name = "Auto-Get Fish",
         Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/Pro666Pro/OpenSourceScripts/refs/heads/main/Gloves/FishGlove.luau",true))()
         -- The function that takes place when the button is pressed
         end,
      })
      
      local Button = BadgeTab:CreateButton({
         Name = "Auto-Frostbite",
         Callback = function()
            loadstring(game:HttpGet("https://github.com/Pro666Pro/OpenSourceScripts/raw/refs/heads/main/Gloves/FrostbiteGlove.luau",true))()
         -- The function that takes place when the button is pressed
         end,
      })
      
      local Button = BadgeTab:CreateButton({
         Name = "Auto-Get Glovel",
         Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/Pro666Pro/OpenSourceScripts/refs/heads/main/Gloves/GlovelGlove.luau",true))()
         -- The function that takes place when the button is pressed
         end,
      })
      
      local Button = BadgeTab:CreateButton({
         Name = "Auto-Get Hexa",
         Callback = function()
            loadstring(game:HttpGet("https://github.com/Pro666Pro/OpenSourceScripts/raw/refs/heads/main/Gloves/HexaGlove.luau",true))()
         -- The function that takes place when the button is pressed
         end,
      })
      
      local Button = BadgeTab:CreateButton({
         Name = "Auto-Get Hitman",
         Callback = function()
            loadstring(game:HttpGet("https://github.com/Pro666Pro/OpenSourceScripts/raw/refs/heads/main/Gloves/HitmanGlove.luau",true))()
         -- The function that takes place when the button is pressed
         end,
      })
      
      local Button = BadgeTab:CreateButton({
         Name = "Auto-Get Hybrid",
         Callback = function()
            loadstring(game:HttpGet("https://github.com/Pro666Pro/OpenSourceScripts/raw/refs/heads/main/Gloves/HybridGlove.luau",true))()
         -- The function that takes place when the button is pressed
         end,
      })
      
      local Button = BadgeTab:CreateButton({
         Name = "Auto-Get Ice Skate",
         Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/Pro666Pro/OpenSourceScripts/refs/heads/main/Gloves/IceSkateGlove.luau",true))()
         -- The function that takes place when the button is pressed
         end,
      })
      
      local Button = BadgeTab:CreateButton({
         Name = "Auto-get Kinetic",
         Callback = function()
            loadstring(game:HttpGet("https://github.com/Pro666Pro/OpenSourceScripts/raw/refs/heads/main/Gloves/KineticGlove.luau",true))()
         -- The function that takes place when the button is pressed
         end,
      })
      
      local Button = BadgeTab:CreateButton({
         Name = "Auto-get Slenderman",
         Callback = function()
            loadstring(game:HttpGet("https://pastefy.app/4fVIZ4LM/raw",true))()
            
         -- The function that takes place when the button is pressed
         end,
      })
      
     
      
      local HubTab = Window:CreateTab("Hubs", "Github") -- Title, Image
      
      
      
      
      local Button = HubTab:CreateButton({
         Name = "Slap farmV4",
         Callback = function()
            loadstring(game:HttpGet("https://github.com/Pro666Pro/OpenSourceScripts/raw/refs/heads/main/SlapFarmGui/Versions/(v4.3).luau",true))()
         end,
      })

      local Button = HubTab:CreateButton({
         Name = "Slapple Farm",
         Callback = function()
      loadstring(game:HttpGet("https://pastefy.app/G5T2nMZp/raw",true))()
         end,
      })
      
      local Button = HubTab:CreateButton({
         Name = "Vinq",
         Callback = function()
            loadstring(game:HttpGet('https://raw.githubusercontent.com/vinqDevelops/erwwefqweqewqwe/refs/heads/main/lol.txt'))()
         end,
      })


local Button = HubTab:CreateButton({
   Name = "NexerMastery",
   Callback = function()
      loadstring(game:HttpGet("https://pastefy.app/A8WM8fVB/raw",true))()
   -- The function that takes place when the button is pressed
   end,
})

local Button = HubTab:CreateButton({
   Name = "BaconMastery",
   Callback = function()
            		loadstring(game:HttpGet("https://raw.githubusercontent.com/0-BaconScripter-0/Script/refs/heads/main/Slap%20Battles/Mastery%20Farm"))()
   -- The function that takes place when the button is pressed
   end,
})

local Button = HubTab:CreateButton({
   Name = "UBH",
   Callback = function()
      loadstring(game:HttpGet('https://raw.githubusercontent.com/Pro666Pro/UltimateBadgeHub/refs/heads/main/main.lua'))()
   -- The function that takes place when the button is pressed
   end,
})
    

local Button = HubTab:CreateButton({
   Name = "Potion Abuser",
   Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Testerhubplayer/Slap-battle/main/Slap_battle_alchemist_edition.lua",true))()
   -- The function that takes place when the button is pressed
   end,
})


      local AntiTab = Window:CreateTab("Anti", "ban")



      
      
      local Toggle = AntiTab:CreateToggle({
         Name = "AntiBrazil",
         CurrentValue = false,
         Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
         Callback = function(Value)
            _G.AntiBrazil = Value
      while _G.AntiBrazil do
      for i,v in pairs(game.Workspace.Lobby.brazil:GetChildren()) do
                        if v.CanTouch == true then
                           v.CanTouch = false
                       end
                   end
      task.wait()
      end
      if _G.AntiBrazil == false then
      for i,v in pairs(game.Workspace.Lobby.brazil:GetChildren()) do
                        if v.CanTouch == false then
                           v.CanTouch = true
                       end
                  end
      end
         end    
      })

      local Toggle = AntiTab:CreateToggle({
         Name = "AntiMail",
         CurrentValue = false,
         Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
         Callback = function(Value)
      game.Players.LocalPlayer.Character.YouHaveGotMail.Disabled = Value
_G.AntiMail = Value
while _G.AntiMail do
if game.Players.LocalPlayer.Character:FindFirstChild("YouHaveGotMail") then
game.Players.LocalPlayer.Character.YouHaveGotMail.Disabled = true
end
task.wait()
end
	end    
})

      local Toggle = AntiTab:CreateToggle({
         Name = "AntiBooster",
         CurrentValue = false,
         Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
         Callback = function(Value)
      		_G.AntiBooster = Value
while _G.AntiBooster do
for i,v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
                    if v.Name == "BoosterObject" then
                        v:Destroy()
                    end
                end
task.wait()
end
	end    
})

      local Toggle = AntiTab:CreateToggle({
         Name = "AntiSquid",
         CurrentValue = false,
         Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
         Callback = function(Value)
      	_G.AntiSquid = Value
if _G.AntiSquid == false then
game.Players.LocalPlayer.PlayerGui.SquidInk.Enabled = true
end
while _G.AntiSquid do
if game.Players.LocalPlayer.PlayerGui:FindFirstChild("SquidInk") then
game.Players.LocalPlayer.PlayerGui.SquidInk.Enabled = false
end
task.wait()
end
	end    
})

      local Toggle = AntiTab:CreateToggle({
         Name = "AntiConveyer",
         CurrentValue = false,
         Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
         Callback = function(Value)
      game.Players.LocalPlayer.PlayerScripts.ConveyorVictimized.Disabled = Value
	end    
})

      local Toggle = AntiTab:CreateToggle({
         Name = "AntiIce",
         CurrentValue = false,
         Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
         Callback = function(Value)
      _G.AntiIce = Value
while _G.AntiIce do
    for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
            if v.Name == "Icecube" then
                v:Destroy()
                game.Players.LocalPlayer.Character.Humanoid.PlatformStand = false
                game.Players.LocalPlayer.Character.Humanoid.AutoRotate = true
            end
       end
task.wait()
end
	end    
})

      local Toggle = AntiTab:CreateToggle({
         Name = "AntiRun",
         CurrentValue = false,
         Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
         Callback = function(Value)
      _G.AutoExit = Value
while _G.AutoExit do
if game.Players.LocalPlayer.Character:FindFirstChild("InLabyrinth") ~= nil then
for _, v in next, workspace:GetChildren() do
    if string.find(v.Name, "Labyrinth") and v:FindFirstChild("Doors") then
        for _, y in ipairs(v.Doors:GetChildren()) do
            if y:FindFirstChild("Hitbox") and y.Hitbox:FindFirstChild("TouchInterest") then
              firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart"), y.Hitbox, 0)
              firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart"), y.Hitbox, 1)
            end
        end
    end
end
end
task.wait()
end
	end    
})

      local Toggle = AntiTab:CreateToggle({
         Name = "AntiZaHando",
         CurrentValue = false,
         Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
         Callback = function(Value)
      	_G.AntiZaHando = Value
            while _G.AntiZaHando do
                for i,v in pairs(game.Workspace:GetChildren()) do
                    if v.ClassName == "Part" and v.Name == "Part" then
                        v:Destroy()
                    end
                end
task.wait()
            end
	end    
})
      
      
            local Toggle = AntiTab:CreateToggle({
         Name = "AntiBubble",
         CurrentValue = false,
         Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
         Callback = function(Value)
      		 _G.AntiBubble = Value
while _G.AntiBubble do
for i,v in pairs(workspace:GetChildren()) do
                    if v.Name == "BubbleObject" and v:FindFirstChild("Weld") then
                        v:FindFirstChild("Weld"):Destroy()
                    end
               end
task.wait()
end
	end    
})

      local Toggle = AntiTab:CreateToggle({
         Name = "AntiDefend",
         CurrentValue = false,
         Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
         Callback = function(Value)
     	_G.NoclipBarrier = Value
if _G.NoclipBarrier == false then
for i,v in pairs(game.Workspace:GetChildren()) do
                    if string.find(v.Name, "Ã…Barrier") then
                        if v.CanCollide == false then
                            v.CanCollide = true
                         end
                    end
                end
           end
while _G.NoclipBarrier do
for i,v in pairs(game.Workspace:GetChildren()) do
                    if string.find(v.Name, "Ã…Barrier") then
                        if v.CanCollide == true then
                            v.CanCollide = false
                         end
                     end
                end
task.wait()
end
	end    
})

      local Toggle = AntiTab:CreateToggle({
         Name = "AntiNightmare",
         CurrentValue = false,
         Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
         Callback = function(Value)
              if Value == true then
        game.Players.LocalPlayer.PlayerScripts.VFXListener.NightmareEffect.Parent = game.Lighting
    else
        game.Players.LocalPlayer.PlayerScripts.VFXListener.NightmareEffect.Parent = game.Players.LocalPlayer.PlayerScripts.VFXListener
    end
	end    
})
            
            
      local Toggle = AntiTab:CreateToggle({
         Name = "Anti-Afk",
         CurrentValue = false,
         Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
         Callback = function(Value)
            _G.AntiAfk = Value
            for i,v in next, getconnections(game.Players.LocalPlayer.Idled) do
            if _G.AntiAfk then
            v:Disable()
            else
            v:Enable()
            end
            end
               end    
            })


      local Toggle = AntiTab:CreateToggle({
         Name = "Anti-Null",
         CurrentValue = false,
         Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
         Callback = function(Value)
      _G.AntiNull = Value
while _G.AntiNull do
for i,v in pairs(game.Workspace:GetChildren()) do
                if v.Name == "Imp" and v:FindFirstChild("Body") then
                       game.ReplicatedStorage.KSHit:FireServer(v.Body, true)
                 end
            end
task.wait()
end
	end    
})
      

local Toggle = AntiTab:CreateToggle({
Name = "Anti-Void",
CurrentValue = false,
Flag = "Toggle1", -- can u explain wat this <<
Callback = function(Value)
_G.AntiVoid = Value
if _G.AntiVoidChoose == "Normal" then
game.Workspace["VoidPart"].CanCollide = Value
game.Workspace["VoidPart"]["TAntiVoid"].CanCollide = Value
if Value == false then
game.Workspace["VoidPart"].Transparency = 1
game.Workspace["VoidPart"]["TAntiVoid"].Transparency = 1
else
game.Workspace["VoidPart"].Transparency = _G.Transparency
game.Workspace["VoidPart"]["TAntiVoid"].Transparency = _G.Transparency
end
end
end
})
    
    
            local Toggle = AntiTab:CreateToggle({
               Name = "Anti-Obby",
               CurrentValue = false,
               Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
               Callback = function(Value)
                  _G.AntiObby = Value
                  while _G.AntiObby do
                  for _, v in pairs(game.Workspace:GetChildren()) do
                            if string.find(v.Name, "LavaSpinner") or string.find(v.Name, "LavaBlock") then
                               if v.CanTouch == true then
                                   v.CanTouch = false
                               end
                           end
                       end
                  task.wait()
                  end
                  if _G.AntiObby == false then
                  for _, v in pairs(game.Workspace:GetChildren()) do
                            if string.find(v.Name, "LavaSpinner") or string.find(v.Name, "LavaBlock") then
                                if v.CanTouch == false then
                                    v.CanTouch = true
                               end
                           end
                      end
                  end
                     end    
                  })
      
                  local Toggle = AntiTab:CreateToggle({
                     Name = "Anti Megarock | Custom ",
                     CurrentValue = false,
                     Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
                     Callback = function(Value)
                        _G.AntiRock = Value
                        while _G.AntiRock do
                        for _,v in pairs(game.Players:GetChildren()) do
                                            if v.Character:FindFirstChild("rock") then
                                                v.Character:FindFirstChild("rock").CanTouch = false
                                                v.Character:FindFirstChild("rock").CanQuery = false
                                            end
                                        end
                        task.wait()
                        end
                           end    
                        })
      
      
                        local Toggle = AntiTab:CreateToggle({
                           Name = "Anti Death Barrier",
                           CurrentValue = false,
                           Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
                           Callback = function(Value)
                              if Value == true then
                                 for i,v in pairs(game.Workspace.DEATHBARRIER:GetChildren()) do
                                                     if v.ClassName == "Part" and v.Name == "BLOCK" then
                                                         v.CanTouch = false
                                                     end
                                                 end
                                 workspace.DEATHBARRIER.CanTouch = false
                                 workspace.DEATHBARRIER2.CanTouch = false
                                 workspace.dedBarrier.CanTouch = false
                                 workspace.ArenaBarrier.CanTouch = false
                                 workspace.AntiDefaultArena.CanTouch = false
                                 else
                                 for i,v in pairs(game.Workspace.DEATHBARRIER:GetChildren()) do
                                                     if v.ClassName == "Part" and v.Name == "BLOCK" then
                                                         v.CanTouch = true
                                                     end
                                                 end
                                 workspace.DEATHBARRIER.CanTouch = true
                                 workspace.DEATHBARRIER2.CanTouch = true
                                 workspace.dedBarrier.CanTouch = true
                                 workspace.ArenaBarrier.CanTouch = true
                                 workspace.AntiDefaultArena.CanTouch = true
                                 end
                                    end    
                                 })
                         
                                 local Toggle = AntiTab:CreateToggle({
                                    Name = "Anti-KnockBack",
                                    CurrentValue = false,
                                    Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
                                    Callback = function(Value)
                                       _G.AntiRagdoll = Value
                                       while _G.AntiRagdoll do
                                       if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and game.Players.LocalPlayer.Character:FindFirstChild("Torso") and game.Players.LocalPlayer.Character:FindFirstChild("Ragdolled") then
                                       if game.Players.LocalPlayer.Character:FindFirstChild("Ragdolled") and game.Players.LocalPlayer.Character:WaitForChild("Ragdolled").Value == true then
                                       repeat task.wait()
                                       if game.Players.LocalPlayer.Character:FindFirstChild("Torso") then
                                       game.Players.LocalPlayer.Character.Torso.Anchored = true
                                       end
                                       until game.Players.LocalPlayer.Character:FindFirstChild("Ragdolled") and game.Players.LocalPlayer.Character:WaitForChild("Ragdolled").Value == false
                                       if game.Players.LocalPlayer.Character:FindFirstChild("Torso") then
                                       game.Players.LocalPlayer.Character.Torso.Anchored = false
                                       end
                                       end
                                       end
                                       task.wait()
                                       end
                                          end    
        })
   
   
        local Toggle = AntiTab:CreateToggle({
         Name = "Anti-Sbeve",
         CurrentValue = false,
         Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
         Callback = function(Value)
            _G.AntiSbeve = Value
            while _G.AntiSbeve do
            for _,v in pairs(game.Players:GetChildren()) do
                                if v ~= game.Players.LocalPlayer and v.Character:FindFirstChild("stevebody") then
                                    v.Character:FindFirstChild("stevebody").CanTouch = false
                                    v.Character:FindFirstChild("stevebody").CanQuery = false
                                    v.Character:FindFirstChild("stevebody").CanCollide = false
                                end
                            end
            task.wait()
            end
               end    
            })

  local Toggle = AntiTab:CreateToggle({
    Name = "AntiZaHand",
    CurrentValue = false,
    Flag = "Toggle1",
    Callback = function(Value)
      	_G.AntiZaHando = Value
            while _G.AntiZaHando do
                for i,v in pairs(game.Workspace:GetChildren()) do
                    if v.ClassName == "Part" and v.Name == "Part" then
                        v:Destroy()
                    end
                end
task.wait()
            end
	end    
})
   
            local Toggle = AntiTab:CreateToggle({
               Name = "Anti-bus",
               CurrentValue = false,
               Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
               Callback = function(Value)
                  _G.AntiBus = Value
   while _G.AntiBus do
   for i,v in pairs(game.Workspace:GetChildren()) do
                       if v.Name == "BusModel" then
                           v.CanTouch = false
                       end
                   end
   task.wait()
   end
      end    
   })

  local Toggle = AntiTab:CreateToggle({
    Name = "Anti-Brick",
    CurrentValue = false,
    Flag = "Toggle1",
    Callback = function(Value)
      _G.AntiBrick = Value
while _G.AntiBrick do
for i,v in pairs(game.Workspace:GetChildren()) do
                    if v.Name == "Union" then
                        v.CanTouch = false
                        v.CanQuery = false
                    end
                end
task.wait()
end
	end    
})

  local Toggle = AntiTab:CreateToggle({
    Name = "AntiPusher",
    CurrentValue = false,
    Flag = "Toggle1",
    Callback = function(Value)
      		_G.AntiPusher = Value
while _G.AntiPusher do
for i,v in pairs(game.Workspace:GetChildren()) do
                    if v.Name == "wall" then
                        v.CanCollide = false
                    end
                end
task.wait()
end
	end    
})
   
   local Toggle = AntiTab:CreateToggle({
      Name = "Anti-Reaper",
      CurrentValue = false,
      Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
      Callback = function(Value)
         _G.AntiReaper = Value
         while _G.AntiReaper do
   for i,v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
                 if v.Name == "DeathMark" then
                     game:GetService("ReplicatedStorage").ReaperGone:FireServer(game:GetService("Players").LocalPlayer.Character.DeathMark)
                 game:GetService("Lighting"):WaitForChild("DeathMarkColorCorrection"):Destroy() 
                 end
             end
   task.wait()
   end
       end
     })

local Toggle = AntiTab:CreateToggle({
    Name = "AntiTimeStop",
    CurrentValue = false,
    Flag = "Toggle1",
    Callback = function(Value)
      	_G.AntiTimestop = Value
while _G.AntiTimestop do
                for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                    if v.ClassName == "Part" then
                        v.Anchored = false
                    end
                end
task.wait()
end
	end    
})

  local Toggle = AntiTab:CreateToggle({
    Name = "AntiFort",
    CurrentValue = false,
    Flag = "Toggle1",
    Callback = function(Value)
      	_G.AntiFort = Value
            while _G.AntiFort do
                for i,v in pairs(game.Workspace:GetChildren()) do
                    if v.Name == "Part" then
                        v.CanCollide = false
                    end
                end
task.wait()
            end
	end    
})

  local Toggle = AntiTab:CreateToggle({
    Name = "Anti-Stun",
    CurrentValue = false,
    Flag = "Toggle1",
    Callback = function(Value)
      		_G.AntiStun = Value
while _G.AntiStun do
if game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") and game.Workspace:FindFirstChild("Shockwave") and game.Players.LocalPlayer.Character.Ragdolled.Value == false then
game.Players.LocalPlayer.Character.Humanoid.PlatformStand = false
end
task.wait()
end
	end    
})



      
  local Toggle = AntiTab:CreateToggle({
    Name = "AntiCube",
    CurrentValue = false,
    Flag = "Toggle1",
    Callback = function(Value)
      		if Value == true then
if game.Workspace:FindFirstChild("the cube of death(i heard it kills)", 1) and game.Workspace.Arena.CubeOfDeathArea["the cube of death(i heard it kills)"]:FindFirstChild("Part") then
game.Workspace.Arena.CubeOfDeathArea["the cube of death(i heard it kills)"].CanTouch = false
game.Workspace.Arena.CubeOfDeathArea["the cube of death(i heard it kills)"].Part.CanTouch = false
end
else
if game.Workspace:FindFirstChild("the cube of death(i heard it kills)", 1) and game.Workspace.Arena.CubeOfDeathArea["the cube of death(i heard it kills)"]:FindFirstChild("Part") then
game.Workspace.Arena.CubeOfDeathArea["the cube of death(i heard it kills)"].CanTouch = true
game.Workspace.Arena.CubeOfDeathArea["the cube of death(i heard it kills)"].Part.CanTouch = true
end
end
	end    
})
    local GloveTab = Window:CreateTab("Gloves", "Hand")

     local Button = GloveTab:CreateButton({
      Name = "Killerfish",
      Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/KietVN02202/KietVN02202/refs/heads/main/Killerfish.txt"))()
      -- The function that takes place when the button is pressed
      end,
   })

   local Button = GloveTab:CreateButton({
      Name = "Overseer",
      Callback = function()
         loadstring(game:HttpGet("https://raw.githubusercontent.com/KietVN02202/KietVN02202/refs/heads/main/OVERSEERGlove.txt",true))()
      -- The function that takes place when the button is pressed
      end,
   })

   local Button = GloveTab:CreateButton({
      Name = "Sprg",
      Callback = function()
         loadstring(game:HttpGet("https://raw.githubusercontent.com/Jwjshdiwj/SPRG-glove/refs/heads/main/SPRG"))();
      -- The function that takes place when the button is pressed
      end,
   })

  local Button = GloveTab:CreateButton({
   Name = "Death",
   Callback = function()
-- Ensure GloveStand folder exists in workspace
local gloveStandFolder = workspace:FindFirstChild("GloveStand") or Instance.new("Folder", workspace)
gloveStandFolder.Name = "GloveStand"

-- Create GloveStand model
local gloveModel = Instance.new("Model")
gloveModel.Name = "DEATH_GloveStand"
gloveModel.Parent = gloveStandFolder

-- Create the mesh part (the actual glove)
local meshPart = Instance.new("MeshPart")
meshPart.Name = "GloveMesh"
meshPart.Size = Vector3.new(1, 1, 1)
meshPart.Position = Vector3.new(-889.4178466796875, 326.9892272949219, -22.6553955078125)
meshPart.Orientation = Vector3.new(0, 270, 0)
meshPart.Anchored = true
meshPart.CanCollide = true
meshPart.MeshId = "rbxassetid://7054939800"
meshPart.Parent = gloveModel

-- Add outline using SelectionBox
local outline = Instance.new("SelectionBox")
outline.Adornee = meshPart
outline.LineThickness = 0.05
outline.Color3 = Color3.new(1, 0, 0)
outline.Parent = meshPart

-- Add shadows with SurfaceGui
local function addShadow(face)
	local gui = Instance.new("SurfaceGui")
	gui.Face = face
	gui.AlwaysOnTop = true
	gui.Adornee = meshPart
	gui.Parent = meshPart

	local shadow = Instance.new("Frame")
	shadow.Size = UDim2.new(1, 0, 1, 0)
	shadow.BackgroundColor3 = Color3.new(0, 0, 0)
	shadow.BackgroundTransparency = 0.7
	shadow.BorderSizePixel = 0
	shadow.Parent = gui
end

for _, face in pairs(Enum.NormalId:GetEnumItems()) do
	addShadow(face)
end

-- BillboardGui for "DEATH" label
local billboardGui = Instance.new("BillboardGui")
billboardGui.Size = UDim2.new(0, 100, 0, 25)
billboardGui.StudsOffset = Vector3.new(0, 2, 0)
billboardGui.AlwaysOnTop = true
billboardGui.Parent = meshPart

local textLabel = Instance.new("TextLabel")
textLabel.Size = UDim2.new(1, 0, 1, 0)
textLabel.BackgroundTransparency = 1
textLabel.Text = "DEATH"
textLabel.TextColor3 = Color3.new(1, 0, 0)
textLabel.Font = Enum.Font.GothamBlack
textLabel.TextSize = 16
textLabel.Parent = billboardGui

-- SlapsInfoPart
local slapsInfoPart = Instance.new("Part")
slapsInfoPart.Name = "SlapsInfoPart"
slapsInfoPart.Size = Vector3.new(3, 1, 1)
slapsInfoPart.Position = Vector3.new(-889.4178466796875, 325.5, -22.6553955078125)
slapsInfoPart.Anchored = true
slapsInfoPart.Transparency = 1
slapsInfoPart.CanCollide = false
slapsInfoPart.Parent = gloveModel

-- GloveDesc Billboard GUI
local gloveDesc = Instance.new("BillboardGui")
gloveDesc.Name = "GloveDesc"
gloveDesc.Size = UDim2.new(0, 180, 0, 110)
gloveDesc.StudsOffset = Vector3.new(0, 2, 0)
gloveDesc.AlwaysOnTop = true
gloveDesc.Parent = slapsInfoPart

-- DescOutline
local descOutline = Instance.new("Frame")
descOutline.Name = "DescOutline"
descOutline.Size = UDim2.new(1, 0, 1, 0)
descOutline.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
descOutline.BorderSizePixel = 0
descOutline.Parent = gloveDesc

local outlineCorner = Instance.new("UICorner")
outlineCorner.CornerRadius = UDim.new(0, 6)
outlineCorner.Parent = descOutline

-- Descframe
local descFrame = Instance.new("Frame")
descFrame.Name = "Descframe"
descFrame.Size = UDim2.new(0.95, 0, 0.95, 0)
descFrame.Position = UDim2.new(0.025, 0, 0.025, 0)
descFrame.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
descFrame.BorderSizePixel = 0
descFrame.Parent = descOutline

local innerCorner = Instance.new("UICorner")
innerCorner.CornerRadius = UDim.new(0, 6)
innerCorner.Parent = descFrame

-- Helper to make fixed-size labels
local function createLabel(name, text, yOffset)
	local label = Instance.new("TextLabel")
	label.Name = name
	label.Size = UDim2.new(1, -10, 0, 20)
	label.Position = UDim2.new(0, 5, 0, yOffset)
	label.BackgroundTransparency = 1
	label.TextColor3 = Color3.new(1, 1, 1)
	label.TextSize = 14
	label.Font = Enum.Font.Gotham
	label.TextXAlignment = Enum.TextXAlignment.Left
	label.Text = text
	label.Parent = descFrame
end

-- Add info labels
createLabel("Ability", "Ability: D E A T H", 5)
createLabel("Name", "Name: D E A T H", 30)
createLabel("Power", "Power: 44", 55)
createLabel("Speed", "Speed: 16", 80)

-- Default part (moved up on Y-axis)
local defaultPart = Instance.new("Part")
defaultPart.Name = "Default"
defaultPart.Size = Vector3.new(1, 1, 1)
defaultPart.Position = Vector3.new(-889.4178466796875, 329.5, -22.6553955078125)
defaultPart.Orientation = Vector3.new(180, 0, 0)
defaultPart.Anchored = true
defaultPart.CanCollide = true
defaultPart.BrickColor = BrickColor.new("Really black")
defaultPart.Parent = gloveModel

-- SpecialMesh
local mesh = Instance.new("SpecialMesh")
mesh.MeshType = Enum.MeshType.FileMesh
mesh.MeshId = "http://www.roblox.com/asset/?id=32054761"
mesh.Parent = defaultPart

-- ClickDetector (ClickDenator)
local clickDetector = Instance.new("ClickDetector")
clickDetector.Name = "ClickDenator"
clickDetector.MaxActivationDistance = 32
clickDetector.Parent = defaultPart

-- Execute code on click
clickDetector.MouseClick:Connect(function(player)
	pcall(function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/IMNOTFFBG8/DEATHGLOVE/refs/heads/main/DEATHGLOVE"))()
	end)
end)
   -- The function that takes place when the button is pressed
    end
})

    local Button = GloveTab:CreateButton({
   Name = "Safe GodHuman",
   Callback = function()
      --[[Cracked by cracking team and chineseguy_777]]
-- this shit is bad as the original
if not game:IsLoaded() then game.Loaded:Wait() end
if game.Players.LocalPlayer.leaderstats.Glove.Value ~= "Dual" then 
    fireclickdetector(game.Workspace.Lobby.Dual.ClickDetector) 
end

local t = Instance.new("Trail")
t.Parent = game.Players.LocalPlayer.Character or game.Players.LocalPlayer.CharacterAdded:Wait():WaitForChild("HumanoidRootPart")

local a0 = Instance.new("Attachment", game.Players.LocalPlayer.Character.HumanoidRootPart)
a0.Position = Vector3.new(0, 0.5, 0)

local a1 = Instance.new("Attachment", game.Players.LocalPlayer.Character.HumanoidRootPart)
a1.Position = Vector3.new(0, -0.5, 0)

t.Attachment0 = a0
t.Attachment1 = a1
t.Color = ColorSequence.new(Color3.new(1,1,1))
t.WidthScale = NumberSequence.new(0.15)
t.Transparency = NumberSequence.new(0)
t.Lifetime = 0.3
t.LightEmission = 1
t.LightInfluence = 0
t.Enabled = false

game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(21.782217, -5.1728549, 0.126389593, 0.8282848, 3.24886145e-08, 0.560307324, -2.53532892e-08, 1, -2.05045847e-08, -0.560307324, 2.77800249e-09, 0.8282848)
local gh = Instance.new("Tool")
gh.Name = "GodHuman"
gh.TextureId = "rbxassetid://140009737356934"

local handle = Instance.new("Part")
handle.Name = "Handle"
handle.Size = Vector3.new(1, 4, 1)
handle.CanCollide = false
handle.Transparency = 1
handle.Parent = gh

local s = Instance.new("ScreenGui")
s.Name = "GHG"
s.ResetOnSpawn = false
s.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
local zbt = Instance.new("TextButton")
zbt.Size = UDim2.new(0.15, 0, 0.168, 0)
zbt.AnchorPoint = Vector2.new(0.5, 0.5)
zbt.Position = UDim2.new(0.9, 0, 0.4, 0)
zbt.BackgroundColor3 = Color3.new(0, 0, 0)
zbt.BackgroundTransparency = 0.25
zbt.Text = "Z"
zbt.TextColor3 = Color3.new(1, 1, 1)
zbt.Font = Enum.Font.FredokaOne
zbt.TextScaled = true
zbt.BorderSizePixel = 2
zbt.BorderColor3 = Color3.new(1, 1, 1)
zbt.Visible = false
zbt.Parent = s

local uicorner = Instance.new("UICorner")
uicorner.CornerRadius = UDim.new(0.3, 0)
uicorner.Parent = zbt


gh.Equipped:Connect(function()
    zbt.Visible = true
end)

gh.Unequipped:Connect(function()
    zbt.Visible = false
end)

gh.Parent = game.Players.LocalPlayer.Backpack


local hs = game.Players.LocalPlayer.Character.HumanoidRootPart.Size
zbt.MouseButton1Click:Connect(function()
  for _, plr in ipairs(game.Players:GetPlayers()) do
    if plr ~= game.Players.LocalPlayer and plr.Character and plr.Character:FindFirstChild("HumanoidRootPart") then
        plr.Character.HumanoidRootPart.Size = hs + Vector3.new(2, 2, 2)
    end
end 
	local ts = game:GetService("TweenService")
	local rs = game:GetService("RunService")
	local hrp = game.Players.LocalPlayer.Character.HumanoidRootPart
	if not hrp then return end
	
	local p = Instance.new("Part", workspace)
	p.Anchored = true
	p.CanCollide = false
	p.Transparency = 1
	p.Size = Vector3.new(1, 1, 1)
	p.CFrame = hrp.CFrame + workspace.CurrentCamera.CFrame.LookVector * 30
	
	ts:Create(hrp, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {CFrame = p.CFrame}):Play()
	
	local run = true
	
	local function spb()
		local s = Instance.new("Part")
		s.Shape = Enum.PartType.Ball
		s.Material = Enum.Material.SmoothPlastic
		s.Size = Vector3.new(8, 8, 8)
		s.Color = Color3.new(1, 1, 1)
		s.Transparency = 1
		s.Anchored = true
		s.CanCollide = false
		s.CFrame = hrp.CFrame + Vector3.new(math.random(-3, 3), math.random(-3, 3), math.random(-3, 3))
		s.Parent = workspace
		
		ts:Create(s, TweenInfo.new(0.15), {Transparency = 0.35}):Play()
		
		task.delay(0.25, function()
			if s then s:Destroy() end
		end)
	end
	
	task.spawn(function()
		while run do
			spb()
			task.wait(0.03)
		end
	end)
	
	task.wait(0.3)
	
	local tgt
	for _, v in pairs(game.Players:GetPlayers()) do
		if v ~= game.Players.LocalPlayer and v.Character and v.Character:FindFirstChild("HumanoidRootPart") then
			if (v.Character.HumanoidRootPart.Position - hrp.Position).Magnitude < 5 then
				tgt = v.Character
				break
			end
		end
	end
	
	if tgt then
		local t0 = tick()
		local hit = false
		
		while tick() - t0 < 1.7 do
			if (hrp.Position - tgt.HumanoidRootPart.Position).Magnitude < 3 then
				hit = true
				break
			end
			local o = Vector3.new(math.random(-2, 2), math.random(-1, 2), math.random(-2, 2))
			hrp.CFrame = CFrame.new(tgt:GetPivot().Position + o)
			rs.RenderStepped:Wait()
		end
		if hit then
    t.Enabled = true
			local t1 = tick()
			while tick() - t1 < 1.75 do
				for _, part in ipairs(tgt:GetChildren()) do
					if part:IsA("BasePart") then
						hrp.CFrame = part.CFrame + Vector3.new(math.random(-1, 1), math.random(-1, 1), math.random(-1, 1))
						rs.RenderStepped:Wait()
					end
				end
			end
		end
		run = false
		t.Enabled = false
		game.ReplicatedStorage.GeneralHit:FireServer(tgt:FindFirstChild("Left Arm"))
	else
		run = false
		
		local n, d = nil, math.huge
		for _, v in ipairs(game.Players:GetPlayers()) do
			if v ~= game.Players.LocalPlayer and v.Character and v.Character:FindFirstChild("HumanoidRootPart") then
				local m = (hrp.Position - v.Character.HumanoidRootPart.Position).Magnitude
				if m < d then
					d = m
					n = v
				end
			end
		end
		
		if n then
			game.ReplicatedStorage.GeneralHit:FireServer(n.Character:FindFirstChild("Left Arm"))
		end
	end
	
	task.wait(1)
	p:Destroy()
end)
   end,
})

local Button = GloveTab:CreateButton({
   Name = "Saber",
   Callback = function()
      local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local rootPart = character:WaitForChild("HumanoidRootPart")
local humanoid = character:FindFirstChildOfClass("Humanoid")

-- GUI Setup (Start or Nah)
local screenGui = Instance.new("ScreenGui")
screenGui.Parent = game.CoreGui

local mainFrame = Instance.new("Frame")
mainFrame.Size = UDim2.new(0, 250, 0, 150)
mainFrame.Position = UDim2.new(0.5, -125, 0.4, -75)
mainFrame.BackgroundColor3 = Color3.fromRGB(255, 0, 0)

-- Apply Gradient Effect
local uiGradient = Instance.new("UIGradient")
uiGradient.Color = ColorSequence.new{
    ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 0, 0)),  
    ColorSequenceKeypoint.new(1, Color3.fromRGB(0, 0, 255))   
}
uiGradient.Parent = mainFrame

-- Rounded Corners
local uiCorner = Instance.new("UICorner")
uiCorner.CornerRadius = UDim.new(0, 15)
uiCorner.Parent = mainFrame

mainFrame.Active = true
mainFrame.Draggable = true
mainFrame.Parent = screenGui

local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, 0, 0.3, 0)
title.Text = "Made by @IMNOTFFBG8 - Showcased and asked to make by @Corrupt_Echo"
title.TextColor3 = Color3.new(1, 1, 1)
title.Font = Enum.Font.Arcade
title.TextScaled = true
title.BackgroundTransparency = 1
title.Parent = mainFrame

-- Create Button (Fixed version with parent)
local function createButton(text, pos, parent)
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(0.3, 0, 0.3, 0)
    button.Position = pos
    button.Text = text
    button.Font = Enum.Font.Arcade
    button.TextScaled = true
    button.TextColor3 = Color3.new(0, 0, 0)

    local buttonGradient = Instance.new("UIGradient")
    buttonGradient.Color = ColorSequence.new{
        ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 0, 0)),  
        ColorSequenceKeypoint.new(1, Color3.fromRGB(0, 0, 255))   
    }
    buttonGradient.Parent = button

    local buttonCorner = Instance.new("UICorner")
    buttonCorner.CornerRadius = UDim.new(0, 10)
    buttonCorner.Parent = button

    button.Parent = parent
    return button
end

local startButton = createButton("Start", UDim2.new(0.05, 0, 0.6, 0), mainFrame)
local nahButton = createButton("Nah", UDim2.new(0.65, 0, 0.6, 0), mainFrame)

local function startScript()
    screenGui:Destroy()

    -- Teleport Player to a Specific CFrame Position
    rootPart.CFrame = CFrame.new(0, 10, 0)

    -- Play Background Music
    local sound = Instance.new("Sound")
    sound.SoundId = "rbxassetid://1835322563"
    sound.Volume = 5
    sound.Looped = true
    sound.Parent = game:GetService("SoundService")
    sound:Play()

    -- Apply Custom Animations
    local animate = character:FindFirstChild("Animate")
    if animate then
        animate.idle.Animation1.AnimationId = "rbxassetid://16163355836"
        animate.idle.Animation2.AnimationId = "rbxassetid://16163355836"
        animate.walk.WalkAnim.AnimationId = "rbxassetid://16163350920"
    end

    -- Saber Glove GUI
    local gui = Instance.new("ScreenGui")
    gui.Parent = game.CoreGui

    local frame = Instance.new("Frame")
    frame.Size = UDim2.new(0, 200, 0, 150)
    frame.Position = UDim2.new(0.5, -100, 0.5, -75)
    frame.BackgroundColor3 = Color3.fromRGB(50, 50, 50)

    local uiGradientGui = Instance.new("UIGradient")
    uiGradientGui.Color = ColorSequence.new{
        ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 0, 0)),
        ColorSequenceKeypoint.new(1, Color3.fromRGB(0, 0, 255))
    }
    uiGradientGui.Parent = frame

    local uiCornerGui = Instance.new("UICorner")
    uiCornerGui.CornerRadius = UDim.new(0, 15)
    uiCornerGui.Parent = frame

    frame.Active = true
    frame.Draggable = true
    frame.Parent = gui

    local title = Instance.new("TextLabel")
    title.Size = UDim2.new(1, 0, 0.2, 0)
    title.Text = "Saber Glove"
    title.Font = Enum.Font.Arcade
    title.TextScaled = true
    title.TextColor3 = Color3.new(1, 1, 1)
    title.BackgroundTransparency = 1
    title.Parent = frame

    local hitboxButton = createButton("HIT", UDim2.new(0.05, 0, 0.4, 0), frame)
    local eButton = createButton("E", UDim2.new(0.35, 0, 0.4, 0), frame)
    local rButton = createButton("R", UDim2.new(0.65, 0, 0.4, 0), frame)

    -- HIT Toggle
    hitboxButton.MouseButton1Click:Connect(function()
        game:GetService("ReplicatedStorage").RetroAbility:FireServer("Ban Hammer")
    end)

    -- E Button: Teleport to Nearest Player
    eButton.MouseButton1Click:Connect(function()
        local players = game:GetService("Players")
        local nearestPlayer, shortestDistance = nil, math.huge

        for _, plr in pairs(players:GetPlayers()) do
            if plr ~= player and plr.Character then
                local targetRoot = plr.Character:FindFirstChild("HumanoidRootPart")
                if targetRoot then
                    local distance = (rootPart.Position - targetRoot.Position).Magnitude
                    if distance < shortestDistance then
                        shortestDistance = distance
                        nearestPlayer = targetRoot
                    end
                end
            end
        end

        if nearestPlayer then
            local args = {
                [1] = "default",
                [2] = {
                    ["goal"] = nearestPlayer.CFrame,
                    ["origin"] = rootPart.CFrame
                }
            }
            game:GetService("ReplicatedStorage").GeneralAbility:FireServer(unpack(args))
        end
    end)

    -- R Button: Activate Ultimate
    rButton.MouseButton1Click:Connect(function()
        local args = {
            [1] = "ultimate",
            [2] = {
                ["goal"] = CFrame.new(-96.98, -5.17, -37.43),
                ["origin"] = CFrame.new(-31.54, -5.17, 8.58)
            }
        }
        game:GetService("ReplicatedStorage"):WaitForChild("GeneralAbility"):FireServer(unpack(args))
    end)

    -- Reset on Death
    humanoid.Died:Connect(function()
        gui:Destroy()
        sound:Destroy()
    end)
end

startButton.MouseButton1Click:Connect(startScript)
nahButton.MouseButton1Click:Connect(function()
    screenGui:Destroy()
end)
    end
  })

local Button = GloveTab:CreateButton({
   Name = "Death",
   Callback = function()
      CustomTheme = 87540733242308
	DeathGlove = {
		HideClients = false,
		MuteClientSounds = false,
		HideFEScythe = false,
		ClientDeathTheme = true,
		ShowHitboxes = true,
	}
loadstring(game:HttpGet('https://raw.githubusercontent.com/DonjoScripts/Public-Scripts/refs/heads/Slap-Battles/death%5B0.8%5D.lua'))()
   -- The function that takes place when the button is pressed
   end,
})

local Paragraph = GloveTab:CreateParagraph({Title = "San's Glove", Content = "Script had a webhook and who knows what it could track or trace so removed"})


local Button = GloveTab:CreateButton({
   Name = "1K KillStreak",
   Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/KietVN02202/KietVN02202/refs/heads/main/Fe1000Killstreak"))()
   end,
})






local Section = GloveTab:CreateSection("Admin Glove's")

    local Button = GloveTab:CreateButton({
   Name = "BOBBLE",
   Callback = function()
if game.Players.LocalPlayer.leaderstats.Glove.Value == "Bubble" then
local player = game.Players.LocalPlayer
local gui = player:WaitForChild("PlayerGui")

-- Create the ScreenGui
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "BoobleButton"
screenGui.ResetOnSpawn = true
screenGui.Parent = gui

-- Create the Button
local button = Instance.new("TextButton")
button.Size = UDim2.new(0, 100, 0, 100) -- Square shape
button.Position = UDim2.new(0, 1000, 0, 400)
button.Text = "E"
button.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.Font = Enum.Font.SourceSansBold
button.TextSize = 60
button.Parent = screenGui

-- Cooldown logic
local cooldown = false
local cooldownTime = 1.5 -- seconds
local updateRate = 0.05 -- how often to update display (smaller = smoother)

button.MouseButton1Click:Connect(function()
	if cooldown then return end

	-- Fire the Remote
	game:GetService("ReplicatedStorage").BubbleThrow:FireServer()

	-- Start Cooldown
	cooldown = true
	local timeLeft = cooldownTime
	while timeLeft > 0 do
		button.Text = string.format("%.2f", timeLeft)
		wait(updateRate)
		timeLeft -= updateRate
	end

	-- Reset
	button.Text = "E"
	cooldown = false
end)

-- Create UIStroke (black outline)
local stroke = Instance.new("UIStroke")
stroke.Color = Color3.fromRGB(0, 0, 0)
stroke.Thickness = 3
stroke.Transparency = 0
stroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
stroke.Parent = button

-- UICorner (rounded edges with clean radius)
local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0, 9) -- ÃƒÂ°Ã…Â¸Ã¢â‚¬ËœÃ‹â€  Clean: scale 0, offset 9
corner.Parent = button
else
Rayfield:Notify({
   Title = "Error",
   Content = "Equip Bubble glove to work",
   Duration = 6.5,
   Image = 4483362458,
})
end
	end
})

local Paragraph = GloveTab:CreateParagraph({Title = "How to use", Content = "How It Works? Uses Bubble Glove But Without Cooldown And It Creates E Button Where U Can Click To Use BOOBLE And There Will Be Cd Protection So U Wont Get Kicked"})

    local Button = GloveTab:CreateButton({
   Name = "BoogieWoogie",
   Callback = function()
 if game.Players.LocalPlayer.leaderstats.Glove.Value == "Swapper" then
local player = game.Players.LocalPlayer
local gui = player:WaitForChild("PlayerGui")

-- Create the ScreenGui
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "BoogieWoogieButton"
screenGui.ResetOnSpawn = true
screenGui.Parent = gui

-- Create the Button
local button = Instance.new("TextButton")
button.Size = UDim2.new(0, 100, 0, 100) -- Square shape
button.Position = UDim2.new(0, 1000, 0, 400)
button.Text = "E"
button.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.Font = Enum.Font.SourceSansBold
button.TextSize = 60
button.Parent = screenGui

-- Cooldown logic
local cooldown = false
local cooldownTime = 1 -- seconds
local updateRate = 0.05 -- how often to update display (smaller = smoother)

button.MouseButton1Click:Connect(function()
	if cooldown then return end

	-- Fire the Remote
		game:GetService("ReplicatedStorage").SLOC:FireServer()

	-- Start Cooldown
	cooldown = true
	local timeLeft = cooldownTime
	while timeLeft > 0 do
		button.Text = string.format("%.2f", timeLeft)
		wait(updateRate)
		timeLeft -= updateRate
	end

	-- Reset
	button.Text = "E"
	cooldown = false
end)

-- Create UIStroke (black outline)
local stroke = Instance.new("UIStroke")
stroke.Color = Color3.fromRGB(0, 0, 0)
stroke.Thickness = 3
stroke.Transparency = 0
stroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
stroke.Parent = button

-- UICorner (rounded edges with clean radius)
local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0, 9) -- Ã°Å¸â€˜Ë† Clean: scale 0, offset 9
corner.Parent = button
else
Rayfield:Notify({
   Title = "Error",
   Content = "Equip Swapper glove to work",
   Duration = 6.5,
   Image = 4483362458,
          })
end
end    
})
    
  

        local Paragraph = GloveTab:CreateParagraph({Title = "How to use", Content = "How It Works? Uses Swapper Glove But Without Cooldown And It Creates E Button Where U Can Click To Use BoogieWoogie And There Will Be Cd Protection So U Wont Get Kicked"})

local Button = GloveTab:CreateButton({
   Name = "Clone()",
   Callback = function()
if game.Players.LocalPlayer.leaderstats.Glove.Value == "Replica" then
local player = game.Players.LocalPlayer
local gui = player:WaitForChild("PlayerGui")

-- Create the ScreenGui
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "CloneButton"
screenGui.ResetOnSpawn = true
screenGui.Parent = gui

-- Create the Button
local button = Instance.new("TextButton")
button.Size = UDim2.new(0, 100, 0, 100) -- Square shape
button.Position = UDim2.new(0, 1000, 0, 400)
button.Text = "E"
button.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.Font = Enum.Font.SourceSansBold
button.TextSize = 60
button.Parent = screenGui

-- Cooldown logic
local cooldown = false
local cooldownTime = 1 -- seconds
local updateRate = 0.05 -- how often to update display (smaller = smoother)

button.MouseButton1Click:Connect(function()
	if cooldown then return end

	-- Fire the Remote
	game:GetService("ReplicatedStorage").Duplicate:FireServer()

	-- Start Cooldown
	cooldown = true
	local timeLeft = cooldownTime
	while timeLeft > 0 do
		button.Text = string.format("%.2f", timeLeft)
		wait(updateRate)
		timeLeft -= updateRate
	end

	-- Reset
	button.Text = "E"
	cooldown = false
end)

-- Create UIStroke (black outline)
local stroke = Instance.new("UIStroke")
stroke.Color = Color3.fromRGB(0, 0, 0)
stroke.Thickness = 3
stroke.Transparency = 0
stroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
stroke.Parent = button

-- UICorner (rounded edges with clean radius)
local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0, 9) -- ÃƒÂ°Ã…Â¸Ã¢â‚¬ËœÃ‹â€  Clean: scale 0, offset 9
corner.Parent = button
else
Rayfield:Notify({
   Title = "Error",
   Content = "Equip Replica Glove to work",
   Duration = 6.5,
   Image = 4483362458,
})
end
end    
})

 local Paragraph = GloveTab:CreateParagraph({Title = "How to use", Content = "Uses Replica Glove But Without Cooldown And It Creates R Button Where U Can Click To Use Clone() And There Will Be Cd Protection So U Wont Get Kicked"})

    local Button = GloveTab:CreateButton({
   Name = "Minecraft",
   Callback = function()
if game.Players.LocalPlayer.leaderstats.Glove.Value == "Brick" then
local player = game.Players.LocalPlayer
local gui = player:WaitForChild("PlayerGui")

-- Create the ScreenGui
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "MinecraftButton"
screenGui.ResetOnSpawn = true
screenGui.Parent = gui

-- Create the Button
local button = Instance.new("TextButton")
button.Size = UDim2.new(0, 100, 0, 100) -- Square shape
button.Position = UDim2.new(0, 1000, 0, 400)
button.Text = "E"
button.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.Font = Enum.Font.SourceSansBold
button.TextSize = 60
button.Parent = screenGui

-- Cooldown logic
local cooldown = false
local cooldownTime = 1 -- seconds
local updateRate = 0.05 -- how often to update display (smaller = smoother)

button.MouseButton1Click:Connect(function()
	if cooldown then return end

	-- Fire the Remote
	game:GetService("ReplicatedStorage").lbrick:FireServer()

	-- Start Cooldown
	cooldown = true
	local timeLeft = cooldownTime
	while timeLeft > 0 do
		button.Text = string.format("%.2f", timeLeft)
		wait(updateRate)
		timeLeft -= updateRate
	end

	-- Reset
	button.Text = "E"
	cooldown = false
end)

-- Create UIStroke (black outline)
local stroke = Instance.new("UIStroke")
stroke.Color = Color3.fromRGB(0, 0, 0)
stroke.Thickness = 3
stroke.Transparency = 0
stroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
stroke.Parent = button

-- UICorner (rounded edges with clean radius)
local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0, 9) -- Ã°Å¸â€˜Ë† Clean: scale 0, offset 9
corner.Parent = button
else
Rayfield:Notify({
   Title = "Error",
   Content = "Equip Brick Glove to work",
   Duration = 6.5,
   Image = 4483362458,
})
end
end    
})





 local Paragraph = GloveTab:CreateParagraph({Title = "How to Use", Content = "Uses Brick Glove But Without Cooldown And It Creates E Button Where U Can Click To Use Minecraft And There Will Be Cd Protection So U Wont Get Kicked"})

local Button = GloveTab:CreateButton({
   Name = "SuperParry",
   Callback = function()

if game.Players.LocalPlayer.leaderstats.Glove.Value == "Parry" then
local player = game.Players.LocalPlayer
local gui = player:WaitForChild("PlayerGui")

-- Create the ScreenGui
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "SuperParryButton"
screenGui.ResetOnSpawn = true
screenGui.Parent = gui

-- Create the Button
local button = Instance.new("TextButton")
button.Size = UDim2.new(0, 100, 0, 100) -- Square shape
button.Position = UDim2.new(0, 1000, 0, 400)
button.Text = "E"
button.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.Font = Enum.Font.SourceSansBold
button.TextSize = 60
button.Parent = screenGui

-- Cooldown logic
local cooldown = false
local cooldownTime = 1 -- seconds
local updateRate = 0.05 -- how often to update display (smaller = smoother)

button.MouseButton1Click:Connect(function()
	if cooldown then return end

	-- Fire the Remote
	game:GetService("ReplicatedStorage").GeneralAbility:FireServer()

	-- Start Cooldown
	cooldown = true
	local timeLeft = cooldownTime
	while timeLeft > 0 do
		button.Text = string.format("%.2f", timeLeft)
		wait(updateRate)
		timeLeft -= updateRate
	end

	-- Reset
	button.Text = "E"
	cooldown = false
end)

-- Create UIStroke (black outline)
local stroke = Instance.new("UIStroke")
stroke.Color = Color3.fromRGB(0, 0, 0)
stroke.Thickness = 3
stroke.Transparency = 0
stroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
stroke.Parent = button

-- UICorner (rounded edges with clean radius)
local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0, 9) -- Ã°Å¸â€˜Ë† Clean: scale 0, offset 9
corner.Parent = button
else
Rayfield:Notify({
   Title = "Error",
   Content = "Please use Perry for this to work",
   Duration = 6.5,
   Image = 4483362458,
})

end
end    
})


 local Paragraph = GloveTab:CreateParagraph({Title = "How to use", Content = "Uses Parry Glove But Without Cooldown And It Creates R Button Where U Can Click To Use SuperParry And There Will Be Cd Protection So U Wont Get Kicked"})

    local Button = GloveTab:CreateButton({
   Name = "Table",
   Callback = function()
if game.Players.LocalPlayer.leaderstats.Glove.Value == "Tableflip" then
local player = game.Players.LocalPlayer
local gui = player:WaitForChild("PlayerGui")

-- Create the ScreenGui
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "TABLEButton"
screenGui.ResetOnSpawn = true
screenGui.Parent = gui

-- Create the Button
local button = Instance.new("TextButton")
button.Size = UDim2.new(0, 100, 0, 100) -- Square shape
button.Position = UDim2.new(0, 1000, 0, 400)
button.Text = "E"
button.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.Font = Enum.Font.SourceSansBold
button.TextSize = 60
button.Parent = screenGui

-- Cooldown logic
local cooldown = false
local cooldownTime = 1 -- seconds
local updateRate = 0.05 -- how often to update display (smaller = smoother)

button.MouseButton1Click:Connect(function()
	if cooldown then return end

	-- Fire the Remote
	game:GetService("ReplicatedStorage").GeneralAbility:FireServer()

	-- Start Cooldown
	cooldown = true
	local timeLeft = cooldownTime
	while timeLeft > 0 do
		button.Text = string.format("%.2f", timeLeft)
		wait(updateRate)
		timeLeft -= updateRate
	end

	-- Reset
	button.Text = "E"
	cooldown = false
end)

-- Create UIStroke (black outline)
local stroke = Instance.new("UIStroke")
stroke.Color = Color3.fromRGB(0, 0, 0)
stroke.Thickness = 3
stroke.Transparency = 0
stroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
stroke.Parent = button

-- UICorner (rounded edges with clean radius)
local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0, 9) -- Ã°Å¸â€˜Ë† Clean: scale 0, offset 9
corner.Parent = button
else
Rayfield:Notify({
   Title = "Error",
   Content = "Please use Tableflip for this to work",
   Duration = 6.5,
   Image = 4483362458,
})

end
end    
})



 local Paragraph = GloveTab:CreateParagraph({Title = "How to use", Content = "Uses TableFlip Glove But Without Cooldown And It Creates R Button Where U Can Click To Use Table And There Will Be Cd Protection So U Wont Get Kicked"})


    local Button = GloveTab:CreateButton({
   Name = "Terry",
   Callback = function()
if game.Players.LocalPlayer.leaderstats.Glove.Value == "Run" then
local player = game.Players.LocalPlayer
local gui = player:WaitForChild("PlayerGui")

-- Create the ScreenGui
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "TERRYButton"
screenGui.ResetOnSpawn = true
screenGui.Parent = gui

-- Create the Button
local button = Instance.new("TextButton")
button.Size = UDim2.new(0, 100, 0, 100) -- Square shape
button.Position = UDim2.new(0, 1000, 0, 400)
button.Text = "E"
button.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.Font = Enum.Font.SourceSansBold
button.TextSize = 60
button.Parent = screenGui

-- Cooldown logic
local cooldown = false
local cooldownTime = 5 -- seconds
local updateRate = 0.05 -- how often to update display (smaller = smoother)

button.MouseButton1Click:Connect(function()
	if cooldown then return end

	-- Fire the Remote
	game:GetService("ReplicatedStorage").RunMasteryAbility:FireServer()

	-- Start Cooldown
	cooldown = true
	local timeLeft = cooldownTime
	while timeLeft > 0 do
		button.Text = string.format("%.2f", timeLeft)
		wait(updateRate)
		timeLeft -= updateRate
	end

	-- Reset
	button.Text = "E"
	cooldown = false
end)

-- Create UIStroke (black outline)
local stroke = Instance.new("UIStroke")
stroke.Color = Color3.fromRGB(0, 0, 0)
stroke.Thickness = 3
stroke.Transparency = 0
stroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
stroke.Parent = button

-- UICorner (rounded edges with clean radius)
local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0, 9) -- Ã°Å¸â€˜Ë† Clean: scale 0, offset 9
corner.Parent = button
else
Rayfield:Notify({
   Title = "Error",
   Content = "Equip Mastered run to workt",
   Duration = 6.5,
   Image = 4483362458,
})

end
end    
})






    local Paragraph = GloveTab:CreateParagraph({Title = "How to use", Content = "Uses Run Mastered Glove But Without Cooldown And It Creates R Button Where U Can Click To Use TERRY And There Will Be Cd Protection So U Wont Get Kicked"})




    local Button = GloveTab:CreateButton({
   Name = "Train",
   Callback = function()
if game.Players.LocalPlayer.leaderstats.Glove.Value == "bus" then
local player = game.Players.LocalPlayer
local gui = player:WaitForChild("PlayerGui")

-- Create the ScreenGui
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "TrainButton"
screenGui.ResetOnSpawn = true
screenGui.Parent = gui

-- Create the Button
local button = Instance.new("TextButton")
button.Size = UDim2.new(0, 100, 0, 100) -- Square shape
button.Position = UDim2.new(0, 1000, 0, 400)
button.Text = "E"
button.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.Font = Enum.Font.SourceSansBold
button.TextSize = 60
button.Parent = screenGui

-- Cooldown logic
local cooldown = false
local cooldownTime = 1 -- seconds
local updateRate = 0.05 -- how often to update display (smaller = smoother)

button.MouseButton1Click:Connect(function()
	if cooldown then return end

	-- Fire the Remote
	game:GetService("ReplicatedStorage").busmoment:FireServer()

	-- Start Cooldown
	cooldown = true
	local timeLeft = cooldownTime
	while timeLeft > 0 do
		button.Text = string.format("%.2f", timeLeft)
		wait(updateRate)
		timeLeft -= updateRate
	end

	-- Reset
	button.Text = "E"
	cooldown = false
end)

-- Create UIStroke (black outline)
local stroke = Instance.new("UIStroke")
stroke.Color = Color3.fromRGB(0, 0, 0)
stroke.Thickness = 3
stroke.Transparency = 0
stroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
stroke.Parent = button

-- UICorner (rounded edges with clean radius)
local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0, 9) -- Ã°Å¸â€˜Ë† Clean: scale 0, offset 9
corner.Parent = button
else
Rayfield:Notify({
   Title = "Error",
   Content = "Please use Bus for this to work",
   Duration = 6.5,
   Image = 4483362458,
})

end
end    
})



    local Paragraph = GloveTab:CreateParagraph({Title = "How to use", Content = "Uses Bus Glove But Without Cooldown And It Creates R Button Where U Can Click To Use TRAIN And There Will Be Cd Protection So U Wont Get Kicked"})


local Section = GloveTab:CreateSection("EdgeLords")


local Button = GloveTab:CreateButton({
   Name = "Echo Edgelord",
   Callback = function()
      local GloveStands, Portal = loadstring(game:HttpGet(('https://raw.githubusercontent.com/Donjosx/GenZ/refs/heads/main/LobbyName.lua'),true))()


game.StarterGui:SetCore("SendNotification", {Title = "Credit!", Text = "Edgelord V4 made by @Corrupt_Echo, Credit to @SBScripts [Original]", Duration = 5})
print("Edgelord made by Echo")

if not edgelordsetting then
	edgelordsetting = {
		HideClientVFX = false
	}
end
--[[Wait For Game]]--
if not game:IsLoaded() then
    game.Loaded:Wait()
end

if not game.Players.LocalPlayer.Character then return end
if game.Players.LocalPlayer.leaderstats.Glove.Value == "edgelord" then return end

local ToolRemote
local LastTool

local function findTool()
	local tool = game.Players.LocalPlayer.Backpack:FindFirstChildOfClass('Tool')
	if not tool then
		local character = game.Players.LocalPlayer.Character
		if character then
			tool = character:FindFirstChildOfClass('Tool')
		end
	end
	return tool
end

local function getToolHitRemote()
	local tool = findTool()
	if tool.Name == "Boxer" then ToolRemote = game.ReplicatedStorage.Events.Boxing return ToolRemote end
	if tool and tool ~= LastTool then
		LastTool = tool
		local scr = tool:FindFirstChildWhichIsA('LocalScript')

		if scr then
			for _, o in pairs(getgc()) do
				if type(o) == 'function' and getfenv(o).script == scr then
					local c = debug.getconstants(o)
					
					for _, p in pairs(c) do
						if p == 'isInArena' then
							for _, p2 in pairs(c) do
								for _, j in pairs(game.ReplicatedStorage:GetChildren()) do
									if j:IsA('RemoteEvent') and j.Name == p2 and j.Name ~= "GeneralAbility" then
										ToolRemote = j
										if ToolRemote then 
											if ToolRemote == game.ReplicatedStorage.b then ToolRemote = nil end
											
										end
										return ToolRemote
									end
								end
							end
						end
					end
				end
			end
		end
	end
end

local function ToolSlap(plr, value)
	if not value then value = false end 
	if ToolRemote then
		ToolRemote:FireServer(unpack({[1] = plr, [2] = value}))
	end
end

if game.Players.LocalPlayer.Character:FindFirstChild("entered") == nil then
	repeat wait() game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Portal.CFrame until game.Players.LocalPlayer.Character:FindFirstChild("entered") 
end
repeat task.wait() until game.Players.LocalPlayer.Character:FindFirstChildWhichIsA("Tool") or game.Players.LocalPlayer.Backpack:FindFirstChildWhichIsA("Tool")
for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
    if v.ClassName == "Tool" then
        ToolRemote = getToolHitRemote()
    end
end
game.Players.LocalPlayer.Character.Humanoid.Health = 0
wait(3.5)

local timePosition = 0
local Soundstopped = false
local createSound = loadstring(game:HttpGet("https://pastefy.app/yDd0Tkwi/raw"))() 
local CanStopEdgelord = true
local Namecall
Namecall = hookmetamethod(game, "__namecall", function(self, ...)
   if getnamecallmethod() == "FireServer" and tostring(self) == "Ban" then
       return
   elseif getnamecallmethod() == "FireServer" and tostring(self) == "WalkSpeedChanged" then
       return
   elseif getnamecallmethod() == "FireServer" and tostring(self) == "AdminGUI" then
       return
   end
   return Namecall(self, ...)
end)

local cloneref = cloneref or function(o) return o end
RunService = cloneref(game:GetService("RunService"))
--[[Lobby Check+Destroy Old]]--
if game.Players.LocalPlayer.Character.isInArena.Value == true then
	game.StarterGui:SetCore("SendNotification", {Title = "ERROR", Text = "Script can only be using in lobby.", Duration = 3})
	return
end
if game.Players.LocalPlayer.PlayerGui:FindFirstChild("EdgelordGui") ~= nil then
	game.Players.LocalPlayer.PlayerGui:FindFirstChild("EdgelordGui"):Destroy()
end
if game.Workspace:FindFirstChild("SafeSpotFlatPart") ~= nil then
	game.Workspace:FindFirstChild("SafeSpotFlatPart"):Destroy()
end

--[[Create SettingZone]]--
local SafeSpotFlatPart = Instance.new("Part", workspace)
SafeSpotFlatPart.Position = Vector3.new(86, -12173, 78)
SafeSpotFlatPart.Name = "SafeSpotFlatPart"
SafeSpotFlatPart.Size = Vector3.new(100, 0.1, 100)
SafeSpotFlatPart.Anchored = true
SafeSpotFlatPart.Transparency = 0
SafeSpotFlatPart.CanCollide = true

game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace:FindFirstChild("SafeSpotFlatPart").CFrame * CFrame.new(0, 1, 0)

--[[Create functionGUI]]--
local function AddCorner(instance, radius)
    local corner = Instance.new("UICorner", instance)
    corner.CornerRadius = UDim.new(0, radius)
    return corner
end
local function AddStroke(instance, thickness)
	local Stroke = Instance.new("UIStroke", instance)
	Stroke.Color = Color3.new(0, 0, 0)
	Stroke.Thickness = thickness
	return Stroke
end

local function createGradient(frame, color1, color2)
    local gradient = Instance.new("UIGradient")
    gradient.Color = ColorSequence.new{
        ColorSequenceKeypoint.new(0, color1),
        ColorSequenceKeypoint.new(1, color2)
    }
    gradient.Parent = frame
    return gradient
end

local EdgelordGui = Instance.new("ScreenGui",game.Players.LocalPlayer.PlayerGui)
EdgelordGui.Name = "EdgelordGui"
EdgelordGui.ResetOnSpawn = false
EdgelordGui.DisplayOrder = 1

local EAbilityButton = Instance.new("Frame",EdgelordGui)
EAbilityButton.BackgroundColor3 = Color3.new(100, 0, 0)
EAbilityButton.Size = UDim2.new(.1 , 0, .22 , 0) 
EAbilityButton.Position = UDim2.new(0.82, 0, 0.06, 0)
EAbilityButton.Transparency = 0
EAbilityButton.Draggable = false
EAbilityButton.Visible = false
local EAbilityButtonReal = Instance.new("TextButton",EAbilityButton)
EAbilityButtonReal.Size = UDim2.new(1, 0, 1, 0)
EAbilityButtonReal.Position = UDim2.new(0, 0, 0, 0)
EAbilityButtonReal.Text = "E"
EAbilityButtonReal.TextSize = 80
EAbilityButtonReal.TextColor3 = Color3.new(255, 255, 255)
EAbilityButtonReal.Font = Enum.Font.SourceSans
EAbilityButtonReal.BackgroundTransparency = 1
AddCorner(EAbilityButton, 10)
AddStroke(EAbilityButton, 4)
createGradient(EAbilityButton, Color3.new(1,1,1), Color3.new(0,0,1))
local TAbilityButton = Instance.new("Frame",EdgelordGui)
TAbilityButton.BackgroundColor3 = Color3.new(100, 0, 0)
TAbilityButton.Size = UDim2.new(.1 , 0, .22 , 0) 
TAbilityButton.Position = UDim2.new(0.76, 0, 0.3, 0)
TAbilityButton.Transparency = 0
TAbilityButton.Draggable = false
TAbilityButton.Visible = false
local TAbilityButtonReal = Instance.new("TextButton",TAbilityButton)
TAbilityButtonReal.Size = UDim2.new(1, 0, 1, 0)
TAbilityButtonReal.Position = UDim2.new(0, 0, 0, 0)
TAbilityButtonReal.Text = "T"
TAbilityButtonReal.TextSize = 80
TAbilityButtonReal.TextColor3 = Color3.new(255, 255, 255)
TAbilityButtonReal.Font = Enum.Font.SourceSans
TAbilityButtonReal.BackgroundTransparency = 1
AddCorner(TAbilityButton, 10)
AddStroke(TAbilityButton, 4)
createGradient(TAbilityButton, Color3.new(1,1,1), Color3.new(0,0,1))
local FAbilityButton = Instance.new("Frame",EdgelordGui)
FAbilityButton.BackgroundColor3 = Color3.new(100, 0, 0)
FAbilityButton.Size = UDim2.new(.1 , 0, .22 , 0)
FAbilityButton.Position = UDim2.new(0.87, 0, 0.3, 0)
FAbilityButton.Transparency = 0
FAbilityButton.Draggable = false
FAbilityButton.Visible = false
local FAbilityButtonReal = Instance.new("TextButton",FAbilityButton)
FAbilityButtonReal.Size = UDim2.new(1, 0, 1, 0)
FAbilityButtonReal.Position = UDim2.new(0, 0, 0, 0)
FAbilityButtonReal.Text = "F"
FAbilityButtonReal.TextSize = 80
FAbilityButtonReal.TextColor3 = Color3.new(255, 255, 255)
FAbilityButtonReal.Font = Enum.Font.SourceSans
FAbilityButtonReal.BackgroundTransparency = 1
AddCorner(FAbilityButton, 10)
AddStroke(FAbilityButton, 4)
createGradient(FAbilityButton, Color3.new(1,1,1), Color3.new(0,0,1))
local TelekineticOnTap = Instance.new("TextButton", EdgelordGui)
TelekineticOnTap.Size = UDim2.new(0.112, 0, 0.1, 0)
TelekineticOnTap.Position = UDim2.new(0.75, 0, 0.53, 0)
TelekineticOnTap.BackgroundColor3 = Color3.new(0, 0, 0)
TelekineticOnTap.Text = "Touch use ability (Enabled)"
TelekineticOnTap.TextScaled = true
TelekineticOnTap.TextColor3 = Color3.new(255, 255, 255)
TelekineticOnTap.Font = Enum.Font.Cartoon
TelekineticOnTap.Transparency = 0.4
TelekineticOnTap.Visible = false
AddCorner(TelekineticOnTap, 5)
local TouchToTelekinetic = true
TelekineticOnTap.MouseButton1Click:Connect(function()
	if TelekineticOnTap.Text == "Touch use ability (Enabled)" then
		TelekineticOnTap.Text = "Touch use ability (Disabled)"
		TouchToTelekinetic = false
	else
		TelekineticOnTap.Text = "Touch use ability (Enabled)"
		TouchToTelekinetic = true
	end
end)

local SlapstickMode = Instance.new("TextButton", EdgelordGui)
SlapstickMode.Size = UDim2.new(0.112, 0, 0.1, 0)
SlapstickMode.Position = UDim2.new(0.865, 0, 0.53, 0)
SlapstickMode.BackgroundColor3 = Color3.new(0, 0, 0)
SlapstickMode.Text = "Slapstick mode (Disabled)"
SlapstickMode.TextScaled = true
SlapstickMode.TextColor3 = Color3.new(255, 255, 255)
SlapstickMode.Font = Enum.Font.Cartoon
SlapstickMode.Transparency = 0.4
SlapstickMode.Visible = false
AddCorner(SlapstickMode, 5)
local Slapstick = false
if not ToolRemote then SlapstickMode.Text = "Slapstick mode (LOCKED)" end

SlapstickMode.MouseButton1Click:Connect(function()
	if SlapstickMode.Text == "Slapstick mode (Disabled)" then
		SlapstickMode.Text = "Slapstick mode (Enabled)"
		game.StarterGui:SetCore("SendNotification", {Title = "System", Text = "Slapstick mode enabled", Duration = 1})
		Slapstick = true
	elseif SlapstickMode.Text == "Slapstick mode (Enabled)" then
		SlapstickMode.Text = "Slapstick mode (Disabled)"
		game.StarterGui:SetCore("SendNotification", {Title = "System", Text = "Slapstick mode disabled", Duration = 1})
		Slapstick = false
	end
end)

local DaShowing = Instance.new("TextButton",EdgelordGui)
DaShowing.Size = UDim2.new(0.02, 0, 0.58, 0)
DaShowing.Position = UDim2.new(0.978, 0, 0.05, 0)
DaShowing.BackgroundColor3 = Color3.new(0, 0, 0)
DaShowing.Text = ">"
DaShowing.TextSize = 25
DaShowing.TextColor3 = Color3.new(255, 255, 255)
DaShowing.Font = Enum.Font.SourceSans
DaShowing.Transparency = 0.4
DaShowing.Visible = false
AddCorner(DaShowing, 5)
DaShowing.MouseButton1Click:Connect(function()
	if DaShowing.Text == ">" then
		DaShowing.Text = "<"
		EAbilityButton.Visible = false
		TAbilityButton.Visible = false
		FAbilityButton.Visible = false
		TelekineticOnTap.Visible = false
		SlapstickMode.Visible = false
	else
		DaShowing.Text = ">"
		EAbilityButton.Visible = true
		TAbilityButton.Visible = true
		FAbilityButton.Visible = true
		TelekineticOnTap.Visible = true
		SlapstickMode.Visible = true
	end
end)


local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")

if not game.CoreGui:FindFirstChild("Notification Maker") then
    local screenGui = Instance.new("ScreenGui", game.CoreGui)
    screenGui.Name = "Notification Maker"
end
local screenGui = game.CoreGui:FindFirstChild("Notification Maker")
if not screenGui:FindFirstChild("notificationCenter") then
    local notificationCenter = Instance.new("Frame")
    notificationCenter.Size = UDim2.new(0.2, 0, 1, 0)
    notificationCenter.Position = UDim2.new(0.8, 0, 0, 0)
    notificationCenter.BackgroundTransparency = 1
    notificationCenter.Parent = screenGui
    notificationCenter.Name = "notificationCenter"
end
local notificationCenter = screenGui:FindFirstChild("notificationCenter")

local notifications = {}
local function updateNotificationPositions()
    for i, notification in ipairs(notifications) do
        local targetPos = UDim2.new(1, -(100 * i + 10 * (i - 1)) - 10, 0.65, 0)
        TweenService:Create(notification, TweenInfo.new(0.5, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {Position = targetPos}):Play()
    end
end

local function AddCorner(instance, radius)
    local corner = Instance.new("UICorner", instance)
    corner.CornerRadius = UDim.new(0, radius)
    return corner
end

local function AddStroke(instance, thickness)
	local Stroke = Instance.new("UIStroke", instance)
	Stroke.Color = Color3.new(0, 0, 0)
	Stroke.Thickness = thickness
	return Stroke
end

local function createCooldown(Notify)
    if Notify.Fill == nil then Notify.Fill = 0 end
    
    local notification = Instance.new("Frame", notificationCenter)
    notification.Size = UDim2.new(0, 100, 0, 50)
    notification.Position = UDim2.new(1, 10, 0.65, 0)
    notification.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
    notification.BorderColor3 = Color3.fromRGB(30, 30, 30)
    notification.BorderSizePixel = 2
    notification.Active = true
    table.insert(notifications, 1, notification)
    AddCorner(notification, 5)
    AddStroke(notification, 2)
    
    local titleLabel = Instance.new("TextLabel")
    titleLabel.Size = UDim2.new(1, 0, 0.5, 0)
    titleLabel.Position = UDim2.new(0, 0, 0, 0)
    titleLabel.BackgroundTransparency = 1
    titleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    titleLabel.Text = Notify.Title
    titleLabel.Font = Enum.Font.SourceSansBold
    titleLabel.TextSize = 14
    titleLabel.TextXAlignment = Enum.TextXAlignment.Center
    titleLabel.Parent = notification
    
    local timeFrame = Instance.new("Frame") 
    timeFrame.Size = UDim2.new(0.9, 0, 0.35, 0)
    timeFrame.Position = UDim2.new(0.05, 0, 0.5, 0)
    timeFrame.BackgroundColor3 = Color3.new(0.15, 0.15, 0.15)
    timeFrame.BorderSizePixel = 0
    timeFrame.Parent = notification
    AddCorner(timeFrame, 5)
    local timeBar = Instance.new("Frame")
    timeBar.BackgroundColor3 = Color3.new(1, 1, 1)
    timeBar.BorderSizePixel = 0
    timeBar.Parent = timeFrame
    AddCorner(timeBar, 5)
    
    local showTween = TweenService:Create(notification, TweenInfo.new(0.3, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {Position = UDim2.new(0, 0, 0, 0)})
    showTween:Play()
    updateNotificationPositions()

    local startTime = tick()
    local cooldownEnded = false
    RunService.RenderStepped:Connect(function()
        if not cooldownEnded then
            local elapsedTime = tick() - startTime
            if elapsedTime < Notify.Time then
                timeBar.Size = UDim2.new(1 - (elapsedTime / Notify.Time), 0, 1, 0)
            else
                timeBar.Size = UDim2.new(0, 0, 1, 0)
                cooldownEnded = true
				
                if Notify.Fill > 0 then
                    local fillTime = startTime + Notify.Time
                    RunService.RenderStepped:Connect(function()
		                local fillElapsedTime = tick() - fillTime
		                if fillElapsedTime < Notify.Fill then
		                    timeBar.Size = UDim2.new((fillElapsedTime / Notify.Fill), 0, 1, 0)
		                end
		            end)
                end
            end
        end
    end)
    
    local function endCooldown()
        if notification then
            table.remove(notifications, table.find(notifications, notification))
            cooldownEnded = true
            local hideTween = TweenService:Create(notification, TweenInfo.new(0.3, Enum.EasingStyle.Quint, Enum.EasingDirection.In), {Position = UDim2.new(1, 10, 0.65, 0)})
            hideTween:Play()
            hideTween.Completed:Connect(function()
                notification:Destroy()
                updateNotificationPositions()
            end)
        end
    end
    
    delay(Notify.Time + Notify.Fill, function()
        endCooldown()
    end)
    
    return notification 
end

--[[Create Animation/Animation Controller]]--
local function ReplaceAnim(Name, Id)
	for i,v in pairs(game.Players.LocalPlayer.Character.Animate:GetChildren()) do
		if v.Name == Name then
			for i,g in pairs(v:GetChildren()) do
				g.AnimationId = "rbxassetid://" .. Id
			end
		end
	end
end

if game.ReplicatedStorage:FindFirstChild("TheForceAnim") == nil then
	local EdgeAnim = Instance.new("Animation")
	EdgeAnim.AnimationId = "rbxassetid://16102717448"
	EdgeAnim.Parent = game.ReplicatedStorage
	EdgeAnim.Name = "TheForceAnim"
	return EdgeAnim
end

local function PauseAnim(Anim)
    local Humanoid = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid") or game.Players.LocalPlayer.Character:FindFirstChildOfClass("AnimationController")
    local ActiveTracks = Humanoid:GetPlayingAnimationTracks()
    for _, v in pairs(ActiveTracks) do
        if v.Animation.AnimationId == "rbxassetid://"..Anim then
            v:AdjustSpeed(0)
        end
    end
end

local function StopAnim(Anim)
    local Humanoid = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid") or game.Players.LocalPlayer.Character:FindFirstChildOfClass("AnimationController")
    local ActiveTracks = Humanoid:GetPlayingAnimationTracks()
    for _, v in pairs(ActiveTracks) do
        if v.Animation.AnimationId == "rbxassetid://"..Anim then
            v:Stop()
        end
    end
end

--[[Camera]]--
local function ShakeScreen(shakeTime, shakeIntensity)
    local originalRotation = workspace.CurrentCamera.CFrame
    local function Shake()
        local shakeX = (math.random() - 0.5) * 2
        local shakeY = (math.random() - 0.5) * 2
        local shakeRotation = CFrame.Angles(shakeIntensity * shakeX, shakeIntensity * shakeY, 0)
        workspace.CurrentCamera.CFrame = originalRotation * shakeRotation
    end
    local elapsedTime = 0
    while elapsedTime < shakeTime do
        Shake()
        wait(0.01)
        elapsedTime = elapsedTime + 0.01
    end
    workspace.CurrentCamera.CFrame = originalRotation
end

local tweens = {
    {Property = "FieldOfView", Goal = 70},
    {Property = "FieldOfView", Goal = 450},
    {Property = "FieldOfView", Goal = 80}
}

local function startTween(index)
    if index <= #tweens then
        local properties = {
            [tweens[index].Property] = tweens[index].Goal
        }
        local tween = game:GetService("TweenService"):Create(game.Workspace.CurrentCamera, TweenInfo.new(0.35, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, 0, false, 0), properties)
        tween:Play()
        tween.Completed:Connect(function()
            startTween(index + 1)
        end)
    end
end

--[[Hightlight]]--
local function Highlight(plr)
	local Highlight = Instance.new("Highlight", EdgelordGui)
    Highlight.Name = plr.Name
    Highlight.DepthMode = "AlwaysOnTop"
    Highlight.FillTransparency = 1
    Highlight.OutlineColor = Color3.new(1,1,1)
    Highlight.OutlineTransparency = 0
    local plrchar = plr.Character
    if plrchar then
        Highlight.Adornee = plrchar
    end
end
--[[Equip edgelord+ Ability]]--
local function edgelordGlove()
	game.Players.LocalPlayer.leaderstats.Glove.Value = "edgelord"
	ReplaceAnim("idle", 16163355836)
    ReplaceAnim("walk", 16163350920)
    createSound(game.Players.LocalPlayer.Character.HumanoidRootPart,9133844756, 5)
    spawn(function()
	    repeat task.wait(1.5)
		    if not game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("rbxassetid://9133844756") then
			    createSound(game.Players.LocalPlayer.Character.HumanoidRootPart,9133844756, 10)
				wait(1)
				for i,v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
					if v.Name == "rbxassetid://9133844756" and v:IsA("Sound") then
						if Soundstopped == true then
						    v.Volume = 0
						else
						    v.Volume = .5
						end
					end
				end
		    end
	    until game.Players.LocalPlayer.Character == nil or game.Players.LocalPlayer.Character.Humanoid.Health == 0
    end)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.workspace.Origo.CFrame * CFrame.new(0,-5,0)
	startTween(1)
	if table.find({Enum.Platform.IOS, Enum.Platform.Android}, game:GetService("UserInputService"):GetPlatform()) then 
		 wait();
		print("The script found you are using mobile device, enabled mobile gui!")
		EAbilityButton.Visible = true
		TAbilityButton.Visible = true
		FAbilityButton.Visible = true
		TelekineticOnTap.Visible = true
		SlapstickMode.Visible = true
		DaShowing.Visible = true
	else
		game.StarterGui:SetCore("SendNotification", {Title = "System", Text = "Keybind: E:Ability, T:Teleport, F:Music Toggle, Q:Slapstick mode toggle", Duration = 5})
	end
	local ModelEffect = game:GetObjects("rbxassetid://14949130713")[1]
	if ModelEffect and edgelordsetting.HideClientVFX == false then
		Highlight(game.Players.LocalPlayer)
		for i,v in pairs(ModelEffect.HumanoidRootPart:GetChildren()) do
			if v.ClassName == "ParticleEmitter" then
				for i,p in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
					if p:IsA("Part") then
						v:Clone().Parent = p
					end
				end
			end
		end
	end
	ModelEffect:Destroy()
end

local CanBeTelekinetic = true
local lastClickTime = 0
local TelekineticCooldown = 1.4
local function EClicked()
    if CanBeTelekinetic then return end
    if tick() - lastClickTime < TelekineticCooldown then
        return
    end
    CanBeTelekinetic = true
    createSound(game.Players.LocalPlayer.Character.HumanoidRootPart,858508159, 40)
	createCooldown({Title = "THE FORCE", Time = TelekineticCooldown - .1})
    for i,v in pairs(game.Players:GetChildren()) do
		StopAnim(16102717448)
        game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(game.ReplicatedStorage.TheForceAnim):Play()
        if v ~= game.Players.LocalPlayer and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and v.Character then
            if v.Character:FindFirstChild("HumanoidRootPart") and v.Character:FindFirstChild("rock") == nil and v.Character.HumanoidRootPart.BrickColor ~= BrickColor.new("New Yeller") then
                if v.Character.Head:FindFirstChild("UnoReverseCard") == nil and v.Character:FindFirstChild("stevebody") == nil then
                    local Magnitude = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Character.HumanoidRootPart.Position).Magnitude
                    if ToolRemote and Slapstick == false then
	                    if Magnitude <= 40 then
							if OGlove ~= "Boxer" then
		                        ToolSlap(v.Character:WaitForChild("HumanoidRootPart"), true)
	                    	else
	                            game.ReplicatedStorage.Events.Boxing:FireServer(v, false)
	                        end
	                    end
					else
						game:GetService("ReplicatedStorage").slapstick:FireServer("runeffect")
						game:GetService("ReplicatedStorage").slapstick:FireServer("cancelrun")
						game:GetService("ReplicatedStorage").slapstick:FireServer("dash")
						break
					end
                end
            end
        end
    end
    if ToolSlap then
		for _, c in pairs(workspace:GetChildren()) do
			if string.find(c.Name, "Å") and c:FindFirstChild("HumanoidRootPart") then
				local Magnitude2 = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - c.HumanoidRootPart.Position).Magnitude
				if Magnitude2 <= math.huge then
					if OGlove == "Boxer" then ToolSlap(c, false) else ToolSlap(c:WaitForChild("HumanoidRootPart"), true) end
				end
			end
		end
	end
    lastClickTime = tick()
    CanBeTelekinetic = false
end

local TeleportForPc = false
local Teleport = false
local TeleportPE = false
local function TClicked()
    if Teleport then 
        return 
    end
    Teleport = true
    TeleportPE = true
end


local function FClicked()
	if not game.Players.LocalPlayer.Character or not game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") then return end
	for i,v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
		if v.Name == "rbxassetid://9133844756" and v:IsA("Sound") then
			if v.Volume == .5 then
			    v.Volume = 0
				Soundstopped = true
			else
			    v.Volume = .5
				Soundstopped = false
			end
		else
	    	if v:IsA("ParticleEmitter") and edgelordsetting.HideClientVFX == false then
		    	v.Enabled = not v.Enabled
    		end
        end
	end
end

--[[OnDead]]--
local PlayerDeadConnection
local function PlayerDead()
	if CanStopEdgelord == false then return end
	print("stopped")
	if game.CoreGui:FindFirstChild("Notification Maker") then
		game.CoreGui:FindFirstChild("Notification Maker"):Destroy()
	end
	if game.Players.LocalPlayer.PlayerGui:FindFirstChild("EdgelordGui") then
		fireclickdetector(GloveStands[OGlove].ClickDetector)
		game.Players.LocalPlayer.leaderstats.Glove.Value = OGlove
	    CanBeTelekinetic = true
	    Teleport = false
	    TeleportPE = false
	    TeleportForPc = false
	    TouchToTelekinetic = true
		EdgelordGui:Destroy()
		game.Workspace.Camera.FieldOfView = 70
	end
	if game.Players.LocalPlayer.PlayerGui:FindFirstChild("EdgelordGui") ~= nil then
		game.Players.LocalPlayer.PlayerGui:FindFirstChild("EdgelordGui"):Destroy()
	end
	if game.Workspace:FindFirstChild("SafeSpotFlatPart") ~= nil then
		game.Workspace:FindFirstChild("SafeSpotFlatPart"):Destroy()
	end
	if PlayerDeadConnection then 
        PlayerDeadConnection:Disconnect()
    end
end

PlayerDeadConnection = game.Players.LocalPlayer.CharacterAdded:Connect(function(character)
    PlayerDead()
end)
--[[function connect]]--
game:GetService("UserInputService").InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch and TeleportPE then
		local Teleportpos = game.Players.LocalPlayer:GetMouse().Hit+Vector3.new(0,2.5,0)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Teleportpos.X,Teleportpos.Y,Teleportpos.Z)
		Teleport = false
		TeleportPE = false
	end
end)

game:GetService("UserInputService").InputBegan:Connect(function(input, gameProcessedEvent)
    if gameProcessedEvent then return end
    if not TouchToTelekinetic then return end
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch or input.KeyCode == Enum.KeyCode.E then
        EClicked()
    end
end)

game:GetService("UserInputService").InputBegan:Connect(function(input)
    if input.KeyCode == Enum.KeyCode.F then
        FClicked()
    elseif input.KeyCode == Enum.KeyCode.Q then
	    if not ToolRemote then 
		    game.StarterGui:SetCore("SendNotification", {Title = "System", Text = "Slapstick mode are locked because your glove isn't supported slap aura", Duration = 3})
		    return 
	    end
	    if Slapstick == false then
		    Slapstick = true
			game.StarterGui:SetCore("SendNotification", {Title = "System", Text = "Slapstick mode enabled", Duration = 1})
	    else
		    Slapstick = false
			game.StarterGui:SetCore("SendNotification", {Title = "System", Text = "Slapstick mode disabled", Duration = 1})
	    end
    elseif input.KeyCode == Enum.KeyCode.T and TeleportForPc then
		local Teleportpos = game.Players.LocalPlayer:GetMouse().Hit+Vector3.new(0,2.5,0)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Teleportpos.X,Teleportpos.Y,Teleportpos.Z)
    end
end)
EAbilityButtonReal.MouseButton1Click:Connect(EClicked)
TAbilityButtonReal.MouseButton1Click:Connect(TClicked)
FAbilityButtonReal.MouseButton1Click:Connect(FClicked)
--[[Others]]--
local gui = Instance.new("ScreenGui", game.CoreGui)

local EffectUI = Instance.new("Frame",gui)
EffectUI.Size = UDim2.new(0.3, 0, 0.3, 0)
EffectUI.Position = UDim2.new(0.34, 0, -0.2, 0)
EffectUI.BackgroundColor3 = Color3.new(1, 1, 1)
EffectUI.BorderColor3 = Color3.new(0, 0, 0)
EffectUI.BorderSizePixel = 1
EffectUI.Active = false

local PhaseEffect = Instance.new("ImageButton", EffectUI)
PhaseEffect.Size = UDim2.new(0.28, 0, 0.48, 0)
PhaseEffect.Position = UDim2.new(0.05, 0, 0.42, 0)
PhaseEffect.BackgroundColor3 = Color3.new(0, 0, 0)
PhaseEffect.BorderColor3 = Color3.new(0, 0, 0)
PhaseEffect.BorderSizePixel = 1
PhaseEffect.Image = "rbxthumb://type=Asset&id=13780996974&w=150&h=150"
PhaseEffect.MouseButton1Click:Connect(function()
	local OGlove = game.Players.LocalPlayer.leaderstats.Glove.Value
	EffectUI.Visible = false
    fireclickdetector(GloveStands.Phase.ClickDetector)
    wait(0.5)
    if game.Players.LocalPlayer.leaderstats.Glove.Value ~= "Phase" then
	    game.StarterGui:SetCore("SendNotification", {Title = "ERROR!", Text = "You don't have Phase glove", Duration = 2})
		EffectUI.Visible = true
		fireclickdetector(workspace.Lobby[OGlove].ClickDetector)
	else
	    wait(0.3)
	    game:GetService("ReplicatedStorage").PhaseA:FireServer()
	    fireclickdetector(GloveStands.Diamond.ClickDetector)
		game:GetService("ReplicatedStorage"):WaitForChild("Rockmode"):FireServer()
	    wait(6.4)
	    game:GetService("ReplicatedStorage"):WaitForChild("Rockmode"):FireServer()
	    game:GetService("ReplicatedStorage").Ghostinvisibilitydeactivated:FireServer()
	    EffectUI.Visible = true
	    fireclickdetector(GloveStands[OGlove].ClickDetector)
	end
end)



local KineticEffect = Instance.new("ImageButton", EffectUI)
KineticEffect.Size = UDim2.new(0.28, 0, 0.48, 0)
KineticEffect.Position = UDim2.new(0.36, 0, 0.42, 0)
KineticEffect.BackgroundColor3 = Color3.new(0, 0, 0)
KineticEffect.BorderColor3 = Color3.new(0, 0, 0)
KineticEffect.BorderSizePixel = 1
KineticEffect.Image = "rbxthumb://type=Asset&id=858523025&w=150&h=150"
KineticEffect.MouseButton1Click:Connect(function()
	local OGlove = game.Players.LocalPlayer.leaderstats.Glove.Value
	EffectUI.Visible = false
	fireclickdetector(GloveStands.Kinetic.ClickDetector)
	wait(0.5)
	if game.Players.LocalPlayer.leaderstats.Glove.Value ~= "Kinetic" then
		game.StarterGui:SetCore("SendNotification", {Title = "ERROR!", Text = "You don't have Kinetic glove to get effect", Duration = 2})
		EffectUI.Visible = true
		fireclickdetector(workspace.Lobby[OGlove].ClickDetector)
	else
		for i = 1, 250 do
			game:GetService("ReplicatedStorage").SelfKnockback:FireServer(unpack({[1] = {["Direction"] = Vector3.new(-0, 0.5, -0),["Force"] = 0}}))
			wait(0.01)
		end
		EffectUI.Visible = true
	    fireclickdetector(GloveStands[OGlove].ClickDetector)
	end
end)



local StartUsing = Instance.new("TextButton", EffectUI)
StartUsing.Size = UDim2.new(0.28, 0, 0.48, 0)
StartUsing.Position = UDim2.new(0.67, 0, 0.42, 0)
StartUsing.BackgroundColor3 = Color3.new(0, 0, 0)
StartUsing.BorderColor3 = Color3.new(0, 0, 0)
StartUsing.BorderSizePixel = 1
StartUsing.Text = "Equip Edgelord"
StartUsing.TextScaled = true
StartUsing.TextColor3 = Color3.new(255, 255, 255)
StartUsing.Font = Enum.Font.SourceSansBold
StartUsing.MouseButton1Click:Connect(function()
	OGlove = game.Players.LocalPlayer.leaderstats.Glove.Value
    gui:Destroy()
	if ToolRemote then 
	    edgelordGlove()
		TeleportForPc = false
		CanBeTelekinetic = false
	else
		game.StarterGui:SetCore("SendNotification", {Title = "Error!", Text = OGlove.." glove are not supported", Duration = 2})
		edgelordGlove()
		TeleportForPc = false
		CanBeTelekinetic = false
	end
end)
    end
  })

local Button = GloveTab:CreateButton({
   Name = "Scripter Edgelord",
   Callback = function()
    if game.Players.LocalPlayer.leaderstats.Glove.Value == "Dual" then
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")

-- Animation instances
local idleAnim = Instance.new("Animation")
idleAnim.AnimationId = "rbxassetid://16163355836"  -- Idle animation
local walkAnim = Instance.new("Animation")
walkAnim.AnimationId = "rbxassetid://16163350920"  -- Walking animation

-- Load animations
local idleTrack = humanoid:LoadAnimation(idleAnim)
local walkTrack = humanoid:LoadAnimation(walkAnim)

-- Function to update the animation based on walking or standing
local function updateAnimation()
    if humanoid.WalkSpeed > 0 then
        -- If the player is walking, play walking animation
        if not walkTrack.IsPlaying then
            walkTrack:Play()
            idleTrack:Stop()  -- Stop idle animation if walking
        end
    else
        -- If the player is standing still, play idle animation
        if not idleTrack.IsPlaying then
            idleTrack:Play()
            walkTrack:Stop()  -- Stop walking animation if standing still
        end
    end
end

-- Continuously update the animation based on the player's state
game:GetService("RunService").Heartbeat:Connect(function()
    updateAnimation()
end)
----------------------------------------------------------------------------------------------------------------E BUTTON
local player = game.Players.LocalPlayer
local gui = player:WaitForChild("PlayerGui")

-- Create the ScreenGui
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "EdgelordEButton"
screenGui.ResetOnSpawn = true
screenGui.Parent = gui

-- Create the Button
local button = Instance.new("TextButton")
button.Size = UDim2.new(0, 100, 0, 100) -- Square shape
button.Position = UDim2.new(0, 1000, 0, 400)
button.Text = "E"
button.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.Font = Enum.Font.SourceSansBold
button.TextSize = 60
button.Parent = screenGui

-- Cooldown logic
local cooldown = false
local cooldownTime = 0 -- seconds
local updateRate = 0 -- how often to update display (smaller = smoother)

button.MouseButton1Click:Connect(function()
	if cooldown then return end

	-- Fire the Remote
local player = game.Players.LocalPlayer
local animationId = "rbxassetid://17670135152"  -- The animation ID you provided

local function playAnimation()
    local character = player.Character or player.CharacterAdded:Wait()
    local humanoid = character:WaitForChild("Humanoid")

    -- Create the animation instance
    local animation = Instance.new("Animation")
    animation.AnimationId = animationId  -- Set the animation ID

    -- Load the animation onto the humanoid
    local animationTrack = humanoid:LoadAnimation(animation)

    -- Play the animation
    animationTrack:Play()
end

-- Example: Play animation when script runs (can be triggered by other events too)
task.wait()  -- Optional wait to ensure character is fully loaded
playAnimation()

            local Players = game:GetService("Players")
            local ReplicatedStorage = game:GetService("ReplicatedStorage")
            
            for _, player in pairs(Players:GetPlayers()) do
                if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
                    local args = { [1] = player.Character.HumanoidRootPart }
                    ReplicatedStorage:WaitForChild("GeneralHit"):FireServer(unpack(args))
                end
            end

	-- Start Cooldown
	cooldown = true
	local timeLeft = cooldownTime
	while timeLeft > 0 do
		button.Text = string.format("%.2f", timeLeft)
		wait(updateRate)
		timeLeft -= updateRate
	end

	-- Reset
	button.Text = "E"
	cooldown = false
end)

-- Create UIStroke (black outline)
local stroke = Instance.new("UIStroke")
stroke.Color = Color3.fromRGB(0, 0, 0)
stroke.Thickness = 3
stroke.Transparency = 0
stroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
stroke.Parent = button

-- UICorner (rounded edges with clean radius)
local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0, 9) -- Ã°Å¸â€˜Ë† Clean: scale 0, offset 9
corner.Parent = button
----------------------------------------------------------------------------------------------------------------R BUTTON
local player = game.Players.LocalPlayer
local gui = player:WaitForChild("PlayerGui")

-- Create the ScreenGui
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "EdgelordRButton"
screenGui.ResetOnSpawn = true
screenGui.Parent = gui

-- Create the Button
local button = Instance.new("TextButton")
button.Size = UDim2.new(0, 100, 0, 100) -- Square shape
button.Position = UDim2.new(0, 1000, 0, 295)
button.Text = "R"
button.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.Font = Enum.Font.SourceSansBold
button.TextSize = 60
button.Parent = screenGui

-- Cooldown logic
local cooldown = false
local cooldownTime = 0 -- seconds
local updateRate = 0 -- how often to update display (smaller = smoother)

button.MouseButton1Click:Connect(function()
	if cooldown then return end

	-- Fire the Remote
game.Players.LocalPlayer.Character.Humanoid.Health = 0

	-- Start Cooldown
	cooldown = true
	local timeLeft = cooldownTime
	while timeLeft > 0 do
		button.Text = string.format("%.2f", timeLeft)
		wait(updateRate)
		timeLeft -= updateRate
	end

	-- Reset
	button.Text = "R"
	cooldown = false
end)

-- Create UIStroke (black outline)
local stroke = Instance.new("UIStroke")
stroke.Color = Color3.fromRGB(0, 0, 0)
stroke.Thickness = 3
stroke.Transparency = 0
stroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
stroke.Parent = button

-- UICorner (rounded edges with clean radius)
local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0, 9) -- Ã°Å¸â€˜Ë† Clean: scale 0, offset 9
corner.Parent = button
----------------------------------------------------------------------------------------------------------------T BUTTON
local player = game.Players.LocalPlayer
local gui = player:WaitForChild("PlayerGui")

-- Create the ScreenGui
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "EdgelordTButton"
screenGui.ResetOnSpawn = true
screenGui.Parent = gui

-- Create the Button
local button = Instance.new("TextButton")
button.Size = UDim2.new(0, 100, 0, 100) -- Square shape
button.Position = UDim2.new(0, 900, 0, 295)
button.Text = "T"
button.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.Font = Enum.Font.SourceSansBold
button.TextSize = 60
button.Parent = screenGui

-- Cooldown logic
local cooldown = false
local cooldownTime = 0 -- seconds
local updateRate = 0 -- how often to update display (smaller = smoother)

button.MouseButton1Click:Connect(function()
	if cooldown then return end

	-- Fire the Remote
local Players = game:GetService("Players")
local player = Players.LocalPlayer

local function teleportForward()
    local character = player.Character or player.CharacterAdded:Wait()
    local hrp = character:WaitForChild("HumanoidRootPart")

    -- Get the direction the player is facing
    local lookDirection = hrp.CFrame.LookVector.Unit

    -- Move 5 studs in that direction
    local offset = lookDirection * 20
    local newPosition = hrp.Position + offset

    -- Teleport the player forward
    hrp.CFrame = CFrame.new(newPosition, newPosition + lookDirection)
end

teleportForward()

	-- Start Cooldown
	cooldown = true
	local timeLeft = cooldownTime
	while timeLeft > 0 do
		button.Text = string.format("%.2f", timeLeft)
		wait(updateRate)
		timeLeft -= updateRate
	end

	-- Reset
	button.Text = "T"
	cooldown = false
end)

-- Create UIStroke (black outline)
local stroke = Instance.new("UIStroke")
stroke.Color = Color3.fromRGB(0, 0, 0)
stroke.Thickness = 3
stroke.Transparency = 0
stroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
stroke.Parent = button

-- UICorner (rounded edges with clean radius)
local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0, 9) -- Ã°Å¸â€˜Ë† Clean: scale 0, offset 9
corner.Parent = button
----------------------------------------------------------------------------------------------------------------F BUTTON
local player = game.Players.LocalPlayer
local gui = player:WaitForChild("PlayerGui")

-- Create the ScreenGui
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "EdgelordFButton"
screenGui.ResetOnSpawn = true
screenGui.Parent = gui

-- Create the Button
local button = Instance.new("TextButton")
button.Size = UDim2.new(0, 100, 0, 100) -- Square shape
button.Position = UDim2.new(0, 900, 0, 400)
button.Text = "F"
button.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.Font = Enum.Font.SourceSansBold
button.TextSize = 60
button.Parent = screenGui

-- Cooldown logic
local cooldown = false
local cooldownTime = 0 -- seconds
local updateRate = 0 -- how often to update display (smaller = smoother)
button.MouseButton1Click:Connect(function()
	if cooldown then return end

	-- Fire the Remote
if game.Players.LocalPlayer.leaderstats.Glove.Value == "Kinetic" then
game.ReplicatedStorage.SelfKnockback:FireServer({["Force"] = 0,["Direction"] = Vector3.new(0,0.01,0)})
else
Rayfield:Notify({
   Title = "Error",
   Content = "Use Kinetic",
   Duration = 6.5,
   Image = 4483362458,
})
end

	-- Start Cooldown
	cooldown = true
	local timeLeft = cooldownTime
	while timeLeft > 0 do
		button.Text = string.format("%.2f", timeLeft)
		wait(updateRate)
		timeLeft -= updateRate
	end

	-- Reset
	button.Text = "F"
	cooldown = false
end)

-- Create UIStroke (black outline)
local stroke = Instance.new("UIStroke")
stroke.Color = Color3.fromRGB(0, 0, 0)
stroke.Thickness = 3
stroke.Transparency = 0
stroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
stroke.Parent = button

-- UICorner (rounded edges with clean radius)
local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0, 9) -- Ã°Å¸â€˜Ë† Clean: scale 0, offset 9
corner.Parent = button

else
Rayfield:Notify({
   Title = "error",
   Content = "Equip Duel glove to work",
   Duration = 6.5,
   Image = 4483362458,
})
end
end    
        })
  



 




local ExploitTab = Window:CreateTab("Exploits", "rewind")
local Button = ExploitTab:CreateButton({
   Name = "RogueLike 2x Xp",
   Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/xNHnhGS1"))();
   -- The function that takes place when the button is pressed
   end,
})

local Button = ExploitTab:CreateButton({
   Name = "RogueLike 2x Xp",
   Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/xNHnhGS1"))();
   -- The function that takes place when the button is pressed
   end,
})

local Button = ExploitTab:CreateButton({
   Name = "Collect All swordfighter swords",
   Callback = function()
      loadstring(game:HttpGet("https://pastefy.app/7ZjlrNYB/raw",true))()
   -- The function that takes place when the button is pressed
   end,
})

local Button = ExploitTab:CreateButton({
   Name = "DefaultSpoofer",
   Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/Pro666Pro/OpenSourceScripts/refs/heads/main/Other/DefaultSpoofer.luau",true))()
   -- The function that takes place when the button is pressed
   end,
})

local Button = ExploitTab:CreateButton({
   Name = "God Mode",
   Callback = function()
      loadstring(game:HttpGet("https://github.com/Pro666Pro/OpenSourceScripts/raw/refs/heads/main/Other/GodMode.luau",true))()
   -- The function that takes place when the button is pressed
   end,
})

local Button = ExploitTab:CreateButton({
   Name = "No Cooldown",
   Callback = function()
     loadstring(game:HttpGet("https://github.com/Pro666Pro/OpenSourceScripts/raw/refs/heads/main/Other/NoCooldown.lua",true))()
   -- The function that takes place when the button is pressed
   end,
})

local Button = ExploitTab:CreateButton({
   Name = "Inf Slaps Fr",
   Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/Pro666Pro/OpenSourceScripts/refs/heads/main/Other/Scary/Pim.luau",true))()
   -- The function that takes place when the button is pressed
   end,
})

local Button = ExploitTab:CreateButton({
   Name = "Buttons",
   Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/Pro666Pro/OpenSourceScripts/refs/heads/main/UI/MoreButtons.luau",true))()
   -- The function that takes place when the button is pressed
   end,
})


local Button = ExploitTab:CreateButton({
   Name = "Insta-Max Kinetic",
   Callback = function()
      for i = 1, 100 do
			game:GetService("ReplicatedStorage").SelfKnockback:FireServer(unpack({[1] = {["Direction"] = Vector3.new(-0, 0.5, -0),["Force"] = 0}}))
			wait(0.01)
      end
   -- The function that takes place when the button is pressed
   end,
})






local MTab = Window:CreateTab("Mastery", "Atom")

  local Button = MTab:CreateButton({
   Name = "Spin",
   Callback = function()
fireclickdetector(game.Workspace.Lobby.spin.ClickDetector)
    if game.Players.LocalPlayer.Character:FindFirstChild("entered") == nil and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
repeat task.wait()
firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport1.TouchInterest.Parent, 0)
firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport1.TouchInterest.Parent, 1)
until game.Players.LocalPlayer.Character:FindFirstChild("entered")
end
    if workspace:FindFirstChild("Baseplate") then
game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame = workspace.Baseplate.CFrame * CFrame.new(0,10,0)
game:GetService("StarterGui"):SetCore("SendNotification",{
	Title = "Teleported to Baseplate!",
    Text = "Hi",
    Icon = "rbxassetid://15315284749",
	Duration = 5,
	Button1 = "Alright!"
})
elseif workspace:FindFirstChild("Baseplate") == nil then
print("HI")
    end
   end,
})










local Button = ExploitTab:CreateButton({
   Name = "Equip Spin",
   Callback = function()
      fireclickdetector(game.Workspace.Lobby.spin.ClickDetector)
   -- The function that takes place when the button is pressed
   end,
})

local Button = ExploitTab:CreateButton({
   Name = "Equip Eggler",
   Callback = function()
      fireclickdetector(game.Workspace.Lobby.Eggler.ClickDetector)
   -- The function that takes place when the button is pressed
   end,
})






local Button = ExploitTab:CreateButton({
   Name = "Nickname",
   Callback = function()
      game.Players.LocalPlayer.Character.Head.Nametag.TextLabel.Text = "Astro"
   -- The function that takes place when the button is pressed
   end,
})
