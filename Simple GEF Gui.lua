local Players = game:GetService("Players")
local Workspace = game:GetService("Workspace")
local Lighting = game:GetService("Lighting")

local texts = {}
local textVisible = false
local moneyTextVisible = false
local lightingChangeActive = false
local gefFolder = Workspace:FindFirstChild("GEFs")
local moneyFolder = Workspace:FindFirstChild("Pickups")
local miniGefTextColor = Color3.new(1, 1, 0)
local moneyTextColor = Color3.new(0, 1, 0)
local areButtonsVisible = true

local hurtboxRemovalStarted = false

local function startHurtboxRemoval()
    if not hurtboxRemovalStarted then
        hurtboxRemovalStarted = true
        spawn(function()
            while true do
                if gefFolder then
                    for _, gef in pairs(gefFolder:GetChildren()) do
                        if gef:IsA("Model") then
                            for _, child in pairs(gef:GetChildren()) do
                                if child.Name == "Hurtbox" then
                                    child:Destroy()
                                end
                            end
                        end
                    end
                else
                    warn("GEFs folder not found in Workspace.")
                end
                wait(1)
            end
        end)
    end
end

local function setCrowbarDamage()
    for _, player in pairs(Players:GetPlayers()) do
        local backpack = player:FindFirstChild("Backpack")
        if backpack then
            for _, item in pairs(backpack:GetChildren()) do
                if item.Name == "Crowbar" then
                    local damageValue = item:FindFirstChild("Damage")
                    if not damageValue then
                        damageValue = Instance.new("NumberValue")
                        damageValue.Name = "Damage"
                        damageValue.Parent = item
                    end
                    damageValue.Value = 1000
                end
            end
        end
    end
end

local function setBatDamage()
    for _, player in pairs(Players:GetPlayers()) do
        local backpack = player:FindFirstChild("Backpack")
        if backpack then
            for _, item in pairs(backpack:GetChildren()) do
                if item.Name == "Bat" then
                    local damageValue = item:FindFirstChild("Damage")
                    if not damageValue then
                        damageValue = Instance.new("NumberValue")
                        damageValue.Name = "Damage"
                        damageValue.Parent = item
                    end
                    damageValue.Value = 1000
                end
            end
        end
    end
end


local function addTextToObject(obj, labelText, color)
    local adorneePart = obj:IsA("Model") and (obj.PrimaryPart or obj:FindFirstChildOfClass("BasePart")) or obj
    if adorneePart and not texts[obj] then
        local billboardGui = Instance.new("BillboardGui")
        billboardGui.Parent = obj
        billboardGui.Adornee = adorneePart
        billboardGui.Size = UDim2.new(0, 100, 0, 50)
        billboardGui.StudsOffset = Vector3.new(0, 3, 0)
        billboardGui.AlwaysOnTop = true

        local textLabel = Instance.new("TextLabel")
        textLabel.Parent = billboardGui
        textLabel.Size = UDim2.new(1, 0, 1, 0)
        textLabel.BackgroundTransparency = 1
        textLabel.TextColor3 = color
        textLabel.TextStrokeTransparency = 0
        textLabel.Text = labelText
        textLabel.TextScaled = true

        texts[obj] = billboardGui
    end
end

local function removeTextFromObject(obj)
    if texts[obj] then
        texts[obj]:Destroy()
        texts[obj] = nil
    end
end

local function toggleTextGEFs()
    textVisible = not textVisible
    if textVisible then
        if gefFolder then
            for _, gef in pairs(gefFolder:GetChildren()) do
                if gef:IsA("Model") then
                    addTextToObject(gef, "Mini GEF", miniGefTextColor)
                end
            end
        end
        local gefObject = Workspace:FindFirstChild("GEF")
        if gefObject and gefObject:IsA("Model") then
            addTextToObject(gefObject, "GEF", Color3.new(1, 0, 0)) -- Red Hightlight
        end
    else
        for obj, label in pairs(texts) do
            if label.TextLabel.Text == "Mini GEF" or label.TextLabel.Text == "GEF" then
                removeTextFromObject(obj)
            end
        end
    end
end

local function toggleTextMoney()
    moneyTextVisible = not moneyTextVisible
    if moneyTextVisible then
        if moneyFolder then
            for _, money in pairs(moneyFolder:GetChildren()) do
                if money.Name == "Money" then
                    addTextToObject(money, "Money", moneyTextColor)
                end
            end
        end
    else
        for obj, label in pairs(texts) do
            if label.TextLabel.Text == "Money" then
                removeTextFromObject(obj)
            end
        end
    end
