local Players = game:GetService("Players")
local localPlayer = Players.LocalPlayer

-- สร้าง Bubble GUI แบบ custom
local function showBubble(message, character)
	if not character then return end

	local head = character:FindFirstChild("Head")
	if not head then return end

	-- ลบอันเก่า (ถ้ามี)
	if head:FindFirstChild("CustomBubble") then
		head.CustomBubble:Destroy()
	end

	local billboard = Instance.new("BillboardGui")
	billboard.Name = "CustomBubble"
	billboard.Adornee = head
	billboard.Size = UDim2.new(0, 200, 0, 50)
	billboard.StudsOffset = Vector3.new(0, 2.5, 0)
	billboard.AlwaysOnTop = true
	billboard.Parent = head

	local textLabel = Instance.new("TextLabel")
	textLabel.Size = UDim2.new(1, 0, 1, 0)
	textLabel.BackgroundTransparency = 0.2
	textLabel.BackgroundColor3 = Color3.fromRGB(30,30,30)
	textLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
	textLabel.TextStrokeTransparency = 0.5
	textLabel.Font = Enum.Font.SourceSansBold
	textLabel.TextSize = 18
	textLabel.Text = message
	textLabel.Parent = billboard

	-- ลบหลังจาก 3 วินาที
	task.delay(3, function()
		if billboard and billboard.Parent then
			billboard:Destroy()
		end
	end)
end

-- ส่งข้อความ + Bubble
local messages = {"I'm gonna rip you in half now."}
for _, msg in ipairs(messages) do
	showBubble(msg, localPlayer.Character)
	task.wait(0.5)
end

-- RIP in half logic
local grabbedValue = localPlayer.Character:FindFirstChild("BodyEffects") and localPlayer.Character.BodyEffects:FindFirstChild("Grabbed")

if grabbedValue and grabbedValue.Value then
	local targetName = tostring(grabbedValue.Value)
	local targetPlayer = Players:FindFirstChild(targetName)

	if targetPlayer and targetPlayer.Character then
		showBubble("GOD PLS NOO", targetPlayer.Character)

		for _, part in pairs(targetPlayer.Character:GetChildren()) do
			if part:IsA("MeshPart") and part.Name == "LowerTorso" then
				part.Position = Vector3.new(0, -1200, 0)
			end
		end
	end
end
