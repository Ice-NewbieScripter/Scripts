local ScreenGui = Instance.new("ScreenGui")
local warning = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local text1 = Instance.new("TextLabel")
local text2 = Instance.new("TextLabel")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

warning.Name = "warning"
warning.Parent = ScreenGui
warning.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
warning.BackgroundTransparency = 1.000
warning.BorderColor3 = Color3.fromRGB(0, 0, 0)
warning.BorderSizePixel = 0
warning.Position = UDim2.new(0.392036766, 0, 0.305111736, 0)
warning.Size = UDim2.new(0, 273, 0, 204)

UICorner.Parent = warning

text1.Name = "text1"
text1.Parent = warning
text1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
text1.BackgroundTransparency = 1.000
text1.BorderColor3 = Color3.fromRGB(0, 0, 0)
text1.BorderSizePixel = 0
text1.Position = UDim2.new(0.106227107, 0, 0, 0)
text1.Size = UDim2.new(0, 200, 0, 50)
text1.Font = Enum.Font.SourceSans
text1.Text = "WARNING!!!"
text1.TextColor3 = Color3.fromRGB(255, 255, 255)
text1.TextScaled = true
text1.TextSize = 14.000
text1.TextTransparency = 1.000
text1.TextWrapped = true

text2.Name = "text2"
text2.Parent = warning
text2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
text2.BackgroundTransparency = 1.000
text2.BorderColor3 = Color3.fromRGB(0, 0, 0)
text2.BorderSizePixel = 0
text2.Position = UDim2.new(0.0402930416, 0, 0.247967437, 0)
text2.Size = UDim2.new(0, 236, 0, 146)
text2.Font = Enum.Font.SourceSans
text2.Text = "Made by ???/xenon.hub :D"
text2.TextColor3 = Color3.fromRGB(255, 255, 255)
text2.TextScaled = true
text2.TextSize = 14.000
text2.TextTransparency = 1.000
text2.TextWrapped = true



-- Gui Scripts:


local function YHGIHK_fake_script() -- warning.LocalScript 
	local script = Instance.new('LocalScript', warning)

	wait(1)
	for i = 1, 5 do
		script.Parent.Transparency -= 0.1
		wait(0.05)
	end
	
	for i = 1, 10 do
		script.Parent.text1.TextTransparency -= 0.1
		script.Parent.text2.TextTransparency -= 0.1
		wait(0.05)
	end
	
	for i = 1, 10 do
		script.Parent.TextButton.TextTransparency -= 0.1
		script.Parent.TextButton.BackgroundTransparency -= 0.1
		wait(0.05)
	end
end
coroutine.wrap(YHGIHK_fake_script)()
local function VCDWLZ_fake_script() -- warning.UIDrag 
	local script = Instance.new('LocalScript', warning)

	-- Made by Real_IceyDev (@lceyDex) --
	-- Simple UI dragger (PC Only/Any device that has a mouse) --
	
	local UIS = game:GetService('UserInputService')
	local frame = script.Parent
	local dragToggle = nil
	local dragSpeed = 0.25
	local dragStart = nil
	local startPos = nil
	
	local function updateInput(input)
		local delta = input.Position - dragStart
		local position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X,
			startPos.Y.Scale, startPos.Y.Offset + delta.Y)
		game:GetService('TweenService'):Create(frame, TweenInfo.new(dragSpeed), {Position = position}):Play()
	end
	
	frame.InputBegan:Connect(function(input)
		if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) then 
			dragToggle = true
			dragStart = input.Position
			startPos = frame.Position
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragToggle = false
				end
			end)
		end
	end)
	
	UIS.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			if dragToggle then
				updateInput(input)
			end
		end
	end)
end
coroutine.wrap(VCDWLZ_fake_script)()
local function UCUL_fake_script() -- TextButton_2.LocalScript 
	local script = Instance.new('LocalScript', TextButton_2)

	script.Parent.MouseButton1Click:Connect(function()
		script.Parent.Parent.Parent:Destroy()
	end)
end
coroutine.wrap(UCUL_fake_script)()
local function OGPXKH_fake_script() -- Frame.UIDrag 
	local script = Instance.new('LocalScript', Frame)

	-- Made by Real_IceyDev (@lceyDex) --
	-- Simple UI dragger (PC Only/Any device that has a mouse) --
	
	local UIS = game:GetService('UserInputService')
	local frame = script.Parent
	local dragToggle = nil
	local dragSpeed = 0.25
	local dragStart = nil
	local startPos = nil
	
	local function updateInput(input)
		local delta = input.Position - dragStart
		local position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X,
			startPos.Y.Scale, startPos.Y.Offset + delta.Y)
		game:GetService('TweenService'):Create(frame, TweenInfo.new(dragSpeed), {Position = position}):Play()
	end
	
	frame.InputBegan:Connect(function(input)
		if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) then 
			dragToggle = true
			dragStart = input.Position
			startPos = frame.Position
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragToggle = false
				end
			end)
		end
	end)
	
	UIS.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			if dragToggle then
				updateInput(input)
			end
		end
	end)
end
coroutine.wrap(OGPXKH_fake_script)()