end

local function autoAddTextToNewObjects()
    while true do
        wait(1)

        if textVisible and gefFolder then
            for _, gef in pairs(gefFolder:GetChildren()) do
                if gef:IsA("Model") and not texts[gef] then
                    addTextToObject(gef, "Mini GEF", miniGefTextColor)
                end
            end
        end

        if textVisible then
            local gefObject = Workspace:FindFirstChild("GEF")
            if gefObject and gefObject:IsA("Model") and not texts[gefObject] then
                addTextToObject(gefObject, "GEF", Color3.new(1, 0, 0)) -- Red for Gef
            end
        end

        if moneyTextVisible and moneyFolder then
            for _, money in pairs(moneyFolder:GetChildren()) do
                if money.Name == "Money" and not texts[money] then
                    addTextToObject(money, "Money", moneyTextColor)
                end
            end
        end
    end
end

spawn(autoAddTextToNewObjects)

local function toggleLightingChange()
    lightingChangeActive = not lightingChangeActive
    if lightingChangeActive then
        spawn(function()
            while lightingChangeActive do
                Lighting.Ambient = Color3.new(84/255, 84/255, 84/255)
                Lighting.Brightness = 2
                Lighting.ClockTime = 14
                Lighting.FogEnd = 1000
                Lighting.FogStart = 0
                Lighting.OutdoorAmbient = Color3.new(128/255, 128/255, 128/255)
                wait(3)
            end
        end)
    end
end

local function getNearestMiniGEF(player)
    local closestGEF = nil
    local minDistance = math.huge
    local character = player.Character
    if character and character:FindFirstChild("HumanoidRootPart") then
        local playerPosition = character.HumanoidRootPart.Position
        for _, gef in pairs(gefFolder:GetChildren()) do
            if gef:IsA("Model") and gef.PrimaryPart then
                local distance = (gef.PrimaryPart.Position - playerPosition).Magnitude
                if distance < minDistance then
                    minDistance = distance
                    closestGEF = gef
                end
            end
        end
    end
    return closestGEF, minDistance
end

local function createGUIForPlayer(player)
    local screenGui = Instance.new("ScreenGui")
    screenGui.Name = "TeleportGUI"
    screenGui.Parent = player:WaitForChild("PlayerGui")

    local backgroundFrame = Instance.new("Frame")
    backgroundFrame.Size = UDim2.new(1, 0, 1, 0)
    backgroundFrame.BackgroundColor3 = Color3.new(0, 0, 0)
    backgroundFrame.BackgroundTransparency = 0.5
    backgroundFrame.Parent = screenGui

    local titleLabel = Instance.new("TextLabel")
    titleLabel.Size = UDim2.new(0, 300, 0, 100)
    titleLabel.Position = UDim2.new(0, 10, 0, 50)
    titleLabel.Text = "Simple GEF Gui"
    titleLabel.TextColor3 = Color3.new(1, 1, 1)
    titleLabel.Font = Enum.Font.GothamBold
    titleLabel.TextScaled = true
    titleLabel.BackgroundTransparency = 1
    titleLabel.Parent = backgroundFrame

    local titleLabel2 = Instance.new("TextLabel")
    titleLabel2.Size = UDim2.new(0, 150, 0, 50)
    titleLabel2.Position = UDim2.new(0, 85, 0, 150)
    titleLabel2.Text = "by AOC"
    titleLabel2.TextColor3 = Color3.new(1, 1, 1)
    titleLabel2.Font = Enum.Font.GothamBold
    titleLabel2.TextScaled = true
    titleLabel2.BackgroundTransparency = 1
    titleLabel2.Parent = backgroundFrame

    local distanceLabel = Instance.new("TextLabel")
    distanceLabel.Size = UDim2.new(0, 100, 0, 50)
    distanceLabel.Position = UDim2.new(0.44, -425, 0.5, -400)
    distanceLabel.Text = "Distance: ..."
    distanceLabel.TextColor3 = Color3.new(1, 1, 1)
    distanceLabel.Visible = areButtonsVisible
    distanceLabel.Parent = screenGui
    distanceLabel.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
    distanceLabel.TextColor3 = Color3.new(1, 1, 1)

    local miniGefButton = Instance.new("TextButton")
    miniGefButton.Size = UDim2.new(0, 200, 0, 50)
    miniGefButton.Position = UDim2.new(0.44, -320, 0.5, -400)
    miniGefButton.Text = "Teleport to Nearest Gef"
    miniGefButton.Visible = areButtonsVisible
    miniGefButton.Parent = screenGui
    miniGefButton.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
    miniGefButton.TextColor3 = Color3.new(1, 1, 1)

    miniGefButton.MouseButton1Click:Connect(function()
        local nearestGEF, _ = getNearestMiniGEF(player)
        if nearestGEF and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
            player.Character.HumanoidRootPart.CFrame = nearestGEF.PrimaryPart.CFrame
        else
            warn("nearestGef not founded")
        end
    end)

