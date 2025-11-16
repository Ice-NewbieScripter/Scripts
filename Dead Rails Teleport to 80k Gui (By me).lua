--Teleport to 80k (Didnt bypass anything)
warn([[
	
	-- [</>] ---------------------------------------------------- [<\>] --
	
        Patched-How to fix? : 1. run infinite yield, reset, run command "Fly" , jump to horse or train seat, you will can fly, use bypass to the end
        2. Use the FlyGuiV3, reset, your friend need to drag you, use Fly, your friend weld you to train, unweld,  bypass to the end

        3. Use Horse Class, play with your friend (atleast 2 ppl),  Put saddle on you, your friend need to sit on you, reset, Run infinite yield, Run command Fly (BECAREFUL TO USE DEAD RAILS HAVE ANTI CHEAT YOU MIGHT GETTING TELEPORT BACK TO TRAIN), Use Teleport
    
    -- [</>] ---------------------------------------------------- [<\>] --
]])


local TeleportGuiByUnknown = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextButton = Instance.new("TextButton")
local Text1Button = Instance.new("TextButton")
local Text2Button = Instance.new("TextButton")
local Text3Button = Instance.new("TextButton")
local Text4Button = Instance.new("TextButton")
local DestroyButton = Instance.new("TextButton")
local UICorner = Instance.new("UICorner")
local ImageLabel = Instance.new("ImageLabel")
local dragger = Instance.new("Frame")

-- Create ScreenGui
TeleportGuiByUnknown.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
TeleportGuiByUnknown.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

-- Frame properties
Frame.Parent = TeleportGuiByUnknown
Frame.BackgroundColor3 = Color3.fromRGB(39, 39, 40)
Frame.BorderColor3 = Color3.fromRGB(0, 0, 255)
Frame.BorderSizePixel = 3
Frame.Position = UDim2.new(0.5, -175, 0.5, -110)
Frame.Size = UDim2.new(0, 350, 0, 220)

-- Add ImageLabel for background
ImageLabel.Parent = Frame
ImageLabel.Size = UDim2.new(1, 0, 1, 0)
ImageLabel.Position = UDim2.new(0, 0, 0, 0)
ImageLabel.BackgroundTransparency = 0.6
ImageLabel.Image = "rbxassetid://15719832182"

-- Add UICorner for rounded corners
UICorner.CornerRadius = UDim.new(0, 15)
UICorner.Parent = ImageLabel

local frameUICorner = Instance.new("UICorner")
frameUICorner.CornerRadius = UDim.new(0, 15)
frameUICorner.Parent = Frame

local DestroyGuiUICorner = Instance.new("UICorner")
DestroyGuiUICorner.CornerRadius = UDim.new(0, 15)
DestroyGuiUICorner.Parent = DestroyButton

-- Draggable UI functionality (Increased Size + Invisible Dragger + Entire Frame is draggable)
local dragging = false
local dragInput, mousePos, framePos

Frame.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        dragging = true
        mousePos = input.Position
        framePos = Frame.Position
    end
end)

Frame.InputChanged:Connect(function(input)
    if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
        local delta = input.Position - mousePos
        Frame.Position = UDim2.new(framePos.X.Scale, framePos.X.Offset + delta.X, framePos.Y.Scale, framePos.Y.Offset + delta.Y)
    end
end)

Frame.InputEnded:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        dragging = false
    end
end)


-- Teleport Button
TextButton.Parent = Frame
TextButton.BackgroundColor3 = Color3.fromRGB(47, 47, 48)
TextButton.BorderColor3 = Color3.fromRGB(0, 0, 255)
TextButton.BorderSizePixel = 2
TextButton.Position = UDim2.new(0, 10, 0, 10) -- Top left position
TextButton.Size = UDim2.new(0, 100, 0, 40)
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = "Teleport To 80K"
TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton.TextSize = 18
TextButton.BackgroundTransparency = 0.7

TextButton.MouseButton1Click:Connect(function()
    game.Players.LocalPlayer.Character:PivotTo(CFrame.new(-358.070038, -6.10351562e-05, -49031.8789))
end)

