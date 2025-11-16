local player = game.Players.LocalPlayer
local gui = Instance.new("ScreenGui")
gui.Name = "BlockspinGUI"
gui.Parent = player:WaitForChild("PlayerGui")

local mainFrame = Instance.new("Frame")
mainFrame.Size = UDim2.new(0, 300, 0, 400)
mainFrame.Position = UDim2.new(0.5, -150, 0.5, -150)
mainFrame.AnchorPoint = Vector2.new(0.5, 0.5)
mainFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
mainFrame.BorderSizePixel = 0
mainFrame.ClipsDescendants = true
mainFrame.Parent = gui

local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0, 12)
corner.Parent = mainFrame

local title = Instance.new("TextLabel")
title.Text = "???"
title.Size = UDim2.new(1, 0, 0, 40)
title.Position = UDim2.new(0, 0, 0, 0)
title.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.Font = Enum.Font.GothamBold
title.TextSize = 18
title.BorderSizePixel = 0
title.Parent = mainFrame

local titleCorner = Instance.new("UICorner")
titleCorner.CornerRadius = UDim.new(0, 12)
titleCorner.Parent = title

local closeButton = Instance.new("TextButton")
closeButton.Text = "X"
closeButton.Size = UDim2.new(0, 30, 0, 30)
closeButton.Position = UDim2.new(1, -35, 0, 5)
closeButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
closeButton.TextColor3 = Color3.fromRGB(255, 255, 255)
closeButton.Font = Enum.Font.GothamBold
closeButton.TextSize = 14
closeButton.BorderSizePixel = 0
closeButton.Parent = mainFrame

local closeButtonCorner = Instance.new("UICorner")
closeButtonCorner.CornerRadius = UDim.new(0, 8)
closeButtonCorner.Parent = closeButton

local reopenButton = Instance.new("TextButton")
reopenButton.Text = "+"
reopenButton.Size = UDim2.new(0, 40, 0, 40)
reopenButton.Position = UDim2.new(0, 10, 0.5, -20)
reopenButton.AnchorPoint = Vector2.new(0, 0.5)
reopenButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
reopenButton.TextColor3 = Color3.fromRGB(255, 255, 255)
reopenButton.Font = Enum.Font.GothamBold
reopenButton.TextSize = 20
reopenButton.BorderSizePixel = 0
reopenButton.Visible = false
reopenButton.Parent = gui

local reopenButtonCorner = Instance.new("UICorner")
reopenButtonCorner.CornerRadius = UDim.new(0, 8)
reopenButtonCorner.Parent = reopenButton

local dragInput
local dragStart
local startPos

local function updateInput(input)
    local delta = input.Position - dragStart
    mainFrame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
end

title.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        dragStart = input.Position
        startPos = mainFrame.Position
        input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                dragInput = nil
            end
        end)
    end
end)

title.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseMovement then
        dragInput = input
    end
end)

game:GetService("UserInputService").InputChanged:Connect(function(input)
    if input == dragInput then
        updateInput(input)
    end
end)

local function closeGUI()
    for i = 1, 10 do
        mainFrame.Size = UDim2.new(0, 300 - (i * 30), 0, 400 - (i * 40))
        mainFrame.Position = UDim2.new(0.5, -150 + (i * 15), 0.5, -150 + (i * 20))
        task.wait(0.02)
    end
    mainFrame.Visible = false
    reopenButton.Visible = true
end

local function openGUI()
    mainFrame.Visible = true
    for i = 10, 1, -1 do
        mainFrame.Size = UDim2.new(0, 300 - (i * 30), 0, 400 - (i * 40))
        mainFrame.Position = UDim2.new(0.5, -150 + (i * 15), 0.5, -150 + (i * 20))
        task.wait(0.02)
    end
    mainFrame.Size = UDim2.new(0, 300, 0, 400)
    mainFrame.Position = UDim2.new(0.5, -150, 0.5, -150)
end

closeButton.MouseButton1Click:Connect(closeGUI)
reopenButton.MouseButton1Click:Connect(openGUI)

local scroll = Instance.new("ScrollingFrame")
scroll.Size = UDim2.new(1, -20, 1, -60)
scroll.Position = UDim2.new(0, 10, 0, 50)
scroll.BackgroundTransparency = 1
scroll.ScrollBarThickness = 5
scroll.Parent = mainFrame

local layout = Instance.new("UIListLayout")
layout.Padding = UDim.new(0, 10)
layout.Parent = scroll

local function createButton(name, callback)
    local button = Instance.new("TextButton")
    button.Text = name
    button.Size = UDim2.new(1, 0, 0, 40)
    button.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    button.TextColor3 = Color3.fromRGB(255, 255, 255)
    button.Font = Enum.Font.GothamBold
    button.TextSize = 14
    button.BorderSizePixel = 0
    button.Parent = scroll

    local buttonCorner = Instance.new("UICorner")
    buttonCorner.CornerRadius = UDim.new(0, 8)
    buttonCorner.Parent = button

    button.MouseButton1Click:Connect(callback)
end

