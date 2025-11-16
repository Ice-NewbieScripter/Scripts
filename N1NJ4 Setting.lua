local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "N1NJ4"
ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
local UICorner = Instance.new("UICorner")



local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "N1NJ4"
ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
local UICorner = Instance.new("UICorner")

--Properties:

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "N1NJ4"
ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
local UICorner = Instance.new("UICorner")

ScreenGui.Name = "N1NJ4"
ScreenGui.Parent = game.CoreGui

local NHUB = Instance.new("TextLabel")
NHUB.Name = "N1NJ4"
NHUB.Parent = ScreenGui
NHUB.BackgroundColor3 = Color3.fromRGB(48, 48, 48)
NHUB.BackgroundTransparency = 0.9999
NHUB.Size = UDim2.new(0.9, 0, 0, 30)
NHUB.Position = UDim2.new(-0.0007722, 0, 0.0343558267, 0)
NHUB.Font = Enum.Font.GothamBlack
NHUB.Text = "N1NJ4🎮" 
NHUB.TextColor3 = Color3.fromRGB(255, 255, 255)
NHUB.TextSize = 20
NHUB.TextWrapped = true
NHUB.Draggable = true
NHUB.TextXAlignment = Enum.TextXAlignment.Left

UICorner.Parent = N1NJ4

local function animateGHUB()
    local r = {
        Color3.fromRGB(254, 0, 0),
        Color3.fromRGB(255, 127, 0),
        Color3.fromRGB(255, 221, 1),
        Color3.fromRGB(0, 200, 0),
        Color3.fromRGB(0, 160, 199),
        Color3.fromRGB(0, 55, 230),
        Color3.fromRGB(129, 16, 210),
        Color3.fromRGB(255, 221, 4),
        Color3.fromRGB(0, 170, 199),
        
    }
    local info = TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, 0, false, 0)

    local i = 1
    while true do
        local tween = game:GetService("TweenService"):Create(GHUB, info, { TextColor3 = r[i] })
        tween:Play()
        tween.Completed:Wait()
        wait(0.1)
        i = (i % #r) + 1
    end
end

coroutine.wrap(animateGHUB)()

game:GetService("StarterGui"):SetCore("SendNotification",{
Title = "N1NJ4🎮",
Text = "discord.gg/345NFC9mQm",
})

getgenv().HitboxSize = 10
getgenv().HitboxTransparency = 0.4

getgenv().HitboxStatus = false
getgenv().TeamCheck = false


local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Xenon-UI-coder/N1NJ4-Project/main/N1NJ4_V3.lua"))()