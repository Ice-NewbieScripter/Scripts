--// Source Code If u Want To Modify

local Players = game:GetService("Players")

local lp = Players.LocalPlayer

local camera = workspace.CurrentCamera

-- Create GUI

local gui = Instance.new("ScreenGui", lp:WaitForChild("PlayerGui"))

gui.Name = "NPCHitboxExpanderGUI"

gui.ResetOnSpawn = false

local frame = Instance.new("Frame", gui)

frame.Name = "MainFrame"

frame.Size = UDim2.new(0, 250, 0, 220)

frame.Position = UDim2.new(0, 20, 0.3, 0)

frame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)

frame.BackgroundTransparency = 0.4

frame.BorderSizePixel = 0

frame.Active = true

frame.Draggable = true

local title = Instance.new("TextLabel", frame)

title.Size = UDim2.new(1, -40, 0, 30)

title.Position = UDim2.new(0, 10, 0, 5)

title.BackgroundTransparency = 1

title.Text = "NPC Hitbox Expander"

title.Font = Enum.Font.GothamBold

title.TextSize = 16

title.TextColor3 = Color3.new(1,1,1)

title.TextXAlignment = Enum.TextXAlignment.Left

local minimizeBtn = Instance.new("TextButton", frame)

minimizeBtn.Size = UDim2.new(0, 30, 0, 30)

minimizeBtn.Position = UDim2.new(1, -35, 0, 5)

minimizeBtn.Text = "-"

minimizeBtn.Font = Enum.Font.Gotham

minimizeBtn.TextSize = 18

minimizeBtn.BackgroundColor3 = Color3.fromRGB(40, 40, 40)

minimizeBtn.TextColor3 = Color3.new(1,1,1)

minimizeBtn.BorderSizePixel = 0

local toggle = Instance.new("TextButton", frame)

toggle.Size = UDim2.new(0, 230, 0, 30)

toggle.Position = UDim2.new(0, 10, 0, 45)

toggle.Text = "Hitbox: OFF"

toggle.Font = Enum.Font.Gotham

toggle.TextSize = 14

toggle.BackgroundColor3 = Color3.fromRGB(40, 40, 40)

toggle.TextColor3 = Color3.new(1,1,1)

toggle.BorderSizePixel = 0

local partSelector = Instance.new("TextButton", frame)

partSelector.Size = UDim2.new(0, 230, 0, 30)

partSelector.Position = UDim2.new(0, 10, 0, 85)

partSelector.Text = "Part: Head"

partSelector.Font = Enum.Font.Gotham

partSelector.TextSize = 14

partSelector.BackgroundColor3 = Color3.fromRGB(40, 40, 40)

partSelector.TextColor3 = Color3.new(1,1,1)

partSelector.BorderSizePixel = 0

local sizeBox = Instance.new("TextBox", frame)

sizeBox.Size = UDim2.new(0, 230, 0, 30)

sizeBox.Position = UDim2.new(0, 10, 0, 125)

sizeBox.PlaceholderText = "Hitbox Size (default = 7)"

sizeBox.Text = ""

sizeBox.Font = Enum.Font.Gotham

sizeBox.TextSize = 14

sizeBox.BackgroundColor3 = Color3.fromRGB(40, 40, 40)

sizeBox.TextColor3 = Color3.new(1,1,1)

sizeBox.BorderSizePixel = 0

sizeBox.ClearTextOnFocus = false

local minimized = false

minimizeBtn.MouseButton1Click:Connect(function()

	minimized = not minimized	for _, child in ipairs(frame:GetChildren()) do

		if child:IsA("GuiObject") and child ~= title and child ~= minimizeBtn then

			child.Visible = not minimized

		end

	end

	minimizeBtn.Text = minimized and "+" or "-"

	frame.Size = minimized and UDim2.new(0, 250, 0, 40) or UDim2.new(0, 250, 0, 220)

end)

-- Hitbox Logic

local toggled = false

local partName = "Head"

function isNPC(char)

	return char and char:FindFirstChild("Humanoid") and not Players:GetPlayerFromCharacter(char)

end

function applyHitbox(npc, size)

	local part = npc:FindFirstChild(partName)

	if part and part:IsA("BasePart") then

		part.Size = Vector3.new(size, size, size)

		part.Material = Enum.Material.Neon

		part.Transparency = 0.4

		part.Color = Color3.fromRGB(249, 249, 249)

		part.CanCollide = false

	end

end

function resetHitbox(npc)

	local part = npc:FindFirstChild(partName)

	if part and part:IsA("BasePart") then

		part.Size = Vector3.new(1, 1, 1)

		part.Material = Enum.Material.Plastic

		part.Color = Color3.fromRGB(249, 249, 249)

		part.Transparency = 0

	end

end

local npcConnections = {}

toggle.MouseButton1Click:Connect(function()

	toggled = not toggled

	toggle.Text = toggled and "Hitbox: ON" or "Hitbox: OFF"

	if toggled then

		local size = tonumber(sizeBox.Text) or 7

		for _, model in pairs(workspace:GetDescendants()) do

			if model:IsA("Model") and isNPC(model) then

				applyHitbox(model, size)

			end

		end

		npcConnections["childAdded"] = workspace.DescendantAdded:Connect(function(obj)

			if obj:IsA("Model") and isNPC(obj) then

				task.wait(0.2)

				applyHitbox(obj, tonumber(sizeBox.Text) or 7)

			end

		end)

	else

		for _, model in pairs(workspace:GetDescendants()) do

			if model:IsA("Model") and isNPC(model) then

				resetHitbox(model)

			end

		end

		if npcConnections["childAdded"] then

			npcConnections["childAdded"]:Disconnect()

		end

	end

end)



--[[
partSelector.MouseButton1Click:Connect(function()

	partName = (partName == "Head") and "Torso" or "Head"

	partSelector.Text = "Part: " .. partName

end)
]]