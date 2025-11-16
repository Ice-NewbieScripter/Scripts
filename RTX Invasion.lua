local ScreenGui = Instance.new("ScreenGui")

ScreenGui.Name = "RTXInvasionGUI"

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

local Frame = Instance.new("Frame")

Frame.Size = UDim2.new(0, 220, 0, 140)

Frame.Position = UDim2.new(0.5, -110, 0, 20)

Frame.AnchorPoint = Vector2.new(0.5, 0)

Frame.BackgroundColor3 = Color3.fromRGB(20, 20, 25)

Frame.BackgroundTransparency = 0.15

Frame.BorderSizePixel = 0

Frame.ClipsDescendants = true

Frame.Parent = ScreenGui

local UICorner = Instance.new("UICorner")

UICorner.CornerRadius = UDim.new(0, 8)

UICorner.Parent = Frame

local UIStroke = Instance.new("UIStroke")

UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

UIStroke.Color = Color3.fromRGB(60, 60, 80)

UIStroke.Thickness = 1.5

UIStroke.Parent = Frame

local Title = Instance.new("TextLabel")

Title.Size = UDim2.new(1, -20, 0, 30)

Title.Position = UDim2.new(0, 10, 0, 10)

Title.BackgroundTransparency = 1

Title.Text = "RTX INVASION"

Title.TextColor3 = Color3.fromRGB(220, 220, 255)

Title.Font = Enum.Font.GothamSemibold

Title.TextSize = 18

Title.TextXAlignment = Enum.TextXAlignment.Left

Title.Parent = Frame

local TitleDivider = Instance.new("Frame")

TitleDivider.Size = UDim2.new(1, -20, 0, 1)

TitleDivider.Position = UDim2.new(0, 10, 0, 40)

TitleDivider.BackgroundColor3 = Color3.fromRGB(60, 60, 80)

TitleDivider.BorderSizePixel = 0

TitleDivider.Parent = Frame

local Credits = Instance.new("TextLabel")

Credits.Size = UDim2.new(1, -20, 0, 20)

Credits.Position = UDim2.new(0, 10, 0, 45)

Credits.BackgroundTransparency = 1

Credits.Text = "Made By AOC"

Credits.TextColor3 = Color3.fromRGB(150, 150, 180)

Credits.Font = Enum.Font.Gotham

Credits.TextSize = 12

Credits.TextXAlignment = Enum.TextXAlignment.Left

Credits.Parent = Frame

local ToggleButton = Instance.new("TextButton")

ToggleButton.Size = UDim2.new(1, -20, 0, 40)

ToggleButton.Position = UDim2.new(0, 10, 0, 80)

ToggleButton.BackgroundColor3 = Color3.fromRGB(35, 35, 45)

ToggleButton.BorderSizePixel = 0

ToggleButton.AutoButtonColor = false

ToggleButton.Text = "OFF"

ToggleButton.TextColor3 = Color3.fromRGB(220, 220, 255)

ToggleButton.Font = Enum.Font.GothamSemibold

ToggleButton.TextSize = 16

ToggleButton.Parent = Frame

local ToggleCorner = Instance.new("UICorner")

ToggleCorner.CornerRadius = UDim.new(0, 6)

ToggleCorner.Parent = ToggleButton

local ToggleStroke = Instance.new("UIStroke")

ToggleStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

ToggleStroke.Color = Color3.fromRGB(80, 80, 100)

ToggleStroke.Thickness = 1

ToggleStroke.Parent = ToggleButton

local ToggleHighlight = Instance.new("Frame")

ToggleHighlight.Size = UDim2.new(1, 0, 1, 0)

ToggleHighlight.BackgroundColor3 = Color3.fromRGB(255, 255, 255)

ToggleHighlight.BackgroundTransparency = 0.9

ToggleHighlight.BorderSizePixel = 0

ToggleHighlight.Parent = ToggleButton

local rtxEffects = {}

local motionBlur = nil

local runServiceConnection = nil

local workspaceConnection = nil

