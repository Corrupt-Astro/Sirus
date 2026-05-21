--[[
    ██████╗  ██████╗ ██████╗      ██████╗ ███████╗    ██████╗ ███████╗ █████╗ ████████╗██╗  ██╗
   ██╔════╝ ██╔═══██╗██╔══██╗    ██╔═══██╗██╔════╝   ██╔══██╗██╔════╝██╔══██╗╚══██╔══╝██║  ██║
   ██║  ███╗██║   ██║██║  ██║    ██║   ██║█████╗     ██║  ██║█████╗  ███████║   ██║   ███████║
   ██║   ██║██║   ██║██║  ██║    ██║   ██║██╔══╝     ██║  ██║██╔══╝  ██╔══██║   ██║   ██╔══██║
   ╚██████╔╝╚██████╔╝██████╔╝    ╚██████╔╝██║        ██████╔╝███████╗██║  ██║   ██║   ██║  ██║
    ╚═════╝  ╚═════╝ ╚═════╝      ╚═════╝ ╚═╝        ╚═════╝ ╚══════╝╚═╝  ╚═╝   ╚═╝   ╚═╝  ╚═╝

    God of Death Glove Script — Custom Slap Battles Glove
    Abilities:
        [1 / Button 1] — Click-to-Teleport (blink to cursor position)
        [2 / Button 2] — Death Slap     (AoE slap all nearby players)
        [3 / Button 3] — God of Death   (transform: red & black aura, reaper mode)
    
    Intro Sequence:
        → Teleport to Arena via Obby portal
        → Rise into the air with blue & black aura
        → Fall back down dramatically
    
    Uses data from Death_glove_Obby (portal refs) and Death_Gloves_Hits (hit table)
    Structured after Edgelord V4 by @DonjoSx / @SBScripts
--]]

