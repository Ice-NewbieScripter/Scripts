local Player = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")

local player = Player.LocalPlayer
local camera = workspace.CurrentCamera

local isLocked = false
local targetPlayer = nil
local highlight = nil
local FOV = 70 -- มุมมองล็อคเป้า
local showFOVCircle = true -- ควบคุมการเปิด/ปิดวง FOV
local lockToHead = true -- ค่าเริ่มต้นล็อคที่หัว

-- สร้างวง FOV
local fovCircle = Drawing.new("Circle")
fovCircle.Color = Color3.fromRGB(255, 255, 0)
fovCircle.Thickness = 2
fovCircle.Radius = 200
fovCircle.Position = Vector2.new(camera.ViewportSize.X / 2, camera.ViewportSize.Y / 2)
fovCircle.Visible = showFOVCircle

local function toggleFOVCircle()
    showFOVCircle = not showFOVCircle
    fovCircle.Visible = showFOVCircle
end

local function toggleLockTarget()
    lockToHead = not lockToHead
end

local function createHighlight(target)
    if highlight then
        highlight:Destroy()
    end

    highlight = Instance.new("Highlight")
    highlight.Parent = target.Character
    highlight.Adornee = target.Character
    highlight.FillColor = Color3.fromRGB(255, 0, 0)
    highlight.OutlineColor = Color3.fromRGB(255, 255, 255)
    highlight.FillTransparency = 0.5
    highlight.OutlineTransparency = 0
end

local function removeHighlight()
    if highlight then
        highlight:Destroy()
        highlight = nil
    end
end

local function isOnSameTeam(otherPlayer)
    if player.Team and otherPlayer.Team then
        return player.Team == otherPlayer.Team
    end
    return false
end

local function isInFOV(targetPosition)
    local cameraLookVector = camera.CFrame.LookVector
    local directionToTarget = (targetPosition - camera.CFrame.Position).unit
    local angle = math.deg(math.acos(cameraLookVector:Dot(directionToTarget)))

    return angle <= (FOV / 2)
end

local function isAlive(otherPlayer)
    local humanoid = otherPlayer.Character and otherPlayer.Character:FindFirstChild("Humanoid")
    return humanoid and humanoid.Health > 0
end

local function GetClosestPlayer()
    local closestPlayer = nil
    local shortestDistance = math.huge

    for _, otherPlayer in pairs(Player:GetPlayers()) do
        if otherPlayer ~= player and otherPlayer.Character and otherPlayer.Character:FindFirstChild("HumanoidRootPart") then
            if not isOnSameTeam(otherPlayer) and isAlive(otherPlayer) then
                local targetPosition = otherPlayer.Character.HumanoidRootPart.Position
                if isInFOV(targetPosition) then
                    local distance = (player.Character.HumanoidRootPart.Position - targetPosition).Magnitude
                    if distance < shortestDistance then
                        shortestDistance = distance
                        closestPlayer = otherPlayer
                    end
                end
            end
        end
    end
    return closestPlayer
end

local function lockOntoClosestPlayer()
    targetPlayer = GetClosestPlayer()
    if targetPlayer and targetPlayer.Character and targetPlayer.Character:FindFirstChild("HumanoidRootPart") then
        isLocked = true
        createHighlight(targetPlayer)
        RunService:BindToRenderStep("LockOnPlayer", Enum.RenderPriority.Camera.Value + 1, function()
            if targetPlayer and targetPlayer.Character and isAlive(targetPlayer) then
                local targetPart = lockToHead and targetPlayer.Character:FindFirstChild("Head") or targetPlayer.Character:FindFirstChild("HumanoidRootPart")
                if targetPart then
                    camera.CFrame = CFrame.new(camera.CFrame.Position, targetPart.Position)
                end
            else
                unlockCamera()
            end
        end)
    end
end

local function unlockCamera()
    isLocked = false
    RunService:UnbindFromRenderStep("LockOnPlayer")
    removeHighlight()
    targetPlayer = nil
end

UserInputService.InputBegan:Connect(function(input, gameProcessedEvent)
    if not gameProcessedEvent then
        if input.KeyCode == Enum.KeyCode.Q then
            if isLocked then
                unlockCamera()
            else
                lockOntoClosestPlayer()
            end
        elseif input.KeyCode == Enum.KeyCode.P then
            toggleFOVCircle()
        elseif input.KeyCode == Enum.KeyCode.F1 then
            toggleLockTarget()
        end
    end
end)

RunService.RenderStepped:Connect(function()
    -- อัปเดตตำแหน่งของวงกลมตามหน้าจอ
    fovCircle.Position = Vector2.new(camera.ViewportSize.X / 2, camera.ViewportSize.Y / 2)
end)