Text1Button.Parent = Frame
Text1Button.BackgroundColor3 = Color3.fromRGB(47, 47, 48)
Text1Button.BorderColor3 = Color3.fromRGB(0, 0, 255) -- Blue border
Text1Button.BorderSizePixel = 2
Text1Button.Position = UDim2.new(0, 120, 0, 10) -- Next to the teleport button
Text1Button.Size = UDim2.new(0, 100, 0, 40)
Text1Button.Font = Enum.Font.SourceSans
Text1Button.Text = "Teleport To 10K"
Text1Button.TextColor3 = Color3.fromRGB(255, 255, 255)
Text1Button.TextSize = 18
Text1Button.BackgroundTransparency = 0.7

Text1Button.MouseButton1Click:Connect(function()
    game.Players.LocalPlayer.Character:PivotTo(CFrame.new(-144.826736, 0, 19934.2422))
end)

Text2Button.Parent = Frame
Text2Button.BackgroundColor3 = Color3.fromRGB(47, 47, 48)
Text2Button.BorderColor3 = Color3.fromRGB(0, 0, 255) -- Blue border
Text2Button.BorderSizePixel = 2
Text2Button.Position = UDim2.new(0, 10, 0, 60) -- Next to the teleport button
Text2Button.Size = UDim2.new(0, 100, 0, 40)
Text2Button.Font = Enum.Font.SourceSans
Text2Button.Text = "Teleport To 20K"
Text2Button.TextColor3 = Color3.fromRGB(255, 255, 255)
Text2Button.TextSize = 18
Text2Button.BackgroundTransparency = 0.7

Text2Button.MouseButton1Click:Connect(function()
    game.Players.LocalPlayer.Character:PivotTo(CFrame.new(-564.48114, 6, 9958.13086))
end)

Text3Button.Parent = Frame
Text3Button.BackgroundColor3 = Color3.fromRGB(47, 47, 48)
Text3Button.BorderColor3 = Color3.fromRGB(0, 0, 255) -- Blue border
Text3Button.BorderSizePixel = 2
Text3Button.Position = UDim2.new(0, 120, 0, 60) -- Next to the teleport button
Text3Button.Size = UDim2.new(0, 100, 0, 40)
Text3Button.Font = Enum.Font.SourceSans
Text3Button.Text = "Teleport To 30K"
Text3Button.TextColor3 = Color3.fromRGB(255, 255, 255)
Text3Button.TextSize = 18
Text3Button.BackgroundTransparency = 0.7

Text3Button.MouseButton1Click:Connect(function()
    game.Players.LocalPlayer.Character:PivotTo(CFrame.new(-563.817993, 6, 9.22613525))
end)

Text4Button.Parent = Frame
Text4Button.BackgroundColor3 = Color3.fromRGB(47, 47, 48)
Text4Button.BorderColor3 = Color3.fromRGB(0, 0, 255) -- Blue border
Text4Button.BorderSizePixel = 2
Text4Button.Position = UDim2.new(1, -110, 0, 10) -- Top-right position
Text4Button.Size = UDim2.new(0, 100, 0, 40)
Text4Button.Font = Enum.Font.SourceSans
Text4Button.Text = "Teleport To 70K"
Text4Button.TextColor3 = Color3.fromRGB(255, 255, 255)
Text4Button.TextSize = 18
Text4Button.BackgroundTransparency = 0.7

Text4Button.MouseButton1Click:Connect(function()
    game.Players.LocalPlayer.Character:PivotTo(CFrame.new(-572.827637, 5, -39679.0234))
end)

-- Destroy Button (Smaller & Better Positioned)
DestroyButton.Parent = Frame
DestroyButton.BackgroundColor3 = Color3.fromRGB(200, 0, 0) -- Red button
DestroyButton.BorderColor3 = Color3.fromRGB(255, 255, 255)
DestroyButton.BorderSizePixel = 2
DestroyButton.Position = UDim2.new(1, -30, 0, 5) -- Adjusted position (top-right)
DestroyButton.Size = UDim2.new(0, 25, 0, 25) -- Smaller button
DestroyButton.Font = Enum.Font.SourceSansBold
DestroyButton.Text = "X"
DestroyButton.TextColor3 = Color3.fromRGB(255, 255, 255)
DestroyButton.TextSize = 16 -- Adjusted text size

DestroyButton.MouseButton1Click:Connect(function()
    TeleportGuiByUnknown:Destroy()
end)