local removeHurtboxButton = Instance.new("TextButton")
removeHurtboxButton.Size = UDim2.new(0, 200, 0, 50)
removeHurtboxButton.Position = UDim2.new(0.44, -320, 0.5, -40)
removeHurtboxButton.Text = "No Damage"
removeHurtboxButton.Visible = areButtonsVisible
removeHurtboxButton.Parent = screenGui
removeHurtboxButton.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
removeHurtboxButton.TextColor3 = Color3.new(1, 1, 1)

removeHurtboxButton.MouseButton1Click:Connect(function()
    startHurtboxRemoval()
    removeHurtboxButton.Text = "No Damage is Activated"
    removeHurtboxButton.TextColor3 = Color3.new(0, 1, 0)
    removeHurtboxButton.Active = false
end)

local crowbarDamageButton = Instance.new("TextButton")
crowbarDamageButton.Size = UDim2.new(0, 200, 0, 50)
crowbarDamageButton.Position = UDim2.new(0.44, -320, 0.5, -160)
crowbarDamageButton.Text = "Infinity Crowbar Damage"
crowbarDamageButton.Visible = areButtonsVisible
crowbarDamageButton.Parent = screenGui
crowbarDamageButton.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
crowbarDamageButton.TextColor3 = Color3.new(1, 1, 1)

crowbarDamageButton.MouseButton1Click:Connect(function()
    spawn(setCrowbarDamage)
    crowbarDamageButton.Text = "working..."
    wait(2)
    crowbarDamageButton.Text = "Infinity Crowbar Damage"
end)

local batDamageButton = Instance.new("TextButton")
batDamageButton.Size = UDim2.new(0, 200, 0, 50)
batDamageButton.Position = UDim2.new(0.44, -320, 0.5, -100)
batDamageButton.Text = "Infinity Bat Damage"
batDamageButton.Visible = areButtonsVisible
batDamageButton.Parent = screenGui
batDamageButton.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
batDamageButton.TextColor3 = Color3.new(1, 1, 1)

