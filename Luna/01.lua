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
  
