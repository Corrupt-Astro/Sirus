--[[
    ========================================================================
    CUSTOM SLAP BATTLES GLOVE SCRIPT: "GOD OF DEATH" & "EDGELORD" COMPATIBLE
    ========================================================================
    Features:
    - Arena teleportation & flying ascension startup
    - Dynamic custom Auras (Blue/Black default, Red/Black for God of Death)
    - Customized Walking & Idle Animations
    - Custom Ability Buttons HUD on the side of the screen:
       1) CLICK TELEPORT (Teleportation where you click)
       2) SUPER SLAP (Slaps closest target or targets around you with maximum force)
       3) GOD OF DEATH (Transcendence state turning Aura into Red & Black)
]]

-- Load Dependencies & Safely wait for Game Load
if not game:IsLoaded() then
    game.Loaded:Wait()
end

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local Character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
local Humanoid = Character:WaitForChild("Humanoid")
local RootPart = Character:WaitForChild("HumanoidRootPart")
local TweenService = game:GetService("TweenService")
local Debris = game:GetService("Debris")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local UserInputService = game:GetService("UserInputService")
local Mouse = LocalPlayer:GetMouse()

-- Remote Event Resolution Helper
local SlapEvent = ReplicatedStorage:FindFirstChild("GeneralHit") or ReplicatedStorage:FindFirstChild("b")
if not SlapEvent then
    for _, child in ipairs(ReplicatedStorage:GetDescendants()) do
        if child:IsA("RemoteEvent") and (child.Name:lower():find("hit") or child.Name == "b") then
            SlapEvent = child
            break
        end
    end
end

-- State variables
local GodOfDeathActive = false
local TeleportModeActive = false
local SuperSlapCooldown = false
local TeleportCooldown = false
local GodOfDeathCooldown = false

-- Keep track of active aura particles so we can modify or destroy them
local ActiveAuraParticles = {}

-- Clean up any previous UI instances of this script
if game.CoreGui:FindFirstChild("CustomSlapHUD") then
    game.CoreGui:FindFirstChild("CustomSlapHUD"):Destroy()
end

-- ==========================================
-- 1. UTILITY FUNCTIONS (Aura & Visual Effects)
-- ==========================================

local function CreateAura(primaryColor, secondaryColor)
    -- Clean up old aura if existing
    for _, item in ipairs(ActiveAuraParticles) do
        if item and item.Parent then
            item:Destroy()
        end
    end
    ActiveAuraParticles = {}

    local attachment = RootPart:FindFirstChild("AuraAttachment") or Instance.new("Attachment")
    attachment.Name = "AuraAttachment"
    attachment.Parent = RootPart

    -- Primary Particle (Swirling energy)
    local p1 = Instance.new("ParticleEmitter")
    p1.Color = ColorSequence.new(primaryColor)
    p1.Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.5), NumberSequenceKeypoint.new(0.5, 2.5), NumberSequenceKeypoint.new(1, 0)})
    p1.Texture = "rbxassetid://244220140" -- Swirl texture
    p1.Lifetime = NumberRange.new(0.8, 1.5)
    p1.Rate = 45
    p1.Speed = NumberRange.new(3, 6)
    p1.VelocitySpread = 360
    p1.RotSpeed = NumberRange.new(-100, 100)
    p1.Acceleration = Vector3.new(0, 8, 0)
    p1.LightEmission = 0.6
    p1.LightInfluence = 0
    p1.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 1), NumberSequenceKeypoint.new(0.2, 0.2), NumberSequenceKeypoint.new(0.8, 0.2), NumberSequenceKeypoint.new(1, 1)})
    p1.Parent = attachment
    table.insert(ActiveAuraParticles, p1)

    -- Secondary Particle (Dark/Black mist sparks)
    local p2 = Instance.new("ParticleEmitter")
    p2.Color = ColorSequence.new(secondaryColor)
    p2.Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 1), NumberSequenceKeypoint.new(1, 4)})
    p2.Texture = "rbxassetid://1084991187" -- Dark smoke aura
    p2.Lifetime = NumberRange.new(1, 2)
    p2.Rate = 35
    p2.Speed = NumberRange.new(1, 3)
    p2.VelocitySpread = 180
    p2.RotSpeed = NumberRange.new(-50, 50)
    p2.Acceleration = Vector3.new(0, 4, 0)
    p2.LightEmission = 0
    p2.LightInfluence = 0
    p2.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 1), NumberSequenceKeypoint.new(0.3, 0.5), NumberSequenceKeypoint.new(1, 1)})
    p2.Parent = attachment
    table.insert(ActiveAuraParticles, p2)