batDamageButton.MouseButton1Click:Connect(function()
    spawn(setBatDamage)
    batDamageButton.Text = "working..."
    wait(2)
    batDamageButton.Text = "Infinity Bat Damage"
end)

    local highlightButton = Instance.new("TextButton")
    highlightButton.Size = UDim2.new(0, 200, 0, 50)
    highlightButton.Position = UDim2.new(0.44, -320, 0.5, -340)
    highlightButton.Text = "Gefs ESP"
    highlightButton.Visible = areButtonsVisible
    highlightButton.Parent = screenGui
    highlightButton.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
    highlightButton.TextColor3 = Color3.new(1, 1, 1)

    highlightButton.MouseButton1Click:Connect(function()
        toggleTextGEFs()
        highlightButton.Text = textVisible and "off Gefs ESP" or "Gefs ESP"
    end)

    local moneyHighlightButton = Instance.new("TextButton")
    moneyHighlightButton.Size = UDim2.new(0, 200, 0, 50)
    moneyHighlightButton.Position = UDim2.new(0.44, -320, 0.5, -280)
    moneyHighlightButton.Text = "Money ESP"
    moneyHighlightButton.Visible = areButtonsVisible
    moneyHighlightButton.Parent = screenGui
    moneyHighlightButton.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
    moneyHighlightButton.TextColor3 = Color3.new(1, 1, 1)

    moneyHighlightButton.MouseButton1Click:Connect(function()
        toggleTextMoney()
        moneyHighlightButton.Text = moneyTextVisible and "off Money ESP" or "Money ESP"
    end)

    local lightingButton = Instance.new("TextButton")
    lightingButton.Size = UDim2.new(0, 200, 0, 50)
    lightingButton.Position = UDim2.new(0.44, -320, 0.5, -220)
    lightingButton.Text = "Day light"
    lightingButton.Visible = areButtonsVisible
    lightingButton.Parent = screenGui
    lightingButton.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
    lightingButton.TextColor3 = Color3.new(1, 1, 1)

    lightingButton.MouseButton1Click:Connect(function()
        toggleLightingChange()
        lightingButton.Text = lightingChangeActive and "off Day light" or "Day light"
    end)

    local function createButton(buttonText, itemName, positionOffsetY, parentFolder)
        local statusLabel = Instance.new("TextLabel")
        statusLabel.Size = UDim2.new(0, 100, 0, 50)
        statusLabel.Position = UDim2.new(0.5, -210, 0.5, positionOffsetY)
        statusLabel.Text = "Finding..."
        statusLabel.TextColor3 = Color3.new(1, 1, 0)
        statusLabel.Visible = areButtonsVisible
        statusLabel.Parent = screenGui
        statusLabel.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)

        local button = Instance.new("TextButton")
        button.Size = UDim2.new(0, 200, 0, 50)
        button.Position = UDim2.new(0.5, -100, 0.5, positionOffsetY)
        button.Text = buttonText
        button.Visible = areButtonsVisible
        button.Parent = screenGui
        button.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
        button.TextColor3 = Color3.new(1, 1, 1)

        button.MouseButton1Click:Connect(function()
            local item = Workspace:FindFirstChild(parentFolder):FindFirstChild(itemName)
            if item then
                player.Character.HumanoidRootPart.CFrame = item.CFrame
            else
                print(itemName .. " dont founded in Workspace -> " .. parentFolder)
            end
        end)

        spawn(function()
            while true do
                local item = Workspace:FindFirstChild(parentFolder):FindFirstChild(itemName)
                statusLabel.Text = item and "Founded" or "Not Founded"
                statusLabel.TextColor3 = item and Color3.new(0, 1, 0) or Color3.new(1, 0, 0)
                wait(1)
            end
        end)
        return button, statusLabel
    end

    local items = {
        {"Teleport to Shotgun", "Shotgun", -400, "Pickups"},
        {"Teleport to Handgun", "Handgun", -340, "Pickups"},
        {"Teleport to Hammer", "Hammer", -280, "Pickups"},
        {"Teleport to Lantern", "Lantern", -220, "Pickups"},
        {"Teleport to Shells", "Shells", -160, "Pickups"},
        {"Teleport to Soda", "Soda", -100, "Pickups"},
        {"Teleport to Money", "Money", -40, "Pickups"},
        {"Teleport to Crowbar", "Crowbar", 20, "Pickups"},
        {"Teleport to Food", "Food", 80, "Pickups"},
        {"Teleport to Bat", "Bat", 140, "Pickups"},
        {"Teleport to Medkit", "Medkit", 200, "Pickups"},
        {"Teleport to GPS", "GPS", 260, "Pickups"},
        {"Teleport to Bullets", "Bullets", 320, "Pickups"}
    }

    local buttonsAndLabels = {}
    for _, itemData in ipairs(items) do
        table.insert(buttonsAndLabels, {createButton(unpack(itemData))})
    end

    local toggleButton = Instance.new("TextButton")
    toggleButton.Size = UDim2.new(0, 200, 0, 50)
    toggleButton.Position = UDim2.new(0.5, 120, 0.5, -400)
    toggleButton.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
    toggleButton.TextColor3 = Color3.new(1, 1, 1)
    toggleButton.Text = "Hide Buttons"
    toggleButton.Parent = screenGui

    toggleButton.MouseButton1Click:Connect(function()
        areButtonsVisible = not areButtonsVisible
        miniGefButton.Visible = areButtonsVisible
        highlightButton.Visible = areButtonsVisible
        moneyHighlightButton.Visible = areButtonsVisible
        lightingButton.Visible = areButtonsVisible
        distanceLabel.Visible = areButtonsVisible
        backgroundFrame.Visible = areButtonsVisible
        titleLabel.Visible = areButtonsVisible
        crowbarDamageButton.Visible = areButtonsVisible
        batDamageButton.Visible = areButtonsVisible
        removeHurtboxButton.Visible = areButtonsVisible
        for _, buttonAndLabel in pairs(buttonsAndLabels) do
            buttonAndLabel[1].Visible = areButtonsVisible
            buttonAndLabel[2].Visible = areButtonsVisible
        end
        toggleButton.Text = areButtonsVisible and "Hide Buttons" or "Show Buttons"
    end)

    spawn(function()
        while true do
            local _, distance = getNearestMiniGEF(player)
            distanceLabel.Text = distance and string.format("distance: %.1f m", distance) or "Mini GEF is not founded"
            wait(1)
        end
    end)
end

Players.PlayerAdded:Connect(createGUIForPlayer)
for _, player in pairs(Players:GetPlayers()) do
    createGUIForPlayer(player)
end