-- Inventory Viewer
local inventoryTextBox = Instance.new("TextBox")
inventoryTextBox.PlaceholderText = "Enter player username"
inventoryTextBox.Size = UDim2.new(1, 0, 0, 30)
inventoryTextBox.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
inventoryTextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
inventoryTextBox.Font = Enum.Font.Gotham
inventoryTextBox.TextSize = 14
inventoryTextBox.BorderSizePixel = 0
inventoryTextBox.Parent = scroll

local inventoryTextBoxCorner = Instance.new("UICorner")
inventoryTextBoxCorner.CornerRadius = UDim.new(0, 8)
inventoryTextBoxCorner.Parent = inventoryTextBox

local inventoryFrame
local function showInventory(playerName)
    -- Find the player
    local targetPlayer
    for _, player in pairs(game.Players:GetPlayers()) do
        if player.Name:lower() == playerName:lower() then
            targetPlayer = player
            break
        end
    end

    if not targetPlayer then
        warn("Player not found!")
        return
    end

    -- Create inventory GUI
    if inventoryFrame then
        inventoryFrame:Destroy()
    end

    inventoryFrame = Instance.new("Frame")
    inventoryFrame.Size = UDim2.new(0, 250, 0, 300)
    inventoryFrame.Position = UDim2.new(0.5, -125, 0.5, -150)
    inventoryFrame.AnchorPoint = Vector2.new(0.5, 0.5)
    inventoryFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
    inventoryFrame.BorderSizePixel = 0
    inventoryFrame.ClipsDescendants = true
    inventoryFrame.Parent = gui

    local inventoryCorner = Instance.new("UICorner")
    inventoryCorner.CornerRadius = UDim.new(0, 12)
    inventoryCorner.Parent = inventoryFrame

    local inventoryTitle = Instance.new("TextLabel")
    inventoryTitle.Text = targetPlayer.Name .. "'s Inventory"
    inventoryTitle.Size = UDim2.new(1, 0, 0, 40)
    inventoryTitle.Position = UDim2.new(0, 0, 0, 0)
    inventoryTitle.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    inventoryTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
    inventoryTitle.Font = Enum.Font.GothamBold
    inventoryTitle.TextSize = 18
    inventoryTitle.BorderSizePixel = 0
    inventoryTitle.Parent = inventoryFrame

    local inventoryTitleCorner = Instance.new("UICorner")
    inventoryTitleCorner.CornerRadius = UDim.new(0, 12)
    inventoryTitleCorner.Parent = inventoryTitle

    local inventoryCloseButton = Instance.new("TextButton")
    inventoryCloseButton.Text = "X"
    inventoryCloseButton.Size = UDim2.new(0, 30, 0, 30)
    inventoryCloseButton.Position = UDim2.new(1, -35, 0, 5)
    inventoryCloseButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    inventoryCloseButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    inventoryCloseButton.Font = Enum.Font.GothamBold
    inventoryCloseButton.TextSize = 14
    inventoryCloseButton.BorderSizePixel = 0
    inventoryCloseButton.Parent = inventoryFrame

    local inventoryCloseButtonCorner = Instance.new("UICorner")
    inventoryCloseButtonCorner.CornerRadius = UDim.new(0, 8)
    inventoryCloseButtonCorner.Parent = inventoryCloseButton

    inventoryCloseButton.MouseButton1Click:Connect(function()
        inventoryFrame:Destroy()
    end)

    -- Populate inventory
    local inventoryScroll = Instance.new("ScrollingFrame")
    inventoryScroll.Size = UDim2.new(1, -20, 1, -60)
    inventoryScroll.Position = UDim2.new(0, 10, 0, 50)
    inventoryScroll.BackgroundTransparency = 1
    inventoryScroll.ScrollBarThickness = 5
    inventoryScroll.Parent = inventoryFrame

    local inventoryLayout = Instance.new("UIListLayout")
    inventoryLayout.Padding = UDim.new(0, 10)
    inventoryLayout.Parent = inventoryScroll

    -- Get the player's backpack and inventory
    local backpack = targetPlayer:FindFirstChild("Backpack")
    local playerGui = targetPlayer:FindFirstChild("PlayerGui")
    local starterGear = targetPlayer:FindFirstChild("StarterGear")

    -- Check for an in-game GUI (e.g., "Items" GUI)
    local itemsGui = playerGui and playerGui:FindFirstChild("Items")

    if backpack then
        for _, item in pairs(backpack:GetChildren()) do
            local itemLabel = Instance.new("TextLabel")
            itemLabel.Text = item.Name
            itemLabel.Size = UDim2.new(1, 0, 0, 30)
            itemLabel.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
            itemLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
            itemLabel.Font = Enum.Font.Gotham
            itemLabel.TextSize = 14
            itemLabel.BorderSizePixel = 0
            itemLabel.Parent = inventoryScroll

            local itemLabelCorner = Instance.new("UICorner")
            itemLabelCorner.CornerRadius = UDim.new(0, 8)
            itemLabelCorner.Parent = itemLabel
        end
    end

    -- Check for items in the in-game GUI (e.g., "Items" GUI)
    if itemsGui then
        for _, item in pairs(itemsGui:GetChildren()) do
            if item:IsA("TextButton") or item:IsA("ImageButton") then
                local itemLabel = Instance.new("TextLabel")
                itemLabel.Text = item.Name
                itemLabel.Size = UDim2.new(1, 0, 0, 30)
                itemLabel.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
                itemLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
                itemLabel.Font = Enum.Font.Gotham
                itemLabel.TextSize = 14
                itemLabel.BorderSizePixel = 0
                itemLabel.Parent = inventoryScroll

                local itemLabelCorner = Instance.new("UICorner")
                itemLabelCorner.CornerRadius = UDim.new(0, 8)
                itemLabelCorner.Parent = itemLabel
            end
        end
    end

    -- Animation: Pop up
    for i = 1, 10 do
        inventoryFrame.Size = UDim2.new(0, 250 - (i * 25), 0, 300 - (i * 30))
        inventoryFrame.Position = UDim2.new(0.5, -125 + (i * 12.5), 0.5, -150 + (i * 15))
        task.wait(0.02)
    end
    inventoryFrame.Size = UDim2.new(0, 250, 0, 300)
    inventoryFrame.Position = UDim2.new(0.5, -125, 0.5, -150)
