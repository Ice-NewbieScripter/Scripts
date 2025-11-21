-- Auto Bond Gui
do
    local success, err = pcall(function()
        local player = game:GetService("Players").LocalPlayer
        local gui = Instance.new("ScreenGui")
        gui.Name = "AutoBondGUI"
        gui.ResetOnSpawn = false
        gui.Parent = player:WaitForChild("PlayerGui")

        -- Note the upper corner
        local topNote = Instance.new("TextLabel")
        topNote.Text = "by Secret Agent"
        topNote.Size = UDim2.new(0, 200, 0, 30)
        topNote.Position = UDim2.new(0, 10, 0, 30)
        topNote.BackgroundTransparency = 1
        topNote.TextColor3 = Color3.fromRGB(255, 255, 255)
        topNote.Font = Enum.Font.SourceSansBold
        topNote.TextSize = 18
        topNote.TextXAlignment = Enum.TextXAlignment.Left
        topNote.ZIndex = 2
        topNote.Parent = gui

        -- Button AOC Hub
        local btnAOC = Instance.new("TextButton")
        btnAOC.Text = "Copy AOC Hub Discord"
        btnAOC.Size = UDim2.new(0, 180, 0, 36)
        btnAOC.Position = UDim2.new(1, -190, 0, 10)
        btnAOC.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
        btnAOC.TextColor3 = Color3.fromRGB(255, 255, 255)
        btnAOC.Font = Enum.Font.SourceSansBold
        btnAOC.TextSize = 16
        btnAOC.ZIndex = 2
        btnAOC.Parent = gui

        btnAOC.MouseButton1Click:Connect(function()
            setclipboard("https://discord.com/invite/QwvGH6SMz6")
            btnAOC.Text = "Copied!"
            task.delay(1.5, function()
                btnAOC.Text = "Copy Yuri Hub Discord"
            end)
        end)

        -- Yuri Hub Button
        local Yuri = Instance.new("TextButton")
        Yuri.Text = "Copy Yuri Hub Discord"
        Yuri.Size = UDim2.new(0, 180, 0, 36)
        Yuri.Position = UDim2.new(1, -190, 0, 56)
        Yuri.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
        Yuri.TextColor3 = Color3.fromRGB(255, 255, 255)
        Yuri.Font = Enum.Font.SourceSansBold
        Yuri.TextSize = 16
       Yuri.ZIndex = 2
        Yuri.Parent = gui

        Yuri.MouseButton1Click:Connect(function()
            setclipboard("https://discord.gg/KFtr8tG25J")
            Yuri.Text = Copied!"
            task.delay(1.5, function()
                Yuri.Text = "Copy Yuri Hub Discord"
            end)
        end)

        -- Vietnamese note
        local noteVN = Instance.new("TextLabel")
        noteVN.Text = "• Bản auto bond này đôi khi vẫn có lỗi ở 1 số ván game.\n• Nếu có lỗi, hãy đợi chuyển sang ván mới nhé!"
        noteVN.Size = UDim2.new(0, 450, 0, 48)
        noteVN.Position = UDim2.new(0, 10, 1, -100)
        noteVN.BackgroundTransparency = 1
        noteVN.TextColor3 = Color3.new(1, 1, 1)
        noteVN.TextWrapped = true
        noteVN.TextXAlignment = Enum.TextXAlignment.Left
        noteVN.Font = Enum.Font.SourceSans
        noteVN.TextSize = 16
        noteVN.ZIndex = 2
        noteVN.Parent = gui

        --English note
        local noteEN = Instance.new("TextLabel")
        noteEN.Text = "• This auto bond script may encounter bugs in some game rounds.\n• If it happens, please wait for the next round!"
        noteEN.Size = UDim2.new(0, 450, 0, 48)
        noteEN.Position = UDim2.new(0, 10, 1, -50)
        noteEN.BackgroundTransparency = 1
        noteEN.TextColor3 = Color3.new(1, 1, 1)
        noteEN.TextWrapped = true
        noteEN.TextXAlignment = Enum.TextXAlignment.Left
        noteEN.Font = Enum.Font.SourceSans
        noteEN.TextSize = 16
        noteEN.ZIndex = 2
        noteEN.Parent = gui
    end)
    if not success then
        warn("Unable to create GUI: ", err)
    end
end

pcall(function()
    workspace.StreamingEnabled = false
    workspace.SimulationRadius = math.huge
end)

local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Workspace = game:GetService("Workspace")
local TweenService = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")
local StarterGui = game:GetService("StarterGui")

local player = Players.LocalPlayer
local char = player.Character or player.CharacterAdded:Wait()
local hrp = char:WaitForChild("HumanoidRootPart")
local humanoid = char:WaitForChild("Humanoid")

-- Immortal
humanoid.MaxHealth = math.huge
humanoid.Health = humanoid.MaxHealth

local healthConn = humanoid.HealthChanged:Connect(function(newHealth)
    if newHealth < humanoid.MaxHealth then
        humanoid.Health = humanoid.MaxHealth
    end
end)

local networkFolder = ReplicatedStorage:WaitForChild("Shared"):WaitForChild("Network")
local ActivatePromise = networkFolder.RemotePromise.Remotes.C_ActivateObject

local remotesRoot = ReplicatedStorage:WaitForChild("Remotes")
local EndDecisionRemote = remotesRoot:WaitForChild("EndDecision")

