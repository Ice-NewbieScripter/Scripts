-- LocalScript (ใส่ใน StarterPlayerScripts หรือ StarterGui)
local RunService = game:GetService("RunService")
local camera = workspace.CurrentCamera

local targetFOV = 120

RunService.RenderStepped:Connect(function()
	if camera.FieldOfView ~= targetFOV then
		camera.FieldOfView = targetFOV
	end
end)