local function createRTXEffects()

    if #rtxEffects > 0 then

        for _, effect in pairs(rtxEffects) do

            if effect and effect.Parent then

                effect:Destroy()

            end

        end

        rtxEffects = {}

    end

    

    if motionBlur then

        motionBlur:Destroy()

        motionBlur = nil

    end

    

    if runServiceConnection then

        runServiceConnection:Disconnect()

        runServiceConnection = nil

    end

    

    if workspaceConnection then

        workspaceConnection:Disconnect()

        workspaceConnection = nil

    end

    getgenv().mode = "Summer"

    

    local a = game.Lighting

    a.Ambient = Color3.fromRGB(33, 33, 33)

    a.Brightness = 0.4

    a.ColorShift_Bottom = Color3.fromRGB(0, 0, 0)

    a.ColorShift_Top = Color3.fromRGB(255, 247, 237)

    a.EnvironmentDiffuseScale = 0.105

    a.EnvironmentSpecularScale = 0.522

    a.GlobalShadows = true

    a.OutdoorAmbient = Color3.fromRGB(51, 54, 67)

    a.ShadowSoftness = 0

    a.GeographicLatitude = -0

    a.ExposureCompensation = 0

    

    local b = Instance.new("BloomEffect", a)

    b.Enabled = true

    b.Intensity = 0.04

    b.Size = 1900

    b.Threshold = 0.915

    table.insert(rtxEffects, b)

    

    local c = Instance.new("ColorCorrectionEffect", a)

    c.Brightness = 0.176

    c.Contrast = 0.39

    c.Enabled = true

    c.Saturation = 0.2

    c.TintColor = Color3.fromRGB(217, 145, 57)

    if getgenv().mode == "Summer" then

        c.TintColor = Color3.fromRGB(255, 220, 148)

    elseif getgenv().mode == "Autumn" then

        c.TintColor = Color3.fromRGB(217, 145, 57)

    else

        warn("No mode selected!")

        print("Please select a mode")

    end

    table.insert(rtxEffects, c)

    

    local d = Instance.new("DepthOfFieldEffect", a)

    d.Enabled = true

    d.FarIntensity = 0.077

    d.FocusDistance = 21.54

    d.InFocusRadius = 20.77

    d.NearIntensity = 0.277

    table.insert(rtxEffects, d)

    

    local e = Instance.new("ColorCorrectionEffect", a)

    e.Brightness = 0

    e.Contrast = -0.07

    e.Saturation = 0

    e.Enabled = true

    e.TintColor = Color3.fromRGB(255, 247, 239)

    table.insert(rtxEffects, e)

    

    local e2 = Instance.new("ColorCorrectionEffect", a)

    e2.Brightness = 0.2

    e2.Contrast = 0.45

    e2.Saturation = -0.1

    e2.Enabled = true

    e2.TintColor = Color3.fromRGB(255, 255, 255)

    table.insert(rtxEffects, e2)

    

    local s = Instance.new("SunRaysEffect", a)

    s.Enabled = true

    s.Intensity = 0.01

    s.Spread = 0.146

    table.insert(rtxEffects, s)

    

    local camera = workspace.CurrentCamera

    local blurAmount = 10

    local blurAmplifier = 5

    local lastVector = camera.CFrame.LookVector

    

    motionBlur = Instance.new("BlurEffect", camera)

    

    workspaceConnection = workspace.Changed:Connect(function(property)

        if property == "CurrentCamera" then

            camera = workspace.CurrentCamera

            if motionBlur and motionBlur.Parent then

                motionBlur.Parent = camera

            else

                motionBlur = Instance.new("BlurEffect", camera)

            end

        end

    end)

    

    runServiceConnection = game:GetService("RunService").Heartbeat:Connect(function()

        if not motionBlur or motionBlur.Parent == nil then

            motionBlur = Instance.new("BlurEffect", camera)

        end

        

        local magnitude = (camera.CFrame.LookVector - lastVector).magnitude

        motionBlur.Size = math.abs(magnitude)*blurAmount*blurAmplifier/2

        lastVector = camera.CFrame.LookVector

    end)

    

    print("RTX Graphics loaded - Made By AOC")

end

local function removeRTXEffects()

    for _, effect in pairs(rtxEffects) do

        if effect and effect.Parent then

            effect:Destroy()

        end

    end

    rtxEffects = {}

    

    if motionBlur then

        motionBlur:Destroy()

        motionBlur = nil

    end

    

    if runServiceConnection then

        runServiceConnection:Disconnect()

        runServiceConnection = nil

    end

    

    if workspaceConnection then

        workspaceConnection:Disconnect()

        workspaceConnection = nil

    end

    

    print("RTX Graphics unloaded")

end

local isEnabled = false

ToggleButton.MouseEnter:Connect(function()

    game:GetService("TweenService"):Create(ToggleHighlight, TweenInfo.new(0.15), {BackgroundTransparency = 0.85}):Play()

end)

ToggleButton.MouseLeave:Connect(function()

    game:GetService("TweenService"):Create(ToggleHighlight, TweenInfo.new(0.15), {BackgroundTransparency = 0.9}):Play()

end)

ToggleButton.MouseButton1Click:Connect(function()

    isEnabled = not isEnabled

    

    if isEnabled then

        game:GetService("TweenService"):Create(ToggleButton, TweenInfo.new(0.2), {BackgroundColor3 = Color3.fromRGB(50, 120, 50)}):Play()

        ToggleButton.Text = "ON"

        createRTXEffects()

    else

        game:GetService("TweenService"):Create(ToggleButton, TweenInfo.new(0.2), {BackgroundColor3 = Color3.fromRGB(35, 35, 45)}):Play()

        ToggleButton.Text = "OFF"

        removeRTXEffects()

    end

end)

local UserInputService = game:GetService("UserInputService")

local dragging

local dragInput

local dragStart

local startPos

local function update(input)

    local delta = input.Position - dragStart

    Frame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)

end

Frame.InputBegan:Connect(function(input)

    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then

        dragging = true

        dragStart = input.Position

        startPos = Frame.Position

        

        input.Changed:Connect(function()

            if input.UserInputState == Enum.UserInputState.End then

                dragging = false

            end

        end)

    end

end)

Frame.InputChanged:Connect(function(input)

    if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then

        dragInput = input

    end

end)

UserInputService.InputChanged:Connect(function(input)

    if input == dragInput and dragging then

        update(input)

    end

end)