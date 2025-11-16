--Repulse & Flash

--Repulse
local tool = Instance.new("Tool")
tool.Name = "Repulse" --put your tool name here
tool.RequiresHandle = false

local handle = Instance.new("Part")
handle.Name = "Handle"
handle.Transparency = 1
handle.CanCollide = false
handle.Parent = tool

local soundId = "rbxassetid://your_sound_id_here" --put a sound here (needs to be a sound by tsb)
local sound = Instance.new("Sound")
sound.SoundId = soundId
sound.Parent = tool

local animationId = "rbxassetid://15957361339" --put your tool anim in here

local function onEquipped()
    local character = game.Players.LocalPlayer.Character
    if character then
        local humanoid = character:WaitForChild("Humanoid")
        local rootPart = character:WaitForChild("HumanoidRootPart")

        rootPart.Anchored = false --change to false if you do not want it to anchor

        local animation = Instance.new("Animation")
        animation.AnimationId = animationId
        local animationTrack = humanoid:LoadAnimation(animation)
        animationTrack:Play() --plays the anim lol
        animationTrack:AdjustSpeed(1) --your speed here

        sound:Play() --plays the sound

        -- Teleport the player 10 studs away
        local forwardDirection = rootPart.CFrame.LookVector
        local newPosition = rootPart.Position + forwardDirection * 40
        rootPart.CFrame = CFrame.new(newPosition)

        tool.Unequipped:Connect(function()
        end)
    end
end

tool.Equipped:Connect(onEquipped)

tool.Parent = game.Players.LocalPlayer.Backpack
--Flash
local tool = Instance.new("Tool")
tool.Name = "Flash"
tool.RequiresHandle = false

local handle = Instance.new("Part")
handle.Name = "Handle"
handle.Transparency = 1
handle.CanCollide = false
handle.Parent = tool

local soundId = "rbxassetid://your_sound_id_here"
local sound = Instance.new("Sound")
sound.SoundId = soundId
sound.Parent = tool

local animationId = "rbxassetid://18897115785"

local function onEquipped()
    local player = game.Players.LocalPlayer
    local character = player.Character
    if character then
        local humanoid = character:WaitForChild("Humanoid")
        local rootPart = character:WaitForChild("HumanoidRootPart")

        rootPart.Anchored = false

        local animation = Instance.new("Animation")
        animation.AnimationId = animationId
        local animationTrack = humanoid:LoadAnimation(animation)
        animationTrack:Play()
        animationTrack:AdjustSpeed(1)

        sound:Play()

        -- Movement logic
        local initialSpeed = 0.5
        local finalSpeed = 3
        local moveSpeed = 300
        local speed = initialSpeed
        local changeTime = 2.3
        local elapsedTime = 0

        local runService = game:GetService("RunService")
        local moveConnection

        local function startMoving()
            moveConnection = runService.RenderStepped:Connect(function(deltaTime)
                elapsedTime = elapsedTime + deltaTime
                if elapsedTime >= changeTime then
                    moveSpeed = 550
                end

                local lookVector = rootPart.CFrame.LookVector
                local newVelocity = lookVector * moveSpeed * speed

                rootPart.Velocity = newVelocity
            end)
        end

        local function stopMoving()
            if moveConnection then
                moveConnection:Disconnect()
                moveConnection = nil
                speed = initialSpeed -- Reset speed for the next use
                elapsedTime = 0 -- Reset elapsed time
                rootPart.Velocity = Vector3.new(0, 0, 0) -- Stop the movement
            end
        end

        animationTrack.Stopped:Connect(stopMoving)
        startMoving()

        tool.Unequipped:Connect(function()
            stopMoving()
            animationTrack:Stop() -- Ensure animation stops when tool is unequipped
            sound:Stop() -- Stop the sound as well
        end)
    end
end

tool.Equipped:Connect(onEquipped)

tool.Parent = game.Players.LocalPlayer.Backpack