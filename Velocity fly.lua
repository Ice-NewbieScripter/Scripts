-- dont use this shit in da hood

local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")
local Players = game:GetService("Players")
local player = Players.LocalPlayer

local flying = false
local velocity
local bodyGyro
local character
local humanoidRootPart


UserInputService.InputBegan:Connect(function(input, gameProcessed)
	if gameProcessed then return end
	if input.KeyCode == Enum.KeyCode.X then
		flying = not flying

		character = player.Character
		if not character then return end

		humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
		if not humanoidRootPart then return end

		if flying then
			-- Create BodyVelocity and BodyGyro
			velocity = Instance.new("BodyVelocity")
			velocity.Velocity = Vector3.zero
			velocity.MaxForce = Vector3.new(100000, 100000, 100000)
			velocity.P = 1250
			velocity.Parent = humanoidRootPart

			bodyGyro = Instance.new("BodyGyro")
			bodyGyro.MaxTorque = Vector3.new(400000, 400000, 400000)
			bodyGyro.P = 3000
			bodyGyro.CFrame = workspace.CurrentCamera.CFrame
			bodyGyro.Parent = humanoidRootPart
		else
			-- Stop flying
			if velocity then velocity:Destroy() end
			if bodyGyro then bodyGyro:Destroy() end
		end
	end
end)

-- update movement
RunService.RenderStepped:Connect(function()
	if flying and humanoidRootPart and velocity and bodyGyro then
		local camCF = workspace.CurrentCamera.CFrame
		local moveDirection = Vector3.zero

		if UserInputService:IsKeyDown(Enum.KeyCode.W) then
			moveDirection += camCF.LookVector
		end
		if UserInputService:IsKeyDown(Enum.KeyCode.S) then
			moveDirection -= camCF.LookVector
		end
		if UserInputService:IsKeyDown(Enum.KeyCode.A) then
			moveDirection -= camCF.RightVector
		end
		if UserInputService:IsKeyDown(Enum.KeyCode.D) then
			moveDirection += camCF.RightVector
		end

		moveDirection = moveDirection.Unit
		if moveDirection.Magnitude == moveDirection.Magnitude then -- avoid NaN
			velocity.Velocity = moveDirection * 80 -- speed
		end

		bodyGyro.CFrame = camCF
	end
end)
