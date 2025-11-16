-- Wait for the game to fully load
repeat wait() until game:IsLoaded()

local player = game.Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

-- ✅ Corrected Teleport Position
local teleportPos = Vector3.new(-104.392845, 2.40001297, -1.81930351) wait() print("Sucsesfully loadded")

-- Teleport function
local function teleport()
    local char = player.Character or player.CharacterAdded:Wait()
    local hrp = char:WaitForChild("HumanoidRootPart")
    hrp.CFrame = CFrame.new(teleportPos)
end

-- Locate Teleport_UI
local teleportGui = playerGui:FindFirstChild("Teleport_UI")
if teleportGui then
    local frame = teleportGui:FindFirstChildWhichIsA("Frame")
    if frame then
        -- Show Gear and Pets if they exist
        local gear = frame:FindFirstChild("Gear")
        local pets = frame:FindFirstChild("Pets")
        if gear then gear.Visible = true end
        if pets then pets.Visible = true end

        -- Only add Event_Teleport if it doesn't already exist
        if not frame:FindFirstChild("Event_Teleport") then
            -- Create ImageButton
            local eventButton = Instance.new("ImageButton")
            eventButton.Name = "Event_Teleport"
            eventButton.Parent = frame
            eventButton.Image = "rbxassetid://0"
            eventButton.Size = UDim2.new(0.199000001, 0, 0.550000012, 0)
            eventButton.Position = UDim2.new(0.311000168, 0, 0.15, 0)
            eventButton.BackgroundColor3 = Color3.fromRGB(0, 0, 255)
            eventButton.BackgroundTransparency = 0
            eventButton.ZIndex = 10

            -- Add blue UIStroke
            local stroke = Instance.new("UIStroke")
            stroke.Color = Color3.fromRGB(0, 0, 255)
            stroke.Parent = eventButton

            -- Add aspect ratio constraint
            local aspect = Instance.new("UIAspectRatioConstraint")
            aspect.AspectRatio = 2.5
            aspect.Parent = eventButton

            -- Add inner TextButton
            local textBtn = Instance.new("TextButton")
            textBtn.Name = "Txt"
            textBtn.Text = "Event"
            textBtn.Size = UDim2.new(1, 0, 1, 0)
            textBtn.Position = UDim2.new(0, 0, 0, 0)
            textBtn.BackgroundTransparency = 1
            textBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
            textBtn.TextScaled = true
            textBtn.Font = Enum.Font.SourceSans
            textBtn.ZIndex = 11
            textBtn.Parent = eventButton

            -- Add stroke to Txt
            local textStroke = Instance.new("UIStroke")
            textStroke.Thickness = 2
            textStroke.Color = Color3.fromRGB(0, 0, 0)
            textStroke.Parent = textBtn

            -- Connect both clicks to teleport
            eventButton.MouseButton1Click:Connect(teleport)
            textBtn.MouseButton1Click:Connect(teleport)
        end
    else
        warn("No Frame found inside Teleport_UI")
    end
else
    warn("Teleport_UI not found in PlayerGui")
end
