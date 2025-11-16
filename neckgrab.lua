--Neckgrab Fully
local Grabbed = false
local Up = false

local LocalPlayer = game:GetService("Players").LocalPlayer
local Mouse = LocalPlayer:GetMouse()
local RunService = game:GetService("RunService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

-- Create Activate tool
local ActivateTool = Instance.new("Tool")
ActivateTool.RequiresHandle = false
ActivateTool.Name = "Activate Neckgrab"
ActivateTool.Parent = LocalPlayer.Backpack

ActivateTool.Activated:Connect(function()
    -- Fire grabbing request to server
    ReplicatedStorage.MainEvent:FireServer("Grabbing", true)

    -- Wait until Grabbed.Value is set
    repeat task.wait(0.1) until 
        LocalPlayer.Character and 
        LocalPlayer.Character:FindFirstChild("BodyEffects") and 
        LocalPlayer.Character.BodyEffects:FindFirstChild("Grabbed") and 
        LocalPlayer.Character.BodyEffects.Grabbed.Value ~= nil and 
        LocalPlayer.Character.BodyEffects.Grabbed.Value ~= ""

    local targetName = tostring(LocalPlayer.Character.BodyEffects.Grabbed.Value)
    local targetPlayer = game.Players:FindFirstChild(targetName)

    if not targetPlayer or not targetPlayer.Character then return end

    local targetChar = targetPlayer.Character
    local targetTorso = targetChar:FindFirstChild("UpperTorso")
    if not targetTorso then return end

    Grabbed = true

    -- Extend grabbing constraint if exists
    local constraint = targetChar:FindFirstChild("GRABBING_CONSTRAINT")
    if constraint and constraint:FindFirstChild("H") then
        constraint.H.Length = math.huge
    end

    -- Stop existing animations
    for _, track in pairs(LocalPlayer.Character.Humanoid:GetPlayingAnimationTracks()) do
        if track.Animation.AnimationId == "rbxassetid://11075367458" then
            track:Stop()
        end
    end

    -- Play grab animation
    task.spawn(function()
        local anim = Instance.new("Animation")
        anim.AnimationId = "rbxassetid://3135389157"
        local loaded = LocalPlayer.Character.Humanoid:LoadAnimation(anim)
        loaded.Priority = Enum.AnimationPriority.Action
        loaded:Play()
        loaded:AdjustSpeed(0.2)
        wait(0.8)
        loaded:AdjustSpeed(0)
    end)

    -- Create BodyPosition / BodyGyro if not exist
    if not targetTorso:FindFirstChild("BodyPosition") then
        local bodypos = Instance.new("BodyPosition")
        bodypos.Name = "BodyPosition"
        bodypos.D = 200
        bodypos.MaxForce = Vector3.new(10000, 10000, 10000)
        bodypos.Parent = targetTorso
    end

    if not targetTorso:FindFirstChild("BodyGyro") then
        local bodygyro = Instance.new("BodyGyro")
        bodygyro.Name = "BodyGyro"
        bodygyro.D = 100
        bodygyro.MaxTorque = Vector3.new(10000, 10000, 10000)
        bodygyro.Parent = targetTorso
    end

    -- Follow hand position
    RunService:BindToRenderStep("Pos", Enum.RenderPriority.Character.Value, function()
        local hand = LocalPlayer.Character:FindFirstChild("RightHand")
        local root = LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
        if hand and root then
            targetTorso.BodyPosition.Position = hand.Position + Vector3.new(0, -0.7, 0)
            targetTorso.BodyGyro.CFrame = CFrame.new(targetTorso.Position, root.Position)
        end
    end)

    -- Cleanup when Grabbed.Value is cleared
    LocalPlayer.Character.BodyEffects.Grabbed:GetPropertyChangedSignal("Value"):Connect(function()
        if LocalPlayer.Character.BodyEffects.Grabbed.Value == nil or LocalPlayer.Character.BodyEffects.Grabbed.Value == "" then
            Grabbed = false
            Up = false
            RunService:UnbindFromRenderStep("Pos")

            for _, track in pairs(LocalPlayer.Character.Humanoid:GetPlayingAnimationTracks()) do
                local id = track.Animation.AnimationId
                if id == "rbxassetid://3135389157" or id == "rbxassetid://14496531574" or id == "rbxassetid://3096047107" then
                    track:Stop()
                end
            end

            if targetTorso:FindFirstChild("BodyPosition") then
                targetTorso.BodyPosition:Destroy()
            end
            if targetTorso:FindFirstChild("BodyGyro") then
                targetTorso.BodyGyro:Destroy()
            end
        end
    end)
end)

        local LocalPlayer = game:GetService("Players").LocalPlayer
        local UpTool = Instance.new("Tool",LocalPlayer.Backpack)
        local Mouse = LocalPlayer:GetMouse()
        UpTool.RequiresHandle = false 
        UpTool.Name = "Up"
        UpTool.Activated:Connect(function()
        if Grabbed == true then
        if Up == false then
        local target = tostring(game.Players.LocalPlayer.Character.BodyEffects.Grabbed.Value)
        Up = true
        for i, Track in pairs (game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid"):GetPlayingAnimationTracks()) do
                if Track.Animation.AnimationId == "rbxassetid://3135389157" then
                Track:Stop()
            end
        end
        spawn(function()
        local Animation = Instance.new("Animation")
        Animation.AnimationId = "rbxassetid://14496531574"
        local LoadAnimation = game.Players.LocalPlayer.Character:FindFirstChildWhichIsA("Humanoid"):LoadAnimation(Animation)
        LoadAnimation.Priority = Enum.AnimationPriority.Action
        LoadAnimation:Play()
        LoadAnimation:AdjustSpeed(1)
        wait(1)
        LoadAnimation:AdjustSpeed(0)
        end)
        spawn(function()
        wait(0.3)
        game:GetService('RunService'):UnbindFromRenderStep("Pos")
        wait(0.05)
        game:GetService('RunService'):BindToRenderStep("Pos", 0 , function()
        game.Players[target].Character.UpperTorso.BodyPosition.Position =  game.Players.LocalPlayer.Character.HumanoidRootPart.Position + game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.LookVector * 8 + Vector3.new(0,23,0)
        game.Players[target].Character.UpperTorso.BodyGyro.CFrame = CFrame.new(game.Players[target].Character.UpperTorso.Position, game.Players.LocalPlayer.Character.HumanoidRootPart.Position)
        end)
        game.Players[target].Character.UpperTorso.BodyPosition.D = 1200
        end)
        else
        for i, Track in pairs (game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid"):GetPlayingAnimationTracks()) do
            if Track.Animation.AnimationId == "rbxassetid://14496531574" then
                Track:Stop(1)
            end
        end
        spawn(function()
        wait(0.45)
        local Animation = Instance.new("Animation")
        Animation.AnimationId = "rbxassetid://3135389157"
        local LoadAnimation = game.Players.LocalPlayer.Character:FindFirstChildWhichIsA("Humanoid"):LoadAnimation(Animation)
        LoadAnimation.Priority = Enum.AnimationPriority.Action
        LoadAnimation:Play()
        LoadAnimation:AdjustSpeed(0.2)
        task.wait(0.8)
        LoadAnimation:AdjustSpeed(0)
        end)
        local target = tostring(game.Players.LocalPlayer.Character.BodyEffects.Grabbed.Value)
        game:GetService('RunService'):UnbindFromRenderStep("Pos")
        Up = false
        game:GetService('RunService'):BindToRenderStep("Pos", 0 , function()
        game.Players[target].Character.UpperTorso.BodyPosition.Position = game.Players.LocalPlayer.Character.RightHand.Position + Vector3.new(0,-0.7,0)
        game.Players[target].Character.UpperTorso.BodyGyro.CFrame = CFrame.new(game.Players[target].Character.UpperTorso.Position, game.Players.LocalPlayer.Character.HumanoidRootPart.Position)
        end)
        wait(1)
        game.Players[target].Character.UpperTorso.BodyPosition.D = 200
        end
        end
        end)
        
local LocalPlayer = game:GetService("Players").LocalPlayer
local AirTool = Instance.new("Tool", LocalPlayer.Backpack)
local Mouse = LocalPlayer:GetMouse()
AirTool.RequiresHandle = false
AirTool.Name = "Air"

AirTool.Activated:Connect(function()
    if Grabbed == true then
        if Up == false then
            local target = tostring(LocalPlayer.Character.BodyEffects.Grabbed.Value)
            Up = true

            -- หยุด Animation เดิม
            for i, Track in pairs(LocalPlayer.Character:WaitForChild("Humanoid"):GetPlayingAnimationTracks()) do
                if Track.Animation.AnimationId == "rbxassetid://3135389157" then
                    Track:Stop()
                end
            end

            -- เล่นอนิเมชันลอย
            spawn(function()
                local Animation = Instance.new("Animation")
                Animation.AnimationId = "rbxassetid://14496531574"
                local LoadAnimation = LocalPlayer.Character:FindFirstChildWhichIsA("Humanoid"):LoadAnimation(Animation)
                LoadAnimation.Priority = Enum.AnimationPriority.Action
                LoadAnimation:Play()
                LoadAnimation:AdjustSpeed(1)
                wait(1)
                LoadAnimation:AdjustSpeed(0)
            end)

            -- ทำให้เป้าหมายลอยอยู่ "ด้านหลัง" และสูงขึ้น 7 studs
            spawn(function()
                wait(0.3)
                game:GetService('RunService'):UnbindFromRenderStep("Pos")
                wait(0.05)
                game:GetService('RunService'):BindToRenderStep("Pos", 0, function()
                    local char = LocalPlayer.Character
                    local targetChar = game.Players[target].Character
                    -- เพิ่ม Vector3.new(0, 7, 0) เข้าไป
                    local behindPosition = char.HumanoidRootPart.Position - char.HumanoidRootPart.CFrame.LookVector * 5 + Vector3.new(0, 2 + 7, 0)
                    targetChar.UpperTorso.BodyPosition.Position = behindPosition
                    targetChar.UpperTorso.BodyGyro.CFrame = CFrame.new(targetChar.UpperTorso.Position, char.HumanoidRootPart.Position)
                end)
                game.Players[target].Character.UpperTorso.BodyPosition.D = 1200
            end)

        else
            -- ปิดโหมดลอย (กลับไปจับปกติ)
            for i, Track in pairs(LocalPlayer.Character:WaitForChild("Humanoid"):GetPlayingAnimationTracks()) do
                if Track.Animation.AnimationId == "rbxassetid://14496531574" then
                    Track:Stop(1)
                end
            end

            spawn(function()
                wait(0.45)
                local Animation = Instance.new("Animation")
                Animation.AnimationId = "rbxassetid://3135389157"
                local LoadAnimation = LocalPlayer.Character:FindFirstChildWhichIsA("Humanoid"):LoadAnimation(Animation)
                LoadAnimation.Priority = Enum.AnimationPriority.Action
                LoadAnimation:Play()
                LoadAnimation:AdjustSpeed(0.2)
                
                -- หยุดเล่นหลังจาก 2 วินาที
                task.delay(2, function()
                    LoadAnimation:Stop()
                end)

                task.wait(0.8)
                LoadAnimation:AdjustSpeed(0)
            end)

            local target = tostring(LocalPlayer.Character.BodyEffects.Grabbed.Value)
            game:GetService('RunService'):UnbindFromRenderStep("Pos")
            Up = false
            game:GetService('RunService'):BindToRenderStep("Pos", 0, function()
                local char = LocalPlayer.Character
                local targetChar = game.Players[target].Character
                targetChar.UpperTorso.BodyPosition.Position = char.RightHand.Position + Vector3.new(0, -0.7, 0)
                targetChar.UpperTorso.BodyGyro.CFrame = CFrame.new(targetChar.UpperTorso.Position, char.HumanoidRootPart.Position)
            end)
            wait(1)
            game.Players[target].Character.UpperTorso.BodyPosition.D = 200
        end
    end
end)


        local LocalPlayer = game:GetService("Players").LocalPlayer
        local ThrowTool = Instance.new("Tool",LocalPlayer.Backpack)
        local Mouse = LocalPlayer:GetMouse()
        ThrowTool.RequiresHandle = false 
        ThrowTool.Name = "Throw"
        ThrowTool.Activated:Connect(function()
        if Grabbed == true then
        if Up == false then
        local target = tostring(game.Players.LocalPlayer.Character.BodyEffects.Grabbed.Value)
            for i, Track in pairs (game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid"):GetPlayingAnimationTracks()) do
                if Track.Animation.AnimationId == "rbxassetid://3135389157" then
                Track:Stop()
            end
        end 
        local Animation = Instance.new("Animation")
        Animation.AnimationId = "rbxassetid://3096047107"
        local LoadAnimation = game.Players.LocalPlayer.Character:FindFirstChildWhichIsA("Humanoid"):LoadAnimation(Animation)
        LoadAnimation.Priority = Enum.AnimationPriority.Action
        LoadAnimation:Play()
        LoadAnimation:AdjustSpeed(1)
        wait(0.2)
        game.Players[target].Character.UpperTorso.BodyPosition.D = 900
        game:GetService('RunService'):UnbindFromRenderStep("Pos")
        game.Players[target].Character.UpperTorso:FindFirstChild("BodyGyro"):Destroy()
        game.Players[target].Character.UpperTorso.BodyPosition.Position =  game.Players.LocalPlayer.Character.HumanoidRootPart.Position + game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.LookVector * 150 + Vector3.new(0,5,0)
        wait(0.5)
        game.Players[target].Character.UpperTorso:FindFirstChild("BodyPosition"):Destroy()
        game:GetService("ReplicatedStorage").MainEvent:FireServer('Grabbing', false)
        end
        end
        end)
        
        local LocalPlayer = game:GetService("Players").LocalPlayer
        local HeavenTool = Instance.new("Tool",LocalPlayer.Backpack)
        local Mouse = LocalPlayer:GetMouse()
        HeavenTool.RequiresHandle = false 
        HeavenTool.Name = "Heaven Throw"
        HeavenTool.Activated:Connect(function()
        if Grabbed == true then
        if Up == false then
        local target = tostring(game.Players.LocalPlayer.Character.BodyEffects.Grabbed.Value)
            for i, Track in pairs (game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid"):GetPlayingAnimationTracks()) do
                if Track.Animation.AnimationId == "rbxassetid://3135389157" then
                Track:Stop()
            end
        end 
        local Animation = Instance.new("Animation")
        Animation.AnimationId = "rbxassetid://14496531574"
        local LoadAnimation = game.Players.LocalPlayer.Character:FindFirstChildWhichIsA("Humanoid"):LoadAnimation(Animation)
        LoadAnimation.Priority = Enum.AnimationPriority.Action
        LoadAnimation:Play()
        LoadAnimation:AdjustSpeed(1)
        wait(0.4)
        game:GetService('RunService'):UnbindFromRenderStep("Pos")
        game.Players[target].Character.UpperTorso:FindFirstChild("BodyGyro"):Destroy()
        wait(0.01)
        game.Players[target].Character.UpperTorso.BodyPosition.D = 200
        game.Players[target].Character.UpperTorso.BodyPosition.Position =  game.Players.LocalPlayer.Character.HumanoidRootPart.Position + game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.LookVector * 3 + Vector3.new(0,3000,0)
        wait(2)
        game:GetService("ReplicatedStorage").MainEvent:FireServer('Grabbing', false)
        
        end
        end
        end)
        
        local LocalPlayer = game:GetService("Players").LocalPlayer
        local PunchTool = Instance.new("Tool",LocalPlayer.Backpack)
        local Mouse = LocalPlayer:GetMouse()
        PunchTool.RequiresHandle = false 
        PunchTool.Name = "Punch"
        PunchTool.Activated:Connect(function()
        if Grabbed == true then
        if Up == false then
        local target = tostring(game.Players.LocalPlayer.Character.BodyEffects.Grabbed.Value)
            for i, Track in pairs (game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid"):GetPlayingAnimationTracks()) do
                if Track.Animation.AnimationId == "rbxassetid://3135389157" then
                Track:Stop()
            end
        end 
        game:GetService('RunService'):UnbindFromRenderStep("Pos")
        game:GetService('RunService'):BindToRenderStep("Pos", 0 , function()
        game.Players[target].Character.UpperTorso.BodyGyro.CFrame = CFrame.new(game.Players[target].Character.UpperTorso.Position, game.Players.LocalPlayer.Character.HumanoidRootPart.Position)
        end)
        game.Players[target].Character.UpperTorso.BodyPosition.D = 3400
        game.Players[target].Character.UpperTorso.BodyPosition.Position = game.Players.LocalPlayer.Character.HumanoidRootPart.Position + game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.LookVector * 3 + Vector3.new(0,1,0)
        wait(3)
        local Animation = Instance.new("Animation")
        Animation.AnimationId = "rbxassetid://3354696735"
        local LoadAnimation = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):LoadAnimation(Animation)
        LoadAnimation.Priority = Enum.AnimationPriority.Action
        LoadAnimation:Play()
        wait(1)
        game.Players[target].Character.UpperTorso:FindFirstChild("BodyPosition"):Destroy()
        game:GetService('RunService'):UnbindFromRenderStep("Pos")
        game.Players[target].Character.UpperTorso:FindFirstChild("BodyGyro"):Destroy()
        for i = 1,2 do
            wait()
            game.Players[target].Character.UpperTorso.Velocity = Vector3.new(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.LookVector.X*950,-200,game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.LookVector.Z*950)
            end
        end
        end
        wait(1)
        game:GetService("ReplicatedStorage").MainEvent:FireServer('Grabbing', false)
        end)

    local LocalPlayer = game:GetService("Players").LocalPlayer
    local RipTool = Instance.new("Tool",LocalPlayer.Backpack)
    local Mouse = LocalPlayer:GetMouse()
    RipTool.RequiresHandle = false 
    RipTool.Name = "Rip In Half"
    RipTool.Activated:Connect(function()
    if Grabbed == true then
    if Up == false then
        local target = tostring(game.Players.LocalPlayer.Character.BodyEffects.Grabbed.Value)
        for i, Track in pairs (game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid"):GetPlayingAnimationTracks()) do
            if Track.Animation.AnimationId == "rbxassetid://3135389157" then
            Track:Stop()
        end
    end
    local Animation1 = Instance.new("Animation")
    Animation1.AnimationId = "rbxassetid://13850666420"
    local LoadAnimation1 = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):LoadAnimation(Animation1)
    LoadAnimation1.Priority = Enum.AnimationPriority.Action
    LoadAnimation1:Play()
    local Animation2 = Instance.new("Animation")
    Animation2.AnimationId = "rbxassetid://13850675130"
    local LoadAnimation2 = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):LoadAnimation(Animation2)
    LoadAnimation2.Priority = Enum.AnimationPriority.Action
    LoadAnimation2:Play()
    game:GetService('RunService'):UnbindFromRenderStep("Pos")
    game:GetService('RunService'):BindToRenderStep("Pos", 0 , function()
    game.Players[target].Character.UpperTorso.BodyGyro.CFrame = CFrame.new(game.Players[target].Character.UpperTorso.Position, game.Players.LocalPlayer.Character.HumanoidRootPart.Position)
    game.Players[target].Character.UpperTorso.BodyPosition.Position = game.Players.LocalPlayer.Character.HumanoidRootPart.Position + game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.LookVector * 2 + Vector3.new(0,0.2,0)
    end)
    task.wait(0.2)
    game.Players[target].Character.LowerTorso.Position = Vector3.new(0, -1200, 0)
    game:GetService('RunService'):UnbindFromRenderStep("Pos")
    task.wait(0.2)
    game.Players[target].Character.UpperTorso:FindFirstChild("BodyPosition"):Destroy()
    game.Players[target].Character.UpperTorso:FindFirstChild("BodyGyro"):Destroy()
    task.wait(0.1)
    game.Players[target].Character.UpperTorso.Velocity = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.RightVector*90
    game.Players[target].Character.RightUpperLeg.Velocity = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.RightVector*-90
    game.Players[target].Character.LeftUpperLeg.Velocity = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.RightVector*-90
    task.wait(0.3)
    game:GetService("ReplicatedStorage").MainEvent:FireServer('Grabbing', false)
    task.wait(0.2)
    LoadAnimation1:Stop(0.3)
    LoadAnimation2:Stop(0.3)
    end
    end
    end)

local LocalPlayer = game:GetService("Players").LocalPlayer
local VoidTool = Instance.new("Tool", LocalPlayer.Backpack)
local Mouse = LocalPlayer:GetMouse()
VoidTool.RequiresHandle = false
VoidTool.Name = "Void"
VoidTool.Activated:Connect(function()
    if Grabbed == true then
        if Up == false then
            local target = tostring(game.Players.LocalPlayer.Character.BodyEffects.Grabbed.Value)
            wait(0.3) -- Changed to 2 seconds
            for i, Track in pairs(game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid"):GetPlayingAnimationTracks()) do
                if Track.Animation.AnimationId == "rbxassetid://3135389157" then
                    Track:Stop()
                end
            end
            game.Players[target].Character.UpperTorso.BodyPosition.D = 1200
            game:GetService('RunService'):UnbindFromRenderStep("Pos")
            game:GetService('RunService'):BindToRenderStep("Pos", 0, function()
                game.Players[target].Character.UpperTorso.BodyGyro.CFrame = CFrame.new(game.Players[target].Character.UpperTorso.Position, game.Players.LocalPlayer.Character.HumanoidRootPart.Position)
            end)
            game.Players[target].Character.UpperTorso.BodyPosition.Position = game.Players.LocalPlayer.Character.HumanoidRootPart.Position + game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.LookVector * 4 + Vector3.new(0,1.4,0)
            local Animation = Instance.new("Animation")
            Animation.AnimationId = "rbxassetid://14774699952"
            local LoadAnimation = game.Players.LocalPlayer.Character:FindFirstChildWhichIsA("Humanoid"):LoadAnimation(Animation)
            LoadAnimation.Priority = Enum.AnimationPriority.Action
            LoadAnimation:Play()
            LoadAnimation:AdjustSpeed(0.4)
            wait(2) -- Additional wait to hold the pose
            game.Players[target].Character.UpperTorso:FindFirstChild("BodyPosition"):Destroy()
            game.Players[target].Character.UpperTorso:FindFirstChild("BodyGyro"):Destroy()
            for i, v in pairs(game.Players[target].Character:GetChildren()) do
                if v:IsA("MeshPart") then
                    v.Position = Vector3.new(0,-600,0)
                end
            end
            wait(0.2)
            LoadAnimation:Stop() -- Stop the animation when Grabbing is fired
            game:GetService("ReplicatedStorage").MainEvent:FireServer('Grabbing', false)
        end
    end
end)

local LocalPlayer = game:GetService("Players").LocalPlayer
local Mouse = LocalPlayer:GetMouse()
local RunService = game:GetService("RunService")

local OrbitTool = Instance.new("Tool", LocalPlayer.Backpack)
OrbitTool.RequiresHandle = false
OrbitTool.Name = "Orbit"

local orbiting = false
local theta = 0
local orbitConnection

OrbitTool.Activated:Connect(function()
	if Grabbed ~= true then return end

	local targetName = tostring(LocalPlayer.Character.BodyEffects.Grabbed.Value)
	local targetPlayer = game.Players:FindFirstChild(targetName)
	if not targetPlayer or not targetPlayer.Character then return end

	local targetChar = targetPlayer.Character
	local targetTorso = targetChar:FindFirstChild("UpperTorso")
	if not targetTorso then return end

	-- Ensure BodyMovers exist
	if not targetTorso:FindFirstChild("BodyPosition") then
		local bp = Instance.new("BodyPosition")
		bp.Name = "BodyPosition"
		bp.D = 200
		bp.MaxForce = Vector3.new(1e5, 1e5, 1e5)
		bp.Parent = targetTorso
	end
	if not targetTorso:FindFirstChild("BodyGyro") then
		local bg = Instance.new("BodyGyro")
		bg.Name = "BodyGyro"
		bg.D = 100
		bg.MaxTorque = Vector3.new(1e5, 1e5, 1e5)
		bg.Parent = targetTorso
	end

	if orbiting then
		-- Stop orbiting
		orbiting = false
		if orbitConnection then
			orbitConnection:Disconnect()
			orbitConnection = nil
		end
		-- Snap back to hand
		RunService:BindToRenderStep("Pos", 0, function()
			local hand = LocalPlayer.Character:FindFirstChild("RightHand")
			if hand then
				targetTorso.BodyPosition.Position = hand.Position + Vector3.new(0, -0.7, 0)
				targetTorso.BodyGyro.CFrame = CFrame.new(targetTorso.Position, LocalPlayer.Character.HumanoidRootPart.Position)
			end
		end)
		targetTorso.BodyPosition.D = 200
	else
		-- Start orbiting
		orbiting = true
		theta = 0
		if orbitConnection then orbitConnection:Disconnect() end

		orbitConnection = RunService.RenderStepped:Connect(function()
			local root = LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
			if not root then return end

			theta += 0.60 -- 🔁 ความเร็วโคจร (เพิ่มขึ้น)
			local radius = 20
			local height = 3

			local offset = Vector3.new(math.cos(theta) * radius, height, math.sin(theta) * radius)
			local orbitPos = root.Position + offset
			targetTorso.BodyPosition.Position = orbitPos
			targetTorso.BodyGyro.CFrame = CFrame.new(targetTorso.Position, root.Position)
		end)

		targetTorso.BodyPosition.D = 1200
	end
end)


--[[
    spawn(function()
        getgenv().Bat = false
        getgenv().BatFling = false
        game:GetService("RunService").Heartbeat:Connect(function()
        if getgenv().BatFling == true then 
        local Vel = game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity
        game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.LookVector.X*350,340,game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.LookVector.Z*350)
        game:GetService("RunService").RenderStepped:Wait()
        game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vel
        end 
        end)
        game.Players.LocalPlayer.Backpack:WaitForChild("[Bat]")
        wait(0.05)
        game.Players.LocalPlayer.Backpack["[Bat]"].Activated:Connect(function()
        if getgenv().Bat == false then
        getgenv().Bat = true
        game.Players.LocalPlayer.Character:FindFirstChild("[Bat]"):Deactivate()
        wait(0.6)
        getgenv().BatFling = true
        wait(1.6)
        getgenv().BatFling = false
        getgenv().Bat = false
        else
        end
        end)
        end)
        ]]