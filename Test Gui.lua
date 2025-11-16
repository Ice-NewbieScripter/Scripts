-- RC7-Style GUI for Roblox
local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local CloseButton = Instance.new("TextButton")
local UICorner = Instance.new("UICorner")

-- Parent to PlayerGui
ScreenGui.Parent = game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui")

-- Frame settings
Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
Frame.Size = UDim2.new(0, 200, 0, 100)
Frame.Position = UDim2.new(0.4, 0, 0.4, 0)
Frame.Active = true
Frame.Draggable = true

UICorner.Parent = Frame

-- Title Text
TextLabel.Parent = Frame
TextLabel.Text = "Test GUI"
TextLabel.Size = UDim2.new(1, 0, 0.3, 0)
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1
TextLabel.Font = Enum.Font.SourceSansBold
TextLabel.TextScaled = true

-- Close Button
CloseButton.Parent = Frame
CloseButton.Text = "Close"
CloseButton.Size = UDim2.new(0.5, 0, 0.3, 0)
CloseButton.Position = UDim2.new(0.25, 0, 0.6, 0)
CloseButton.BackgroundColor3 = Color3.fromRGB(200, 50, 50)
CloseButton.TextColor3 = Color3.fromRGB(255, 255, 255)
CloseButton.Font = Enum.Font.SourceSansBold
CloseButton.TextScaled = true

UICorner:Clone().Parent = CloseButton

-- Close Button Function
CloseButton.MouseButton1Click:Connect(function()
    ScreenGui:Destroy()
end)

print("RC7 GUI Loaded")
