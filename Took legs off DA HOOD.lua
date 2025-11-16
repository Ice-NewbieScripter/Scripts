local Players = game:GetService("Players")
local localPlayer = Players.LocalPlayer

-- ฟังก์ชันแสดง Bubble Chat บนหัวตัวละคร
local function showBubble(message, character)
	if not character then return end

	local head = character:FindFirstChild("Head")
	if not head then return end

	if head:FindFirstChild("CustomBubble") then
		head.CustomBubble:Destroy()
	end

	local bubble = Instance.new("BillboardGui")
	bubble.Name = "CustomBubble"
	bubble.Adornee = head
	bubble.Size = UDim2.new(0, 200, 0, 50)
	bubble.StudsOffset = Vector3.new(0, 2.5, 0)
	bubble.AlwaysOnTop = true
	bubble.Parent = head

	local textLabel = Instance.new("TextLabel")
	textLabel.Size = UDim2.new(1, 0, 1, 0)
	textLabel.BackgroundTransparency = 0.2
	textLabel.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
	textLabel.TextColor3 = Color3.new(1, 1, 1)
	textLabel.TextStrokeTransparency = 0.5
	textLabel.Font = Enum.Font.SourceSansBold
	textLabel.TextSize = 18
	textLabel.TextWrapped = true
	textLabel.Text = message
	textLabel.Parent = bubble

	task.delay(3, function()
		if bubble and bubble.Parent then
			bubble:Destroy()
		end
	end)
end

-- แสดงข้อความบนหัวตัวเอง
local messages = { "Say goodbye to your legs." }
for _, msg in ipairs(messages) do
	showBubble(msg, localPlayer.Character)
	task.wait(0.5)
end

-- RIP both legs
local grabbedValue = localPlayer.Character:FindFirstChild("BodyEffects") and localPlayer.Character.BodyEffects:FindFirstChild("Grabbed")

if grabbedValue and grabbedValue.Value then
	local targetName = tostring(grabbedValue.Value)
	local targetPlayer = Players:FindFirstChild(targetName)

	if targetPlayer and targetPlayer.Character then
		local char = targetPlayer.Character
		showBubble("MY LEGS!!", char)

		-- ค้นหาขาทั้งสองข้าง (รองรับ R6 และ R15)
		local rightLeg = char:FindFirstChild("RightUpperLeg") or char:FindFirstChild("Right Leg")
		local leftLeg  = char:FindFirstChild("LeftUpperLeg")  or char:FindFirstChild("Left Leg")

		if rightLeg then
			rightLeg.Position = Vector3.new(0, -1200, 0)
		end
		if leftLeg then
			leftLeg.Position = Vector3.new(0, -1200, 0)
		end
	end
end