end

-- ==========================================
-- 2. ANIMATION SYSTEM
-- ==========================================

local function ApplyCustomAnimations()
    local Animate = Character:FindFirstChild("Animate")
    if Animate then
        -- We override the default asset IDs with sleek custom styles matching an Edgelord/Death style
        local walk = Animate:FindFirstChild("walk")
        if walk then
            local walkAnim = walk:FindFirstChildOfClass("Animation")
            if walkAnim then
                -- Edgelord running/hovering animation replacement
                walkAnim.AnimationId = "rbxassetid://616168032" 
            end
        end
        local run = Animate:FindFirstChild("run")
        if run then
            local runAnim = run:FindFirstChildOfClass("Animation")
            if runAnim then
                runAnim.AnimationId = "rbxassetid://616168032"
            end
        end
        local idle = Animate:FindFirstChild("idle")
        if idle then
            local idleAnim1 = idle:FindFirstChild("Animation1")
            local idleAnim2 = idle:FindFirstChild("Animation2")
            if idleAnim1 then idleAnim1.AnimationId = "rbxassetid://507766388" end
            if idleAnim2 then idleAnim2.AnimationId = "rbxassetid://507766388" end
        end
    end
end

-- ==========================================
-- 3. FLYING AND ARENA TELEPORTATION SEQUENCE
-- ==========================================

local function StartGloveIntro()
    -- Teleport immediately to the standard Arena coordinates
    RootPart.CFrame = CFrame.new(10, 5, 20)
    wait(0.2)

    -- Force rise / floating motion
    local bodyVelocity = Instance.new("BodyVelocity")
    bodyVelocity.MaxForce = Vector3.new(1, 1, 1) * 1000000
    bodyVelocity.Velocity = Vector3.new(0, 12, 0)
    bodyVelocity.Parent = RootPart

    -- Create Initial custom Blue and Black Aura
    CreateAura(Color3.fromRGB(0, 128, 255), Color3.fromRGB(0, 0, 0))

    -- Play dramatic atmospheric charge sound
    local s = Instance.new("Sound")
    s.SoundId = "rbxassetid://9069609268" -- Sci-fi charge sound
    s.Volume = 1.5
    s.Parent = RootPart
    s:Play()
    Debris:AddItem(s, 5)

    wait(3.5) -- Float up for 3.5 seconds

    -- Drop sequence: Release velocity & fall down gracefully
    bodyVelocity:Destroy()
    
    local bodyThrust = Instance.new("BodyVelocity")
    bodyThrust.MaxForce = Vector3.new(1, 1, 1) * 1000000
    bodyThrust.Velocity = Vector3.new(0, -65, 0) -- slam down
    bodyThrust.Parent = RootPart
    
    wait(0.6)
    bodyThrust:Destroy()

    -- Ground slam visual shake
    local slamSound = Instance.new("Sound")
    slamSound.SoundId = "rbxassetid://260430060" -- Explosion/impact sound
    slamSound.Volume = 1
    slamSound.Parent = RootPart
    slamSound:Play()
    Debris:AddItem(slamSound, 3)
end

-- ==========================================
-- 4. THE 3 ABILITY DEFINITIONS
-- ==========================================

-- Ability 1: Teleportation where you click
local function ActivateTeleportation()
    if TeleportCooldown then return end
    TeleportModeActive = true
    
    -- Highlight state or notifications can be added here
    local targetPosition = Mouse.Hit.p
    if targetPosition then
        TeleportCooldown = true
        TeleportModeActive = false
        
        -- Flashy visual transition effect at start point
        local pStart = Instance.new("ParticleEmitter")
        pStart.Color = ColorSequence.new(GodOfDeathActive and Color3.fromRGB(255,0,0) or Color3.fromRGB(0, 120, 255))
        pStart.Size = NumberSequence.new(1, 4)
        pStart.Texture = "rbxassetid://258133527"
        pStart.Rate = 100
        pStart.Lifetime = NumberRange.new(0.5, 0.8)
        local attStart = Instance.new("Attachment", RootPart)
        pStart.Parent = attStart
        Debris:AddItem(attStart, 1)
        pStart:Emit(30)
        
        -- Teleport
        RootPart.CFrame = CFrame.new(targetPosition + Vector3.new(0, 3, 0))
        
        -- Slap battles sound impact for blink
        local tpSound = Instance.new("Sound")
        tpSound.SoundId = "rbxassetid://200632871"
        tpSound.Volume = 1.2
        tpSound.Parent = RootPart
        tpSound:Play()
        Debris:AddItem(tpSound, 2)

        task.spawn(function()
            wait(2.5) -- 2.5 second cooldown
            TeleportCooldown = false
        end)
    end
