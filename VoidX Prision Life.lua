-- Feel free to use (THIS WAS MADE WITH CHATGPT)

local Enabled = true -- Used to toggle script

local MarketplaceService = game:GetService("MarketplaceService")
local placeId = game.PlaceId
local gameName = "Unknown Game" -- ค่าตั้งต้น ถ้าดึงชื่อไม่ได้

-- พยายามดึงชื่อเกม
pcall(function()
    gameName = MarketplaceService:GetProductInfo(placeId).Name
end)

local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = gameName .. " Create By VoidX",
   Icon = 0, -- No icon
   LoadingTitle = "Loading...",
   LoadingSubtitle = "by VoidX",
   Theme = "Default",

   Discord = {
      Enabled = false,
      Invite = "noinvitelink",
      RememberJoins = true
   },

   KeySystem = true,
   KeySettings = {
      Title = "VoidX Keysystem",
      Subtitle = "Key System",
      Note = "Key is VoidX",
      FileName = "VoidX_Key",
      SaveKey = true,
      GrabKeyFromSite = false,
      Key = {"VoidX"}
   }
})

local Tab1 = Window:CreateTab("Main", 4483362458) 
local Section = Tab1:CreateSection("Config")

local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local function getAllPlayers()
    if not Enabled then return {} end
    local playerList = {}
    local currentPlayer = Players.LocalPlayer
    for _, player in pairs(Players:GetPlayers()) do
        if player ~= currentPlayer then
            table.insert(playerList, player)
        end
    end
    return playerList
end

local function attackUntilDead(targetPlayer)
    if not Enabled then return end
    local currentPlayer = Players.LocalPlayer
    while targetPlayer and targetPlayer.Character and targetPlayer.Character:FindFirstChild("Humanoid") and targetPlayer.Character.Humanoid.Health > 0 do
        if currentPlayer and currentPlayer.Character and currentPlayer.Character:FindFirstChild("HumanoidRootPart") then
            -- Offset the teleport position to avoid detection
            currentPlayer.Character.HumanoidRootPart.CFrame = targetPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, -2)
        end
        ReplicatedStorage:WaitForChild("meleeEvent"):FireServer(targetPlayer)
        wait(0.01)
    end
end

local function getInmates()
    if not Enabled then return {} end
    local inmates = {}
    local localPlayer = Players.LocalPlayer
    for _, player in pairs(Players:GetPlayers()) do
        if player.Team and player.Team.Name == "Inmates" and player ~= localPlayer then
            table.insert(inmates, player)
        end
    end
    return inmates
end

local function punchUntilDead(target)
    if not Enabled then return end
    while target and target.Character and target.Character:FindFirstChild("Humanoid") and target.Character.Humanoid.Health > 0 do
        ReplicatedStorage:WaitForChild("meleeEvent"):FireServer(target)
        wait(0.01)
    end
end

Tab1:CreateToggle({
    Name = "Kill all inmates",
    CurrentValue = false,
    Flag = "KillInmatesToggle",
    Callback = function(Value)
        if not Value then return end
        local inmates = getInmates()
        for _, target in ipairs(inmates) do
            local player = Players.LocalPlayer
            if player and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
                player.Character.HumanoidRootPart.CFrame = target.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, -2)
            end
            punchUntilDead(target)
        end
    end,
})

Tab1:CreateToggle({
    Name = "Kill All",
    CurrentValue = false,
    Flag = "KillAllToggle",
    Callback = function(Value)
        if not Value then return end
        local allPlayers = getAllPlayers()
        for _, targetPlayer in ipairs(allPlayers) do
            attackUntilDead(targetPlayer)
        end
    end,
})

local function getNearbyPlayers()
    if not Enabled then return {} end
    local playerList = {}
    local currentPlayer = Players.LocalPlayer
    local currentCharacter = currentPlayer and currentPlayer.Character
    local currentRoot = currentCharacter and currentCharacter:FindFirstChild("HumanoidRootPart")
    
    if not currentRoot then return {} end
    
    for _, player in pairs(Players:GetPlayers()) do
        if player ~= currentPlayer and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
            local distance = (player.Character.HumanoidRootPart.Position - currentRoot.Position).magnitude
            if distance <= 10000000 then -- Attack range
                table.insert(playerList, player)
            end
        end
    end
    return playerList
end

local function attackNearbyPlayersTimes()
    while Enabled do
        local nearbyPlayers = getNearbyPlayers()
        for _, targetPlayer in ipairs(nearbyPlayers) do
            for i = 1, 20 do
                task.spawn(function()
                    game.ReplicatedStorage:WaitForChild("meleeEvent"):FireServer(targetPlayer)
                end)
            end
        end
        wait(0.1) -- ปรับเวลาตามต้องการ
    end
end

local function attackNearbyPlayersTimes()
    if not Enabled then return end
    local nearbyPlayers = getNearbyPlayers()
    for _, targetPlayer in ipairs(nearbyPlayers) do
        for i = 1, 20 do
            task.spawn(function()
                game.ReplicatedStorage:WaitForChild("meleeEvent"):FireServer(targetPlayer)
            end)
        end
    end
