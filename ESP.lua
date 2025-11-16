local Players = game:GetService("Players")

local function createBillboard(player)
    local character = player.Character
    if not character then return end

    local head = character:FindFirstChild("Head")
    if not head then return end

    if head:FindFirstChild("DynamicBillboard") then
        head.DynamicBillboard:Destroy()
    end

    local billboard = Instance.new("BillboardGui")
    billboard.Name = "DynamicBillboard"
    billboard.Size = UDim2.new(8, 0, 2, 0)
    billboard.StudsOffset = Vector3.new(0, 3, 0)
    billboard.AlwaysOnTop = true
    billboard.MaxDistance = math.huge
    billboard.Adornee = head
    billboard.Parent = head

    local textLabel = Instance.new("TextLabel")
    textLabel.Size = UDim2.new(1, 0, 1, 0)
    textLabel.BackgroundTransparency = 1
    textLabel.Font = Enum.Font.SourceSansBold
    textLabel.TextSize = 10
    textLabel.TextColor3 = Color3.new(0, 11, 202) -- สีนํ้าเงิน
    textLabel.Text = player.Name -- ใช้ชื่อผู้เล่นเอง
    textLabel.Parent = billboard

    -- สร้าง SelectionBox รอบตัวละครที่มองทะลุได้
    local selectionBox = Instance.new("SelectionBox")
    selectionBox.Name = "CharacterSelection"
    selectionBox.Adornee = character
    selectionBox.LineThickness = 0.05
    selectionBox.Color3 = Color3.new(0, 11, 202) -- สีนํ้าเงิน
    selectionBox.Transparency = 0.5 -- โปร่งใส
    selectionBox.Parent = character
end

Players.PlayerAdded:Connect(function(player)
    player.CharacterAdded:Connect(function()
        wait(1)
        createBillboard(player)
    end)
end)

for _, player in pairs(Players:GetPlayers()) do
    if player.Character then
        createBillboard(player)
    end

    player.CharacterAdded:Connect(function()
        wait(1)
        createBillboard(player)
    end)
end