end

-- Ability 2: Area / Single Target Slap Extender
local function ActivateSuperSlap()
    if SuperSlapCooldown then return end
    SuperSlapCooldown = true

    local slapSound = Instance.new("Sound")
    slapSound.SoundId = "rbxassetid://1548324867" -- Swish sound
    slapSound.Volume = 1.5
    slapSound.Parent = RootPart
    slapSound:Play()
    Debris:AddItem(slapSound, 2)

    -- Scan for nearby enemies in general arena boundaries
    local reachDistance = GodOfDeathActive and 35 or 20
    for _, otherPlayer in ipairs(Players:GetPlayers()) do
        if otherPlayer ~= LocalPlayer and otherPlayer.Character and otherPlayer.Character:FindFirstChild("HumanoidRootPart") then
            local distance = (otherPlayer.Character.HumanoidRootPart.Position - RootPart.Position).Magnitude
            if distance <= reachDistance then
                -- Fire slap remote securely
                if SlapEvent then
                    local args = {
                        [1] = otherPlayer.Character:FindFirstChild("Head") or otherPlayer.Character.HumanoidRootPart,
                        [2] = GodOfDeathActive and 99999 or 75, -- Absolute knockback power if God of Death is active
                        [3] = true
                    }
                    SlapEvent:FireServer(unpack(args))
                end
            end
        end
    end

    task.spawn(function()
        wait(GodOfDeathActive and 1 or 3.5) -- God of Death grants super low cooldown (1s) instead of 3.5s
        SuperSlapCooldown = false
    end)
end

-- Ability 3: God of Death Transformation
local function ToggleGodOfDeath()
    if GodOfDeathCooldown then return end
    GodOfDeathCooldown = true
    GodOfDeathActive = not GodOfDeathActive

    if GodOfDeathActive then
        -- Transition to Red and Black Menacing Aura
        CreateAura(Color3.fromRGB(220, 0, 0), Color3.fromRGB(15, 0, 0))
        Humanoid.WalkSpeed = 32 -- God speed
        
        -- Dark theme sound
        local epicSound = Instance.new("Sound")
        epicSound.SoundId = "rbxassetid://9043810051" -- Sinister energy background loop
        epicSound.Volume = 1.8
        epicSound.Looped = true
        epicSound.Name = "DeathTheme"
        epicSound.Parent = RootPart
        epicSound:Play()

        -- Custom death aura screen shake or force shield visual
        local forceField = Instance.new("ForceField")
        forceField.Visible = true
        forceField.Parent = Character
        Debris:AddItem(forceField, 15) -- Lasts 15 seconds
    else
        -- Back to standard Blue and Black aura
        CreateAura(Color3.fromRGB(0, 128, 255), Color3.fromRGB(0, 0, 0))
        Humanoid.WalkSpeed = 16
        local oldTheme = RootPart:FindFirstChild("DeathTheme")
        if oldTheme then oldTheme:Destroy() end
    end

    task.spawn(function()
        wait(20) -- 20 Seconds transformation cooldown before toggling state again
        GodOfDeathCooldown = false
    end)
end

-- ==========================================
-- 5. PREMIUM USER INTERACTION HUD (GUI)
-- ==========================================

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "CustomSlapHUD"
ScreenGui.ResetOnSpawn = false
ScreenGui.Parent = game.CoreGui

-- Main Container panel placed neatly on the right/side screen boundaries
local SidePanel = Instance.new("Frame")
SidePanel.Name = "SidePanel"
SidePanel.Size = UDim2.new(0, 130, 0, 320)
SidePanel.Position = UDim2.new(0.9, -140, 0.35, 0)
SidePanel.BackgroundColor3 = Color3.fromRGB(10, 10, 15)
SidePanel.BackgroundTransparency = 0.2
SidePanel.BorderSizePixel = 2
SidePanel.BorderColor3 = Color3.fromRGB(0, 128, 255)
SidePanel.Parent = ScreenGui

-- Corner styling for sleek interface look
local UIListLayout = Instance.new("UIListLayout")
UIListLayout.Parent = SidePanel
UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Padding = UDim.new(0, 15)

local Padding = Instance.new("UIPadding")
Padding.PaddingTop = UDim.new(0, 15)
Padding.PaddingBottom = UDim.new(0, 15)
Padding.Parent = SidePanel

local Corner = Instance.new("UICorner")
Corner.CornerRadius = UDim.new(0, 12)
Corner.Parent = SidePanel