-- ═══════════════════════════════════════════════
--   SERVICES
-- ═══════════════════════════════════════════════
local Players           = game:GetService("Players")
local RunService        = game:GetService("RunService")
local TweenService      = game:GetService("TweenService")
local UserInputService  = game:GetService("UserInputService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Workspace         = game:GetService("Workspace")

local LocalPlayer = Players.LocalPlayer
local Mouse       = LocalPlayer:GetMouse()

-- ═══════════════════════════════════════════════
--   SAFETY GUARDS
-- ═══════════════════════════════════════════════
if not game:IsLoaded() then game.Loaded:Wait() end
if not LocalPlayer.Character then return end

-- Prevent double-run
if LocalPlayer.PlayerGui:FindFirstChild("GodOfDeathGui") then
    LocalPlayer.PlayerGui:FindFirstChild("GodOfDeathGui"):Destroy()
end
if Workspace:FindFirstChild("GoDSafePart") then
    Workspace:FindFirstChild("GoDSafePart"):Destroy()
end

-- ═══════════════════════════════════════════════
--   PORTAL / LOBBY REFERENCES (Death_glove_Obby)
--   game.Workspace.Lobby, Lobby.Teleport1, Lobby.brazil.portal
-- ═══════════════════════════════════════════════
local Lobby    = Workspace:WaitForChild("Lobby", 10)
local Portal   = Lobby and Lobby:FindFirstChild("Teleport1")
local BrPortal = Lobby and Lobby:FindFirstChild("brazil") and Lobby.brazil:FindFirstChild("portal")

-- ═══════════════════════════════════════════════
--   TOOL REMOTE HELPER (mirrors Edgelord pattern)
-- ═══════════════════════════════════════════════
local ToolRemote
local LastTool

local function findTool()
    local tool = LocalPlayer.Backpack:FindFirstChildOfClass("Tool")
    if not tool then
        local char = LocalPlayer.Character
        if char then tool = char:FindFirstChildOfClass("Tool") end
    end
    return tool
end

local function getToolHitRemote()
    local tool = findTool()
    if not tool then return end
    if tool.Name == "Boxer" then
        ToolRemote = ReplicatedStorage.Events:FindFirstChild("Boxing")
        return ToolRemote
    end
    if tool ~= LastTool then
        LastTool = tool
        local scr = tool:FindFirstChildWhichIsA("LocalScript")
        if scr then
            for _, o in pairs(getgc()) do
                if type(o) == "function" and getfenv(o).script == scr then
                    local c = debug.getconstants(o)
                    for _, p in pairs(c) do
                        if p == "isInArena" then
                            for _, p2 in pairs(c) do
                                for _, j in pairs(ReplicatedStorage:GetChildren()) do
                                    if j:IsA("RemoteEvent") and j.Name == p2 and j.Name ~= "GeneralAbility" then
                                        ToolRemote = j
                                        if ToolRemote == ReplicatedStorage:FindFirstChild("b") then
                                            ToolRemote = nil
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

local function ToolSlap(target, value)
    if not value then value = false end
    if ToolRemote then
        ToolRemote:FireServer(target, value)
    end
end

-- ═══════════════════════════════════════════════
--   BLOCKING HOOKS (prevent bans / speed kicks)
-- ═══════════════════════════════════════════════
local Namecall
Namecall = hookmetamethod(game, "__namecall", function(self, ...)
    local method = getnamecallmethod()
    if method == "FireServer" then
        local name = tostring(self)
        if name == "Ban" or name == "WalkSpeedChanged" or name == "AdminGUI" then
            return
        end
    end
    return Namecall(self, ...)
end)

-- ═══════════════════════════════════════════════
--   STATE FLAGS
-- ═══════════════════════════════════════════════
local GodModeActive    = false   -- ability 3 / reaper form
local CanSlap          = true
local CanTeleport      = true
local CanGodMode       = true
local IsCleaningUp     = false

local SLAP_COOLDOWN    = 2.0
local TELE_COOLDOWN    = 1.0
local GOD_COOLDOWN     = 30.0
local GOD_DURATION     = 15.0

-- ═══════════════════════════════════════════════
--   ANIMATION IDs  (replace with owned IDs as needed)
--   Walk / Idle / Ability use generic R6 placeholders;
--   swap these for custom uploaded animation asset IDs.
-- ═══════════════════════════════════════════════
local ANIM_IDLE_NORMAL  = "180435571"   -- default R6 idle
local ANIM_WALK_NORMAL  = "180426354"   -- default R6 walk
local ANIM_IDLE_REAPER  = "507766388"   -- creepy idle (replace)
local ANIM_WALK_REAPER  = "180426354"   -- death walk (replace)
local ANIM_RISE         = "507766388"   -- rise/levitate anim (replace)
local ANIM_SLAP         = "507770239"   -- slap anim (replace)

-- ═══════════════════════════════════════════════
--   HELPER: Replace built-in Animate script tracks
-- ═══════════════════════════════════════════════
local function ReplaceAnim(name, id)
    local char = LocalPlayer.Character
    if not char then return end
    local animScript = char:FindFirstChild("Animate")
    if not animScript then return end
    for _, v in pairs(animScript:GetChildren()) do
        if v.Name == name then
            for _, g in pairs(v:GetChildren()) do
                if g:IsA("Animation") then
                    g.AnimationId = "rbxassetid://" .. id
                end
            end
        end
    end
end

local function StopAnimById(id)
    local char = LocalPlayer.Character
    if not char then return end
    local hum = char:FindFirstChildOfClass("Humanoid")
    if not hum then return end
    for _, track in pairs(hum:GetPlayingAnimationTracks()) do
        if track.Animation.AnimationId == "rbxassetid://" .. id then
            track:Stop()
        end
    end
end

local function PlayAnimById(id)
    local char = LocalPlayer.Character
    if not char then return end
    local hum = char:FindFirstChildOfClass("Humanoid")
    if not hum then return end
    local anim = Instance.new("Animation")
    anim.AnimationId = "rbxassetid://" .. id
    local track = hum:LoadAnimation(anim)
    track:Play()
    return track
end

-- ═══════════════════════════════════════════════
--   AURA BUILDER
--   Creates a set of ParticleEmitters on every limb.
--   color1 / color2 = ColorSequence for the gradient.
-- ═══════════════════════════════════════════════
local AuraParts = {}  -- track created emitters for cleanup / recolour

local function ClearAura()
    for _, emitter in pairs(AuraParts) do
        if emitter and emitter.Parent then
            emitter:Destroy()
        end
    end
    AuraParts = {}
end

local function BuildAura(char, color1, color2, size)
    ClearAura()
    size = size or 3
    for _, part in pairs(char:GetChildren()) do
        if part:IsA("BasePart") then
            -- Outer wispy flame
            local flame = Instance.new("ParticleEmitter", part)
            flame.Color        = ColorSequence.new(color1, color2)
            flame.LightEmission = 0.8
            flame.LightInfluence = 0.2
            flame.Size         = NumberSequence.new({
                NumberSequenceKeypoint.new(0,   size * 0.4),
                NumberSequenceKeypoint.new(0.5, size),
                NumberSequenceKeypoint.new(1,   0),
            })
            flame.Transparency = NumberSequence.new({
                NumberSequenceKeypoint.new(0,   0.1),
                NumberSequenceKeypoint.new(0.5, 0.4),
                NumberSequenceKeypoint.new(1,   1),
            })
            flame.Speed        = NumberRange.new(2, 5)
            flame.SpreadAngle  = Vector2.new(30, 30)
            flame.Rate         = 30
            flame.Lifetime     = NumberRange.new(0.5, 1.2)
            flame.RotSpeed     = NumberRange.new(-45, 45)
            flame.Rotation     = NumberRange.new(0, 360)
            flame.Name         = "GoDFlame"
            table.insert(AuraParts, flame)

            -- Inner core glow
            local glow = Instance.new("ParticleEmitter", part)
            glow.Color         = ColorSequence.new(color2, color1)
            glow.LightEmission  = 1
            glow.LightInfluence = 0
            glow.Size          = NumberSequence.new({
                NumberSequenceKeypoint.new(0,   size * 0.2),
                NumberSequenceKeypoint.new(1,   0),
            })
            glow.Transparency  = NumberSequence.new({
                NumberSequenceKeypoint.new(0,   0.3),
                NumberSequenceKeypoint.new(1,   1),
            })
            glow.Speed         = NumberRange.new(1, 3)
            glow.SpreadAngle   = Vector2.new(10, 10)
            glow.Rate          = 20
            glow.Lifetime      = NumberRange.new(0.3, 0.7)
            glow.Name          = "GoDGlow"
            table.insert(AuraParts, glow)
        end
    end
end

-- BLUE + BLACK aura (default form)
local function ApplyBlueAura(char)
    BuildAura(char,
        Color3.fromRGB(0, 80, 255),
        Color3.fromRGB(0, 0, 0),
        3
    )
end

-- RED + BLACK aura (God of Death form)
local function ApplyRedAura(char)
    BuildAura(char,
        Color3.fromRGB(200, 0, 0),
        Color3.fromRGB(0, 0, 0),
        4.5
    )
end

-- ═══════════════════════════════════════════════
--   SCREEN SHAKE
-- ═══════════════════════════════════════════════
local function ShakeScreen(duration, intensity)
    local cam = Workspace.CurrentCamera
    local origin = cam.CFrame
    local elapsed = 0
    while elapsed < duration do
        local rx = (math.random() - 0.5) * 2
        local ry = (math.random() - 0.5) * 2
        cam.CFrame = origin * CFrame.Angles(intensity * rx, intensity * ry, 0)
        task.wait(0.01)
        elapsed += 0.01
    end
    cam.CFrame = origin
end

-- ═══════════════════════════════════════════════
--   FOV CINEMATIC
-- ═══════════════════════════════════════════════
local function FovSequence(sequence)
    local cam = Workspace.CurrentCamera
    local function step(i)
        if i > #sequence then return end
        local tween = TweenService:Create(cam,
            TweenInfo.new(sequence[i][2], Enum.EasingStyle.Sine, Enum.EasingDirection.InOut),
            {FieldOfView = sequence[i][1]}
        )
        tween:Play()
        tween.Completed:Connect(function() step(i + 1) end)
    end
    step(1)
end

-- ═══════════════════════════════════════════════
--   GUI BUILDERS
-- ═══════════════════════════════════════════════
local function AddCorner(inst, radius)
    local c = Instance.new("UICorner", inst)
    c.CornerRadius = UDim.new(0, radius or 8)
end

local function AddStroke(inst, thickness, color)
    local s = Instance.new("UIStroke", inst)
    s.Thickness = thickness or 2
    s.Color = color or Color3.new(0, 0, 0)
end

local function AddGradient(inst, c1, c2, rotation)
    local g = Instance.new("UIGradient", inst)
    g.Color = ColorSequence.new(c1, c2)
    g.Rotation = rotation or 90
end

-- Root GUI
local GoDGui = Instance.new("ScreenGui", LocalPlayer.PlayerGui)
GoDGui.Name           = "GodOfDeathGui"
GoDGui.ResetOnSpawn   = false
GoDGui.DisplayOrder   = 10
GoDGui.IgnoreGuiInset = true

-- ── Cooldown notification system ─────────────────
local notifGui = Instance.new("ScreenGui", game.CoreGui)
notifGui.Name         = "GoDNotifGui"
notifGui.ResetOnSpawn = false
notifGui.DisplayOrder = 20

local notifCenter = Instance.new("Frame", notifGui)
notifCenter.Size              = UDim2.new(0, 130, 1, 0)
notifCenter.Position          = UDim2.new(1, -145, 0, 0)
notifCenter.BackgroundTransparency = 1

local activeNotifs = {}

local function UpdateNotifPositions()
    for i, n in ipairs(activeNotifs) do
        TweenService:Create(n, TweenInfo.new(0.3, Enum.EasingStyle.Quint, Enum.EasingDirection.Out),
            {Position = UDim2.new(0, 5, 0, 10 + (i - 1) * 60)}):Play()
    end
end

local function CreateCooldownNotif(title, duration, barColor)
    local frame = Instance.new("Frame", notifCenter)
    frame.Size            = UDim2.new(1, -10, 0, 50)
    frame.Position        = UDim2.new(2, 0, 0, 0)   -- off screen start
    frame.BackgroundColor3 = Color3.fromRGB(12, 12, 18)
    AddCorner(frame, 6)
    AddStroke(frame, 2, Color3.fromRGB(80, 0, 120))

    local titleLbl = Instance.new("TextLabel", frame)
    titleLbl.Size             = UDim2.new(1, 0, 0.45, 0)
    titleLbl.BackgroundTransparency = 1
    titleLbl.TextColor3       = Color3.fromRGB(220, 180, 255)
    titleLbl.Text             = title
    titleLbl.Font             = Enum.Font.GothamBold
    titleLbl.TextSize         = 13
    titleLbl.TextXAlignment   = Enum.TextXAlignment.Center

    local barBg = Instance.new("Frame", frame)
    barBg.Size              = UDim2.new(0.9, 0, 0.3, 0)
    barBg.Position          = UDim2.new(0.05, 0, 0.6, 0)
    barBg.BackgroundColor3  = Color3.fromRGB(30, 10, 40)
    AddCorner(barBg, 4)

    local bar = Instance.new("Frame", barBg)
    bar.Size              = UDim2.new(1, 0, 1, 0)
    bar.BackgroundColor3  = barColor or Color3.fromRGB(0, 80, 255)
    AddCorner(bar, 4)

    table.insert(activeNotifs, 1, frame)
    UpdateNotifPositions()

    -- Animate bar draining
    TweenService:Create(bar, TweenInfo.new(duration, Enum.EasingStyle.Linear),
        {Size = UDim2.new(0, 0, 1, 0)}):Play()

    task.delay(duration, function()
        table.remove(activeNotifs, table.find(activeNotifs, frame))
        TweenService:Create(frame, TweenInfo.new(0.3, Enum.EasingStyle.Quint, Enum.EasingDirection.In),
            {Position = UDim2.new(2, 0, 0, 0)}):Play()
        task.wait(0.35)
        if frame and frame.Parent then frame:Destroy() end
        UpdateNotifPositions()
    end)
end

-- ── Ability Buttons ───────────────────────────────
-- Helper to make a single ability button frame
local function MakeAbilityButton(label, sublabel, posX, posY, c1, c2)
    local frame = Instance.new("Frame", GoDGui)
    frame.Size              = UDim2.new(0, 90, 0, 80)
    frame.Position          = UDim2.new(posX, 0, posY, 0)
    frame.BackgroundColor3  = Color3.fromRGB(10, 10, 15)
    frame.Visible           = false
    AddCorner(frame, 10)
    AddStroke(frame, 3, Color3.fromRGB(80, 0, 120))
    AddGradient(frame, c1, c2, 135)

    local keyLabel = Instance.new("TextLabel", frame)
    keyLabel.Size             = UDim2.new(1, 0, 0.55, 0)
    keyLabel.BackgroundTransparency = 1
    keyLabel.TextColor3       = Color3.new(1, 1, 1)
    keyLabel.Text             = label
    keyLabel.Font             = Enum.Font.GothamBlack
    keyLabel.TextScaled       = true

    local subLabel = Instance.new("TextLabel", frame)
    subLabel.Size             = UDim2.new(1, 0, 0.35, 0)
    subLabel.Position         = UDim2.new(0, 0, 0.6, 0)
    subLabel.BackgroundTransparency = 1
    subLabel.TextColor3       = Color3.fromRGB(200, 170, 255)
    subLabel.Text             = sublabel
    subLabel.Font             = Enum.Font.Gotham
    subLabel.TextScaled       = true

    local btn = Instance.new("TextButton", frame)
    btn.Size                  = UDim2.new(1, 0, 1, 0)
    btn.BackgroundTransparency = 1
    btn.Text                  = ""

    return frame, btn
end

local BlueC1 = Color3.fromRGB(0, 20, 60)
local BlueC2 = Color3.fromRGB(0, 80, 200)
local RedC1  = Color3.fromRGB(60, 0, 0)
local RedC2  = Color3.fromRGB(180, 0, 0)

-- Button 1 — Teleport
local Btn1Frame, Btn1 = MakeAbilityButton("[1]\nQ", "BLINK",   0.76, 0.55, BlueC1, BlueC2)
-- Button 2 — Slap
local Btn2Frame, Btn2 = MakeAbilityButton("[2]\nF", "SLAP",    0.87, 0.55, BlueC1, BlueC2)
-- Button 3 — God of Death
local Btn3Frame, Btn3 = MakeAbilityButton("[3]\nG", "REAPER",  0.815, 0.68, RedC1, RedC2)

-- Collapse/Expand arrow
local Arrow = Instance.new("TextButton", GoDGui)
Arrow.Size              = UDim2.new(0, 22, 0, 220)
Arrow.Position          = UDim2.new(0.975, 0, 0.52, 0)
Arrow.BackgroundColor3  = Color3.fromRGB(10, 10, 20)
Arrow.Text              = "◀"
Arrow.TextColor3        = Color3.fromRGB(180, 130, 255)
Arrow.Font              = Enum.Font.GothamBold
Arrow.TextSize          = 14
Arrow.Visible           = false
AddCorner(Arrow, 4)

local PanelVisible = true
Arrow.MouseButton1Click:Connect(function()
    PanelVisible = not PanelVisible
    Arrow.Text = PanelVisible and "◀" or "▶"
    Btn1Frame.Visible = PanelVisible
    Btn2Frame.Visible = PanelVisible
    Btn3Frame.Visible = PanelVisible
end)

-- God of Death status label
local GodLabel = Instance.new("TextLabel", GoDGui)
GodLabel.Size             = UDim2.new(0, 240, 0, 36)
GodLabel.Position         = UDim2.new(0.5, -120, 0.03, 0)
GodLabel.BackgroundColor3 = Color3.fromRGB(8, 0, 0)
GodLabel.Text             = ""
GodLabel.Font             = Enum.Font.GothamBlack
GodLabel.TextSize         = 22
GodLabel.TextColor3       = Color3.fromRGB(255, 30, 30)
GodLabel.Visible          = false
AddCorner(GodLabel, 8)
AddStroke(GodLabel, 2, Color3.fromRGB(100, 0, 0))

-- ═══════════════════════════════════════════════
--   SAFE PLATFORM (underground fall-catcher)
-- ═══════════════════════════════════════════════
local SafePart = Instance.new("Part", Workspace)
SafePart.Name        = "GoDSafePart"
SafePart.Size        = Vector3.new(100, 1, 100)
SafePart.Position    = Vector3.new(86, -12173, 78)
SafePart.Anchored    = true
SafePart.CanCollide  = true
SafePart.Transparency = 0

-- ═══════════════════════════════════════════════
--   ABILITY 1: BLINK TELEPORT
-- ═══════════════════════════════════════════════
local function Ability_Teleport()
    if not CanTeleport then return end
    CanTeleport = false

    -- Visual flash on character
    local char = LocalPlayer.Character
    if char and char:FindFirstChild("HumanoidRootPart") then
        local hrp = char.HumanoidRootPart
        -- Small blink emitter burst
        local flash = Instance.new("ParticleEmitter", hrp)
        flash.Color        = ColorSequence.new(Color3.fromRGB(0, 120, 255), Color3.fromRGB(0, 0, 0))
        flash.LightEmission = 1
        flash.Rate         = 0
        flash.Speed        = NumberRange.new(8, 14)
        flash.Size         = NumberSequence.new({
            NumberSequenceKeypoint.new(0, 2),
            NumberSequenceKeypoint.new(1, 0),
        })
        flash.Lifetime     = NumberRange.new(0.2, 0.5)
        flash.Burst        = 40
        flash:Emit(40)
        task.delay(0.6, function() flash:Destroy() end)

        -- Teleport to mouse hit
        local hit = Mouse.Hit
        if hit then
            hrp.CFrame = CFrame.new(hit.X, hit.Y + 2.5, hit.Z)
        end
    end

    CreateCooldownNotif("BLINK", TELE_COOLDOWN, Color3.fromRGB(0, 80, 255))
    task.delay(TELE_COOLDOWN, function() CanTeleport = true end)
end

-- ═══════════════════════════════════════════════
--   ABILITY 2: DEATH SLAP
--   Slaps all players in range; plays slap anim;
--   uses ToolRemote if available (matching Edgelord)
-- ═══════════════════════════════════════════════
local function Ability_Slap()
    if not CanSlap then return end
    CanSlap = false

    local char = LocalPlayer.Character
    if not char or not char:FindFirstChild("HumanoidRootPart") then
        CanSlap = true
        return
    end
    local hrp = char.HumanoidRootPart

    -- Play slap animation
    PlayAnimById(ANIM_SLAP)

    -- Shockwave emitter burst
    local shockwave = Instance.new("ParticleEmitter", hrp)
    shockwave.Color        = ColorSequence.new(
        GodModeActive and Color3.fromRGB(200, 0, 0) or Color3.fromRGB(0, 80, 255),
        Color3.fromRGB(0, 0, 0)
    )
    shockwave.LightEmission = 1
    shockwave.Rate          = 0
    shockwave.Speed         = NumberRange.new(20, 35)
    shockwave.Size          = NumberSequence.new({
        NumberSequenceKeypoint.new(0, 4),
        NumberSequenceKeypoint.new(1, 0),
    })
    shockwave.SpreadAngle   = Vector2.new(180, 180)
    shockwave.Lifetime      = NumberRange.new(0.3, 0.7)
    shockwave:Emit(60)
    task.delay(0.8, function() shockwave:Destroy() end)

    -- Screen shake
    task.spawn(ShakeScreen, 0.4, 0.08)

    -- Slap all nearby players using ToolRemote (Edgelord pattern)
    local RANGE = GodModeActive and 60 or 40
    for _, plr in pairs(Players:GetPlayers()) do
        if plr ~= LocalPlayer and plr.Character then
            local targetHrp = plr.Character:FindFirstChild("HumanoidRootPart")
            if targetHrp then
                local dist = (hrp.Position - targetHrp.Position).Magnitude
                if dist <= RANGE then
                    if ToolRemote then
                        ToolSlap(targetHrp, true)
                    else
                        -- fallback: SelfKnockback on target (if server event available)
                        local kb = ReplicatedStorage:FindFirstChild("SelfKnockback")
                        if kb then
                            local dir = (targetHrp.Position - hrp.Position).Unit
                            kb:FireServer({Direction = dir, Force = GodModeActive and 120 or 80})
                        end
                    end
                end
            end
        end
    end

    -- NPC bots (names containing Å, matching Edgelord)
    for _, c in pairs(Workspace:GetChildren()) do
        if string.find(c.Name, "Å") and c:FindFirstChild("HumanoidRootPart") then
            local dist = (hrp.Position - c.HumanoidRootPart.Position).Magnitude
            if dist <= RANGE and ToolRemote then
                ToolSlap(c.HumanoidRootPart, true)
            end
        end
    end

    local cooldown = GodModeActive and (SLAP_COOLDOWN * 0.6) or SLAP_COOLDOWN
    CreateCooldownNotif(
        GodModeActive and "☠ DEATH SLAP" or "SLAP",
        cooldown,
        GodModeActive and Color3.fromRGB(200, 0, 0) or Color3.fromRGB(0, 100, 200)
    )
    task.delay(cooldown, function() CanSlap = true end)
end

-- ═══════════════════════════════════════════════
--   ABILITY 3: GOD OF DEATH
--   Transform into Reaper form:
--     - Aura changes to red & black
--     - Animations swap to reaper set
--     - Slap range/damage increases
--     - Special reaper abilities during duration
--     - Timer runs down, then reverts
-- ═══════════════════════════════════════════════
local function Ability_GodOfDeath()
    if not CanGodMode then return end
    if GodModeActive then return end
    CanGodMode   = false
    GodModeActive = true

    local char = LocalPlayer.Character
    if not char then
        GodModeActive = false
        CanGodMode = true
        return
    end

    -- UI feedback
    GodLabel.Text    = "☠  GOD OF DEATH  ☠"
    GodLabel.Visible = true

    -- Aura change
    ApplyRedAura(char)

    -- Animation swap
    ReplaceAnim("idle", ANIM_IDLE_REAPER)
    ReplaceAnim("walk", ANIM_WALK_REAPER)

    -- Cinematic flash
    FovSequence({
        {70,  0.1},
        {110, 0.3},
        {70,  0.5},
    })
    task.spawn(ShakeScreen, 0.6, 0.12)

    -- Button recolor to red
    for _, frame in pairs({Btn1Frame, Btn2Frame, Btn3Frame}) do
        local stroke = frame:FindFirstChildOfClass("UIStroke")
        if stroke then stroke.Color = Color3.fromRGB(180, 0, 0) end
        local grad = frame:FindFirstChildOfClass("UIGradient")
        if grad then
            grad.Color = ColorSequence.new(RedC1, RedC2)
        end
    end

    -- Reaper timer label countdown
    CreateCooldownNotif("☠ REAPER FORM", GOD_DURATION, Color3.fromRGB(200, 0, 0))

    -- Duration runs out → revert
    task.delay(GOD_DURATION, function()
        GodModeActive = false
        GodLabel.Text    = ""
        GodLabel.Visible = false

        -- Revert aura & animations
        local c = LocalPlayer.Character
        if c then
            ApplyBlueAura(c)
            ReplaceAnim("idle", ANIM_IDLE_NORMAL)
            ReplaceAnim("walk", ANIM_WALK_NORMAL)
        end

        -- Revert button colors
        for _, frame in pairs({Btn1Frame, Btn2Frame, Btn3Frame}) do
            local stroke = frame:FindFirstChildOfClass("UIStroke")
            if stroke then stroke.Color = Color3.fromRGB(80, 0, 120) end
            local grad = frame:FindFirstChildOfClass("UIGradient")
            if grad then grad.Color = ColorSequence.new(BlueC1, BlueC2) end
        end

        CreateCooldownNotif("COOLING DOWN…", GOD_COOLDOWN, Color3.fromRGB(80, 0, 120))
        task.delay(GOD_COOLDOWN, function() CanGodMode = true end)
    end)
end

-- ═══════════════════════════════════════════════
--   BUTTON CONNECTIONS
-- ═══════════════════════════════════════════════
Btn1.MouseButton1Click:Connect(Ability_Teleport)
Btn2.MouseButton1Click:Connect(Ability_Slap)
Btn3.MouseButton1Click:Connect(Ability_GodOfDeath)

-- ═══════════════════════════════════════════════
--   KEYBOARD INPUT
-- ═══════════════════════════════════════════════
UserInputService.InputBegan:Connect(function(input, gpe)
    if gpe then return end
    if input.KeyCode == Enum.KeyCode.Q then
        Ability_Teleport()
    elseif input.KeyCode == Enum.KeyCode.F then
        Ability_Slap()
    elseif input.KeyCode == Enum.KeyCode.G then
        Ability_GodOfDeath()
    end
end)

-- Also handle mouse click when teleport mode is "armed" via T key (Edgelord style)
local TeleportArmed = false
UserInputService.InputBegan:Connect(function(input, gpe)
    if gpe then return end
    if input.KeyCode == Enum.KeyCode.T then
        TeleportArmed = true
    end
    if (input.UserInputType == Enum.UserInputType.MouseButton1) and TeleportArmed then
        TeleportArmed = false
        Ability_Teleport()
    end
end)

-- ═══════════════════════════════════════════════
--   INTRO SEQUENCE
--   1. Teleport to arena via Obby portal
--   2. Float up with blue & black aura
--   3. Dramatic fall, screen shake on land
--   4. Show GUI, swap animations
-- ═══════════════════════════════════════════════
local function RunIntroSequence()
    local char = LocalPlayer.Character
    if not char then return end
    local hrp  = char:WaitForChild("HumanoidRootPart")
    local hum  = char:WaitForChild("Humanoid")

    -- Disable gravity for float
    hum.PlatformStand = true

    -- Step 1: Move to portal
    local portalCFrame = Portal and Portal.CFrame or CFrame.new(0, 5, 0)
    hrp.CFrame = portalCFrame * CFrame.new(0, 2, 0)
    task.wait(0.5)

    -- Notification
    game.StarterGui:SetCore("SendNotification", {
        Title    = "☠ God of Death",
        Text     = "Keybinds: Q=Teleport  F=Slap  G=Reaper Form",
        Duration = 6,
    })

    -- Step 2: Build blue aura immediately
    ApplyBlueAura(char)

    -- FOV cinematic
    FovSequence({{70, 0.1}, {90, 0.5}, {70, 1.0}})

    -- Step 3: Rise upward smoothly
    local RISE_HEIGHT = 40
    local riseSteps   = 60
    for i = 1, riseSteps do
        hrp.CFrame = hrp.CFrame * CFrame.new(0, RISE_HEIGHT / riseSteps, 0)
        task.wait(0.03)
    end

    -- Pause at apex
    task.wait(0.8)

    -- Step 4: Re-enable gravity → fall
    hum.PlatformStand = false
    task.wait(0.05)  -- let physics take over

    -- Wait until landed (velocity near zero or touches ground)
    local landTimeout = tick() + 6
    repeat
        task.wait(0.05)
    until (hrp.Velocity.Y > -1 and hrp.Velocity.Y < 1 and hrp.Position.Y < (portalCFrame.Position.Y + 20))
        or tick() > landTimeout

    -- Step 5: Landing impact
    task.spawn(ShakeScreen, 0.7, 0.15)
    FovSequence({{80, 0.15}, {70, 0.4}})

    -- Landing shockwave
    local landing = Instance.new("ParticleEmitter", hrp)
    landing.Color        = ColorSequence.new(Color3.fromRGB(0, 80, 255), Color3.fromRGB(0, 0, 0))
    landing.LightEmission = 1
    landing.Rate         = 0
    landing.Speed        = NumberRange.new(25, 45)
    landing.Size         = NumberSequence.new({
        NumberSequenceKeypoint.new(0, 5),
        NumberSequenceKeypoint.new(1, 0),
    })
    landing.SpreadAngle  = Vector2.new(180, 45)
    landing.Lifetime     = NumberRange.new(0.4, 0.9)
    landing:Emit(80)
    task.delay(1, function() landing:Destroy() end)

    -- Step 6: Set animations & show GUI
    ReplaceAnim("idle", ANIM_IDLE_NORMAL)
    ReplaceAnim("walk", ANIM_WALK_NORMAL)

    -- Show ability buttons
    Btn1Frame.Visible = true
    Btn2Frame.Visible = true
    Btn3Frame.Visible = true
    Arrow.Visible     = true

    -- Platform detection → mobile gets large buttons already; PC gets keybind reminder
    local platform = UserInputService:GetPlatform()
    if platform == Enum.Platform.IOS or platform == Enum.Platform.Android then
        -- buttons are already showing for mobile users; nothing extra
    end
end

-- ═══════════════════════════════════════════════
--   CLEANUP ON DEATH
-- ═══════════════════════════════════════════════
local CleanupConn
CleanupConn = LocalPlayer.CharacterAdded:Connect(function()
    -- Reset all state
    GodModeActive = false
    CanSlap       = true
    CanTeleport   = true
    CanGodMode    = true
    ClearAura()

    -- Destroy GUI
    if GoDGui and GoDGui.Parent then GoDGui:Destroy() end
    if notifGui and notifGui.Parent then notifGui:Destroy() end
    if SafePart and SafePart.Parent then SafePart:Destroy() end

    if CleanupConn then CleanupConn:Disconnect() end
end)

-- ═══════════════════════════════════════════════
--   ENTRY POINT
--   Wait for tool, detect remote, then run intro.
-- ═══════════════════════════════════════════════
task.spawn(function()
    -- Wait for tool to be in backpack or character
    repeat task.wait() until
        LocalPlayer.Backpack:FindFirstChildOfClass("Tool") or
        (LocalPlayer.Character and LocalPlayer.Character:FindFirstChildOfClass("Tool"))

    -- Grab tool remote (mirrors Edgelord)
    for _, v in pairs(LocalPlayer.Character:GetChildren()) do
        if v.ClassName == "Tool" then
            getToolHitRemote()
        end
    end

    -- Run intro
    RunIntroSequence()
end)
