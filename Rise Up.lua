local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")
local rootPart = character:WaitForChild("HumanoidRootPart")
local camera = workspace.CurrentCamera
local submerged = false
local swimSpeed = 20 -- CHANGE SPEED OF SUBMERGE HERE
local submergeOffset = 6.45 -- CHANGE DEEPNESS OF SUBMERGE HERE
local riseMultiplier = 1.1
local noclipParts = {}
local originalCameraCFrame = nil
local savedSubmergePosition = nil
local animationPlaying = false
local animationToggleButton = nil

local playerData = {
    buttonPosition = UDim2.new(1, -175, 0.5, -100),
    animationButtonPosition = UDim2.new(1, -175, 0.5, -40)
}

local animation = Instance.new("Animation")
animation.AnimationId = "rbxassetid://536135263"
local animator = humanoid:WaitForChild("Animator")
local animationTrack = animator:LoadAnimation(animation)
animationTrack.Looped = false

local gui = Instance.new("ScreenGui")
gui.Name = "SubmergeGUI"
gui.Parent = player:WaitForChild("PlayerGui")

local button = Instance.new("TextButton")
button.Name = "SubmergeButton"
button.Parent = gui
button.Size = UDim2.new(0, 150, 0, 50)
button.Position = playerData.buttonPosition
button.AnchorPoint = Vector2.new(1, 0.5)
button.BackgroundColor3 = Color3.fromRGB(0, 100, 200)
button.TextColor3 = Color3.new(1, 1, 1)
button.Text = "Submerge"
button.Font = Enum.Font.GothamBold
button.TextSize = 18
button.TextStrokeTransparency = 0
button.TextStrokeColor3 = Color3.new(0, 0, 0)
button.BackgroundTransparency = 0.2
button.BorderSizePixel = 0
button.AutoButtonColor = true
button.Draggable = true

local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0, 15)
corner.Parent = button

animationToggleButton = Instance.new("TextButton")
animationToggleButton.Name = "AnimationToggleButton"
animationToggleButton.Parent = gui
animationToggleButton.Size = UDim2.new(0, 150, 0, 50)
animationToggleButton.Position = playerData.animationButtonPosition
animationToggleButton.AnchorPoint = Vector2.new(1, 0.5)
animationToggleButton.BackgroundColor3 = Color3.fromRGB(0, 200, 100)
animationToggleButton.TextColor3 = Color3.new(1, 1, 1)
animationToggleButton.Text = "Arm up: On/Off"
animationToggleButton.Font = Enum.Font.GothamBold
animationToggleButton.TextSize = 18
animationToggleButton.TextStrokeTransparency = 0
animationToggleButton.TextStrokeColor3 = Color3.new(0, 0, 0)
animationToggleButton.BackgroundTransparency = 0.2
animationToggleButton.BorderSizePixel = 0
animationToggleButton.AutoButtonColor = true
animationToggleButton.Draggable = true

local animCorner = Instance.new("UICorner")
animCorner.CornerRadius = UDim.new(0, 15)
animCorner.Parent = animationToggleButton

local highlight = Instance.new("Highlight")
highlight.Enabled = false
highlight.FillTransparency = 1
highlight.OutlineTransparency = 0
highlight.OutlineColor = Color3.fromRGB(255, 255, 255)
highlight.Parent = character

for _, part in pairs(character:GetChildren()) do
    if part.Name == "Left Arm" or part.Name == "Right Arm" then
        table.insert(noclipParts, part)
    end
end

local function toggleNoclip(state)
    for _, part in pairs(character:GetDescendants()) do
        if part:IsA("BasePart") then
            if table.find(noclipParts, part) then
                part.CanCollide = false
            else
                part.CanCollide = not state
            end
        end
    end
end

local function submerge()
    originalCameraCFrame = camera.CFrame
    camera.CameraType = Enum.CameraType.Custom
    savedSubmergePosition = rootPart.Position - Vector3.new(0, submergeOffset, 0)
    toggleNoclip(true)
    rootPart.CFrame = CFrame.new(savedSubmergePosition)
    humanoid.PlatformStand = true
    highlight.Enabled = true
    submerged = true
    button.Text = "Rise Up"
end

local function surface()
    toggleNoclip(false)
    humanoid.PlatformStand = false
    rootPart.CFrame = rootPart.CFrame + Vector3.new(0, submergeOffset * riseMultiplier, 0)
    highlight.Enabled = false
    submerged = false
    button.Text = "Submerge"
    camera.CFrame = originalCameraCFrame
end

local function toggleAnimation()
    if animationPlaying then
        animationTrack:Stop()
        animationToggleButton.Text = "Arm up: On/Off"
        animationPlaying = false
    else
        animationPlaying = true
        animationToggleButton.Text = "Arm up: Off"
        while animationPlaying do
            animationTrack:Play()
            animationTrack.TimePosition = 0.2
            task.wait(0.03)
        end
    end
end

game:GetService("RunService").Stepped:Connect(function()
    if submerged then
        toggleNoclip(true)
    end
end)

game:GetService("RunService").RenderStepped:Connect(function()
    if submerged then
        rootPart.CFrame = CFrame.new(rootPart.Position.X, savedSubmergePosition.Y, rootPart.Position.Z)
        rootPart.Velocity = humanoid.MoveDirection * swimSpeed
    end
end)

button.MouseButton1Click:Connect(function()
    if submerged then
        surface()
    else
        submerge()
    end
end)

animationToggleButton.MouseButton1Click:Connect(toggleAnimation)

button:GetPropertyChangedSignal("Position"):Connect(function()
    playerData.buttonPosition = button.Position
end)

animationToggleButton:GetPropertyChangedSignal("Position"):Connect(function()
    playerData.animationButtonPosition = animationToggleButton.Position
end)

game.Players.LocalPlayer.CharacterAdded:Connect(function()
    task.wait(0.01)
    button.Position = playerData.buttonPosition
    animationToggleButton.Position = playerData.animationButtonPosition
end)