-- Ability Button 1 Creator
local BtnTeleport = Instance.new("TextButton")
BtnTeleport.Name = "TeleportAbility"
BtnTeleport.Size = UDim2.new(0.85, 0, 0.23, 0)
BtnTeleport.BackgroundColor3 = Color3.fromRGB(20, 20, 35)
BtnTeleport.TextColor3 = Color3.fromRGB(0, 180, 255)
BtnTeleport.Font = Enum.Font.GothamBold
BtnTeleport.Text = "TELEPORT\n(CLICK)"
BtnTeleport.TextSize = 12
BtnTeleport.Parent = SidePanel
Instance.new("UICorner", BtnTeleport).CornerRadius = UDim.new(0, 8)

-- Ability Button 2 Creator
local BtnSlap = Instance.new("TextButton")
BtnSlap.Name = "SuperSlapAbility"
BtnSlap.Size = UDim2.new(0.85, 0, 0.23, 0)
BtnSlap.BackgroundColor3 = Color3.fromRGB(20, 20, 35)
BtnSlap.TextColor3 = Color3.fromRGB(0, 255, 128)
BtnSlap.Font = Enum.Font.GothamBold
BtnSlap.Text = "SUPER SLAP\n(REACH)"
BtnSlap.TextSize = 12
BtnSlap.Parent = SidePanel
Instance.new("UICorner", BtnSlap).CornerRadius = UDim.new(0, 8)

-- Ability Button 3 Creator (God of Death State Trigger)
local BtnDeath = Instance.new("TextButton")
BtnDeath.Name = "GodOfDeathAbility"
BtnDeath.Size = UDim2.new(0.85, 0, 0.23, 0)
BtnDeath.BackgroundColor3 = Color3.fromRGB(30, 10, 10)
BtnDeath.TextColor3 = Color3.fromRGB(255, 50, 50)
BtnDeath.Font = Enum.Font.GothamBold
BtnDeath.Text = "GOD OF\nDEATH"
BtnDeath.TextSize = 12
BtnDeath.Parent = SidePanel
Instance.new("UICorner", BtnDeath).CornerRadius = UDim.new(0, 8)

-- Button Interactions (Visual Hovering/Clicking Effects and Functions)
BtnTeleport.MouseButton1Click:Connect(function()
    if TeleportCooldown then return end
    BtnTeleport.BackgroundColor3 = Color3.fromRGB(10, 10, 20)
    ActivateTeleportation()
    wait(0.2)
    BtnTeleport.BackgroundColor3 = Color3.fromRGB(20, 20, 35)
end)

BtnSlap.MouseButton1Click:Connect(function()
    if SuperSlapCooldown then return end
    BtnSlap.BackgroundColor3 = Color3.fromRGB(10, 10, 20)
    ActivateSuperSlap()
    wait(0.2)
    BtnSlap.BackgroundColor3 = Color3.fromRGB(20, 20, 35)
end)

BtnDeath.MouseButton1Click:Connect(function()
    if GodOfDeathCooldown then return end
    BtnDeath.BackgroundColor3 = Color3.fromRGB(10, 5, 5)
    ToggleGodOfDeath()
    
    -- Visual theme switch for the controller HUD
    if GodOfDeathActive then
        SidePanel.BorderColor3 = Color3.fromRGB(220, 0, 0)
        BtnDeath.Text = "REVERT\nTO MORTAL"
    else
        SidePanel.BorderColor3 = Color3.fromRGB(0, 128, 255)
        BtnDeath.Text = "GOD OF\nDEATH"
    end
    
    wait(0.2)
    BtnDeath.BackgroundColor3 = Color3.fromRGB(30, 10, 10)
end)

-- Keyboard Binds as well for seamless desktop play
UserInputService.InputBegan:Connect(function(input, processed)
    if processed then return end
    if input.KeyCode == Enum.KeyCode.E then
        ActivateTeleportation()
    elseif input.KeyCode == Enum.KeyCode.R then
        ActivateSuperSlap()
    elseif input.KeyCode == Enum.KeyCode.Q then
        ToggleGodOfDeath()
    end
end)

-- Run Initiation Sequence
ApplyCustomAnimations()
StartGloveIntro()

-- Handle respawns safely
LocalPlayer.CharacterAdded:Connect(function(newChar)
    Character = newChar
    Humanoid = Character:WaitForChild("Humanoid")
    RootPart = Character:WaitForChild("HumanoidRootPart")
    ApplyCustomAnimations()
    CreateAura(Color3.fromRGB(0, 128, 255), Color3.fromRGB(0, 0, 0))
end)