end

Tab1:CreateToggle({
    Name = "Kill Aura",
    CurrentValue = false,
    Flag = "KillAuraToggle",
    Callback = function(Value)
        Enabled = Value
        if Value then
            task.spawn(attackNearbyPlayersTimes)
        end
    end,
})



local Tab2 = Window:CreateTab("Join Team", 4483362458) -- Title, Image
local Section = Tab2:CreateSection("Section Example")

local Button = Tab2:CreateButton({
    Name = "Join Immates Team",
    Callback = function()
        local args = {
            [1] = "Bright orange"
        }
        
        workspace:WaitForChild("Remote"):WaitForChild("TeamEvent"):FireServer(unpack(args))
    end,
 })
local Button = Tab2:CreateButton({
    Name = "Join Guards Team",
    Callback = function()
        local args = {
            [1] = "Bright blue"
        }
        
        workspace:WaitForChild("Remote"):WaitForChild("TeamEvent"):FireServer(unpack(args))
    end,
 })

 local Tab3 = Window:CreateTab("", 4483362458) -- Title, Image
 local Section = Tab3:CreateSection("Section Example")

 local Button = Tab3:CreateButton({
    Name = "Armory",
    Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(835.694641, 99.989998, 2260.455322, 0.999976, -0.000000, -0.006975, 0.000000, 1.000000, 0.000000, 0.006975, -0.000000, 0.999976)
    end,
 })
 local Button = Tab3:CreateButton({
    Name = "BreakRoom",
    Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(926.984497, 99.989944, 2281.634277, 0.757806, -0.000000, -0.652480, 0.000000, 1.000000, 0.000000, 0.652480, -0.000000, 0.757806)
    end,
 })
 local Button = Tab3:CreateButton({
    Name = "Cafaitrtia",
    Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(920.325073, 99.989944, 2270.579346, 0.999120, -0.000000, 0.041945, 0.000000, 1.000000, -0.000000, -0.041945, 0.000000, 0.999120)
    end,
 })
 local Button = Tab3:CreateButton({
    Name = "CamRoom",
    Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(794.747803, 99.989990, 2325.427002, 0.603016, -0.000000, -0.797729, 0.000000, 1.000000, -0.000000, 0.797729, -0.000000, 0.603016)
    end,
 })
 local Button = Tab3:CreateButton({
    Name = "Courtyard",
    Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(784.416931, 97.999939, 2437.433838, 0.995391, -0.000000, -0.095899, 0.000000, 1.000000, -0.000000, 0.095899, 0.000000, 0.995391)
    end,
 })
 local Button = Tab3:CreateButton({
    Name = "Crim Base",
    Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-959.670715, 103.232811, 2054.538574, 0.000497, 0.000000, -1.000000, -0.000000, 1.000000, 0.000000, 1.000000, 0.000000, 0.000497)
    end,
 })
 local Button = Tab3:CreateButton({
    Name = "Font Office",
    Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(720.213501, 99.989998, 2257.426270, -0.007344, 0.000000, 0.999973, -0.000000, 1.000000, -0.000000, -0.999973, -0.000000, -0.007344)
    end,
 })
 local Button = Tab3:CreateButton({
    Name = "Gates Control Room",
    Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(507.602844, 102.039932, 2242.479492, 0.999854, 0.000000, 0.017087, -0.000000, 1.000000, -0.000000, -0.017087, -0.000000, 0.999854)
    end,
 })
 local Button = Tab3:CreateButton({
    Name = "Hallway",
    Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(982.728149, 99.989998, 2298.613281, 0.999813, -0.000000, -0.019348, 0.000000, 1.000000, -0.000000, 0.019348, 0.000000, 0.999813)
    end,
 })
 local Button = Tab3:CreateButton({
    Name = "Jblock",
    Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(917.053040, 99.989975, 2449.298584, -0.740709, -0.000000, 0.671826, -0.000000, 1.000000, 0.000000, -0.671826, 0.000000, -0.740709)
    end,
 })
 local Button = Tab3:CreateButton({
    Name = "Kitchen",
    Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(950.259521, 99.989952, 2216.155518, -0.397769, 0.000000, -0.917485, 0.000000, 1.000000, 0.000000, 0.917485, 0.000000, -0.397769)
    end,
 })
 local Button = Tab3:CreateButton({
    Name = "Outside Prison",
    Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(276.030914, 72.516716, 2217.863281, 0.326223, 0.000000, 0.945293, 0.000000, 1.000000, -0.000000, -0.945293, 0.000000, 0.326223)
    end,
 })
 local Button = Tab3:CreateButton({
    Name = "Prison Roof",
    Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(725.957886, 123.989998, 2328.571289, 0.795442, 0.000000, -0.606030, 0.000000, 1.000000, 0.000000, 0.606030, -0.000000, 0.795442)
    end,
 })

 Rayfield:Notify({
    Title = "Load Script Success",
    Content = "Create By VoidX",
    Duration = 6.5,
    Image = 4483362458,
 })