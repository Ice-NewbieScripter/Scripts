-- LocalScript

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local TweenService = game:GetService("TweenService")

local player = Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

-- Create ScreenGui
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "Stigman Froud"
screenGui.ResetOnSpawn = false
screenGui.Parent = playerGui

-- Create Ring Image (behind main image)
local RingImage = Instance.new("ImageLabel")
RingImage.Name = "Ring"
RingImage.Parent = screenGui
RingImage.Size = UDim2.new(0, 110, 0, 110)
RingImage.Position = UDim2.new(0.5, -55, 0.5, -55)
RingImage.BackgroundTransparency = 1
RingImage.Image = "rbxassetid://7102118272"

-- Create Main Image (on top of ring)
local Rc7Image = Instance.new("ImageLabel")
Rc7Image.Name = "Rc7"
Rc7Image.Parent = screenGui
Rc7Image.Size = UDim2.new(0, 110, 0, 110)
Rc7Image.Position = UDim2.new(0.5, -55, 0.5, -55)
Rc7Image.BackgroundTransparency = 1
Rc7Image.Image = "rbxassetid://113349123968858"

-- Add UIAspectRatioConstraint to keep it square
local aspect = Instance.new("UIAspectRatioConstraint")
aspect.Parent = RingImage

-- Define the target position
local targetPosition = UDim2.new(0.00499999523, 0, 0.824999988, 0)

-- Tween for the Ring Image to slide to position
local tweenInfo = TweenInfo.new(2, Enum.EasingStyle.Quart, Enum.EasingDirection.Out)  -- Duration: 2 seconds, easing style: quart
local ringTween = TweenService:Create(RingImage, tweenInfo, {Position = targetPosition})
local rc7Tween = TweenService:Create(Rc7Image, tweenInfo, {Position = targetPosition})

-- Wait for 1.5 seconds before starting the slide
wait(1.5)

-- Play the slide animation after the wait
ringTween:Play()
rc7Tween:Play()

-- Start spinning the ring only after the slide is complete
ringTween.Completed:Connect(function()
    -- Rotate the ring continuously (slower)
    local rotation = 0
    RunService.RenderStepped:Connect(function(delta)
        rotation = (rotation + delta * 30) % 360 -- Slower: 30 degrees per second
        RingImage.Rotation = rotation
    end)
end)
