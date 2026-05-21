-- Services
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")

-- ==========================================
--        PUT YOUR CUSTOM FUNCTIONS HERE
-- ==========================================

-- This runs when the "Luna" button is touched/clicked
local function onLunaActivated(player)
	print("Luna button was pressed by: " .. player.Name)
		loadstring(game:HttpGet("https://raw.githubusercontent.com/Corrupt-Astro/Sirus/refs/heads/main/Luna/01.lua"))()
	
	-- Put your custom Luna logic here
	
end

-- This runs when the "Sirius" button is touched/clicked
local function onSiriusActivated(player)
	print("Sirius button was pressed by: " .. player.Name)
		loadstring(game:HttpGet("https://raw.githubusercontent.com/Corrupt-Astro/Sirus/refs/heads/main/Syde/OldForNow.lua"))()
	
	-- Put your custom Sirius logic here
	
end

-- ==========================================
--      UI CREATION & ANIMATION LOGIC
-- ==========================================

-- Get the local player
local player = Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

-- Create the Main ScreenGui
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "SimpleMenuGui"
screenGui.ResetOnSpawn = false
screenGui.Parent = playerGui

-- Create a UIListLayout to automatically center the buttons
local listLayout = Instance.new("UIListLayout")
listLayout.FillDirection = Enum.FillDirection.Horizontal
listLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
listLayout.VerticalAlignment = Enum.VerticalAlignment.Center
listLayout.Padding = UDim.new(0, 20)

-- Create a Frame to hold the buttons in the center of the screen
local centerFrame = Instance.new("Frame")
centerFrame.Name = "CenterFrame"
centerFrame.Size = UDim2.new(1, 0, 1, 0)
centerFrame.BackgroundTransparency = 1
listLayout.Parent = centerFrame
centerFrame.Parent = screenGui

-- Table to keep track of both buttons for the mass fade-out
local buttons = {}

-- Function to handle fading out and destroying the whole menu
local function disappearWholeUI()
	-- Loop through both buttons and animate them simultaneously
	for _, button in ipairs(buttons) do
		local fadeTween = TweenService:Create(button, TweenInfo.new(0.3), {BackgroundTransparency = 1, TextTransparency = 1})
		fadeTween:Play()
	end
	
	-- Wait for the 0.3-second animation to finish, then delete the whole ScreenGui
	task.wait(0.3)
	screenGui:Destroy()
end

-- Helper function to stylize and handle button behavior
local function createButton(name, text, color, customFunction)
	local button = Instance.new("TextButton")
	button.Name = name
	button.Text = text
	button.Size = UDim2.new(0, 150, 0, 50)
	button.BackgroundColor3 = color
	button.TextColor3 = Color3.fromRGB(255, 255, 255)
	button.Font = Enum.Font.SourceSansBold
	button.TextSize = 24
	
	local uiCorner = Instance.new("UICorner")
	uiCorner.CornerRadius = UDim.new(0, 8)
	uiCorner.Parent = button

	-- Disappear logic when activated
	button.Activated:Connect(function()
		-- 1. Trigger your custom logic first
		local success, err = pcall(function()
			customFunction(player)
		end)
		if not success then
			warn("Error running button function: " .. tostring(err))
		end
		
		-- 2. Make the entire UI disappear
		disappearWholeUI()
	end)

	return button
end

-- Generate the "Luna" and "Sirius" buttons and link their functions
local lunaButton = createButton("LunaButton", "Luna", Color3.fromRGB(142, 68, 173), onLunaActivated)
local siriusButton = createButton("SiriusButton", "Syde", Color3.fromRGB(41, 128, 185), onSiriusActivated)

-- Store buttons in our table so the disappear function can find them both
table.insert(buttons, lunaButton)
table.insert(buttons, siriusButton)

-- Parent them to the centered frame
lunaButton.Parent = centerFrame
siriusButton.Parent = centerFrame