local bondData = {}
local seenKeys = {}

-- UI counter
local function createCounterUI()
    local screenGui = Instance.new("ScreenGui", player:WaitForChild("PlayerGui"))
    screenGui.Name = "BondCounterUI"
    local textLabel = Instance.new("TextLabel", screenGui)
    textLabel.Name = "Counter"
    textLabel.Size = UDim2.new(0, 200, 0, 40)
    textLabel.Position = UDim2.new(0, 10, 0, 40)
    textLabel.BackgroundTransparency = 0.5
    textLabel.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    textLabel.TextColor3 = Color3.new(1, 1, 1)
    textLabel.Font = Enum.Font.SourceSansBold
    textLabel.TextSize = 22
    textLabel.Text = "Bond: 0 / ?"
    return textLabel
end

local counterLabel = createCounterUI()

-- Record bond position
local function recordBonds()
    local runtime = Workspace:WaitForChild("RuntimeItems")
    for _, item in ipairs(runtime:GetChildren()) do
        if item.Name:match("Bond") then
            local part = item.PrimaryPart or item:FindFirstChildWhichIsA("BasePart")
            if part then
                local key = ("%.1f_%.1f_%.1f"):format(part.Position.X, part.Position.Y, part.Position.Z)
                if not seenKeys[key] then
                    seenKeys[key] = true
                    table.insert(bondData, { item = item, pos = part.Position, key = key })
                end
            end
        end
    end
end

print("=== Starting map scan ===")

local function tweenTo(positionCFrame)
    local tweenInfo = TweenInfo.new(0.45, Enum.EasingStyle.Linear)
    local goal = { CFrame = positionCFrame }
    local tween = TweenService:Create(hrp, tweenInfo, goal)
    tween:Play()
    tween.Completed:Wait()
end

-- Scan map to find bond
local scanTarget = CFrame.new(-424.448975, 16.055481, -49040.6562, -1,0,0, 0,1,0, 0,0,-1)
local scanSteps = 50
for i = 1, scanSteps do
    local stepCFrame = hrp.CFrame:Lerp(scanTarget, i/scanSteps)
    tweenTo(stepCFrame)
    recordBonds()
    task.wait(0.09)
end

tweenTo(scanTarget)
task.wait(0.2)
recordBonds()

print(("→ %d Bonds found"):format(#bondData))
if #bondData == 0 then
    warn("No bonds found – check RuntimeItems.")
    return
end

counterLabel.Text = string.format("Bond: 0 / %d", #bondData)

-- Find MaximGun and chair
local runtimeItems = workspace:WaitForChild("RuntimeItems")
local gun = runtimeItems:FindFirstChild("MaximGun")

if not gun or not gun:FindFirstChild("VehicleSeat") then
    warn("MaximGun not found, try again 2nd time...")
    task.wait(1)
    gun = runtimeItems:FindFirstChild("MaximGun")
    if not gun or not gun:FindFirstChild("VehicleSeat") then
        warn("Still can't find MaximGun for the second time - commit suicide and start a new game.")
        
        -- Remove immortality and commit suicide
        if healthConn then healthConn:Disconnect() end
        humanoid.MaxHealth = 100
        humanoid.Health = 100
        task.wait(0.2)
        humanoid:TakeDamage(999999)
        EndDecisionRemote:FireServer(false)
        return
    end
end

local seat = gun.VehicleSeat
char:SetPrimaryPartCFrame(seat.CFrame + Vector3.new(0, 3, 0))
task.wait(0.3)
seat:Sit(humanoid)
repeat task.wait() until humanoid.SeatPart == seat
humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
task.delay(0.05, function()
    seat:Sit(humanoid)
end)

-- Listen to the space key
UserInputService.InputBegan:Connect(function(input, gameProcessed)
    if gameProcessed then return end
    if input.KeyCode == Enum.KeyCode.Space and humanoid.SeatPart == seat then
        humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
        task.delay(0.1, function()
            seat:Sit(humanoid)
        end)
    end
end)

-- Pick up bonds and handle rollbacks
for idx, entry in ipairs(bondData) do
    print(("--- Bond %d/%d: %s ---"):format(idx, #bondData, entry.key))
    local targetCFrame = CFrame.new(entry.pos) * CFrame.new(0, 2, 0)

    seat:PivotTo(targetCFrame)
    task.wait(0.25)

    -- Check rollback
    local dist = (hrp.Position - targetCFrame.Position).Magnitude
    if dist > 8 then
        print("Get TP reversed, jump and sit back.")
        humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
        task.wait(0.2)
        seat:Sit(humanoid)
        task.wait(0.2)
        seat:PivotTo(targetCFrame)
        task.wait(0.25)
    end

    if humanoid.SeatPart ~= seat then
        seat:Sit(humanoid)
        task.wait(0.2)
    end

    if entry.item and entry.item.Parent then
        ActivatePromise:FireServer(entry.item)
        task.wait(0.35)
    end

    counterLabel.Text = string.format("Bond: %d / %d", idx, #bondData)
end

-- End of game: Remove immortality and commit suicide
if healthConn then healthConn:Disconnect() end
humanoid.MaxHealth = 100
humanoid.Health = 100
task.wait(0.2)
humanoid:TakeDamage(999999)
EndDecisionRemote:FireServer(false)
print("=== Done, waiting for the new game ===")