end

createButton("See Inventory", function()
    showInventory(inventoryTextBox.Text)
end)

-- ESP
local espEnabled = false
local espBoxes = {}

local function createESP(player)
    local character = player.Character
    if character then
        for _, part in pairs(character:GetChildren()) do
            if part:IsA("BasePart") then
                local box = Instance.new("BoxHandleAdornment")
                box.Size = part.Size
                box.Adornee = part
                box.AlwaysOnTop = true
                box.ZIndex = 10
                box.Transparency = 0.5
                box.Color3 = Color3.new(1, 0, 0)
                box.Parent = part
                espBoxes[player] = espBoxes[player] or {}
                table.insert(espBoxes[player], box)
            end
        end
    end
end

local function removeESP(player)
    if espBoxes[player] then
        for _, box in pairs(espBoxes[player]) do
            box:Destroy()
        end
        espBoxes[player] = nil
    end
end

local function toggleESP()
    espEnabled = not espEnabled
    for _, player in pairs(game.Players:GetPlayers()) do
        if player ~= game.Players.LocalPlayer then
            if espEnabled then
                createESP(player)
            else
                removeESP(player)
            end
        end
    end
end

createButton("ESP", toggleESP)

-- X-Ray
local xRayEnabled = false

local function toggleXRay()
    xRayEnabled = not xRayEnabled
    for _, part in pairs(workspace:GetDescendants()) do
        if part:IsA("BasePart") and part.Transparency < 1 then
            part.LocalTransparencyModifier = xRayEnabled and 0.5 or 0
        end
    end
end

createButton("X-Ray", toggleXRay)

-- Inf Stamina
local infStaminaEnabled = false
local infStaminaScript

createButton("Inf Stamina", function()
    infStaminaEnabled = not infStaminaEnabled
    if infStaminaEnabled then
        local success, response = pcall(function()
            return game:HttpGet("https://pastebin.com/raw/xr7KqydH")
        end)
        if success then
            infStaminaScript = loadstring(response)()
        else
            warn("Failed to load Inf Stamina script!")
        end
    else
        if infStaminaScript then
            infStaminaScript = nil
        end
    end
end)

-- Trash Bin Grind
local trashBinGrindEnabled = false
local trashBinGrindScript

createButton("Trash Bin Grind", function()
    trashBinGrindEnabled = not trashBinGrindEnabled
    if trashBinGrindEnabled then
        local success, response = pcall(function()
            return game:HttpGet("https://pastebin.com/raw/xcurxhzp")
        end)
        if success then
            trashBinGrindScript = loadstring(response)()
        else
            warn("Failed to load Trash Bin Grind script!")
        end
    else
        if trashBinGrindScript then
            trashBinGrindScript = nil
        end
    end
end)

-- Touch Fling
local touchFlingEnabled = false
local touchFlingScript

createButton("Touch Fling", function()
    touchFlingEnabled = not touchFlingEnabled
    if touchFlingEnabled then
        local success, response = pcall(function()
            return game:HttpGet("https://rawscripts.net/raw/Universal-Script-Touch-fling-script-22447")
        end)
        if success then
            touchFlingScript = loadstring(response)()
        else
            warn("Failed to load Touch Fling script!")
        end
    else
        if touchFlingScript then
            touchFlingScript = nil
        end
    end
end)

local touchFlingNote = Instance.new("TextLabel")
touchFlingNote.Text = "*op for flinging people and getting crates"
touchFlingNote.Size = UDim2.new(1, 0, 0, 20)
touchFlingNote.TextColor3 = Color3.fromRGB(150, 150, 150)
touchFlingNote.Font = Enum.Font.Gotham
touchFlingNote.TextSize = 12
touchFlingNote.BackgroundTransparency = 1
touchFlingNote.Parent = scroll