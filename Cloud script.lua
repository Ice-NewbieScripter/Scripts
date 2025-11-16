for _,v in pairs(game.CoreGui:GetChildren()) do
    if v.Name == "Cloudscripts" then
        v:Destroy()
    end
end

local Cloudscripts = Instance.new("ScreenGui")
local Bckg = Instance.new("Frame")
local Main = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local ScrollingFrame = Instance.new("ScrollingFrame")
local UIListLayout = Instance.new("UIListLayout")
local UIPadding = Instance.new("UIPadding")
local Title = Instance.new("TextLabel")
local ScriptMain = Instance.new("Frame")
local Script = Instance.new("ImageLabel")
local Blur = Instance.new("Frame")
local UICorner_2 = Instance.new("UICorner")
local TextLabel = Instance.new("TextLabel")
local TextLabel_2 = Instance.new("TextLabel")
local UICorner_3 = Instance.new("UICorner")
local Execute = Instance.new("TextButton")
local UICorner_4 = Instance.new("UICorner")

--Properties:

Cloudscripts.Name = "Cloudscripts"
Cloudscripts.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
Cloudscripts.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Bckg.Name = "Bckg"
Bckg.Parent = Cloudscripts
Bckg.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Bckg.BackgroundTransparency = 1.000
Bckg.Size = UDim2.new(0, 1010, 0, 775)

Main.Name = "Main"
Main.Parent = Bckg
Main.BackgroundColor3 = Color3.fromRGB(37, 37, 37)
Main.Position = UDim2.new(0.37431702, 0, 0.198424339, 0)
Main.Size = UDim2.new(0, 253, 0, 467)

UICorner.CornerRadius = UDim.new(0, 5)
UICorner.Parent = Main

ScrollingFrame.Parent = Main
ScrollingFrame.Active = true
ScrollingFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ScrollingFrame.BackgroundTransparency = 1.000
ScrollingFrame.BorderSizePixel = 0
ScrollingFrame.Position = UDim2.new(0.0434782654, 0, 0.104925051, 0)
ScrollingFrame.Size = UDim2.new(0, 230, 0, 410)
ScrollingFrame.ScrollBarThickness = 2

UIListLayout.Parent = ScrollingFrame
UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Padding = UDim.new(0, 7)

UIPadding.Parent = ScrollingFrame
UIPadding.PaddingTop = UDim.new(0, 5)

Title.Name = "Title"
Title.Parent = Main
Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title.BackgroundTransparency = 1.000
Title.Position = UDim2.new(0.0671936795, 0, 0.0385438949, 0)
Title.Size = UDim2.new(0, 105, 0, 18)
Title.Font = Enum.Font.GothamBold
Title.Text = "Cloud Scripts (K)"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextSize = 16.000
Title.TextXAlignment = Enum.TextXAlignment.Left

ScriptMain.Name = "ScriptMain"
ScriptMain.Parent = Main
ScriptMain.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ScriptMain.BackgroundTransparency = 1.000
ScriptMain.Position = UDim2.new(0.0601659752, 0, 0, 0)
ScriptMain.Size = UDim2.new(0, 212, 0, 141)
ScriptMain.Visible = false
ScriptMain.ZIndex = 5

Script.Name = "Script"
Script.Parent = ScriptMain
Script.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Script.Position = UDim2.new(-0.0023584906, 0, -0.00813001301, 0)
Script.Size = UDim2.new(0, 213, 0, 141)
Script.Image = "https://www.roblox.com/asset-thumbnail/image?assetId=54865335&width=768&height=432&format=png"

Blur.Name = "Blur"
Blur.Parent = Script
Blur.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Blur.BackgroundTransparency = 0.300
Blur.Size = UDim2.new(0, 213, 0, 141)

UICorner_2.CornerRadius = UDim.new(0, 5)
UICorner_2.Parent = Blur

TextLabel.Parent = Script
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.Position = UDim2.new(0.0469483584, 0, 0.13636364, 0)
TextLabel.Size = UDim2.new(0, 119, 0, 11)
TextLabel.Font = Enum.Font.GothamBlack
TextLabel.Text = "VIEWS: 3.1K"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 13.000
TextLabel.TextTransparency = 0.460
TextLabel.TextXAlignment = Enum.TextXAlignment.Left

TextLabel_2.Parent = Script
TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.BackgroundTransparency = 1.000
TextLabel_2.Position = UDim2.new(0.0469483584, 0, 0.219696954, 0)
TextLabel_2.Size = UDim2.new(0, 193, 0, 17)
TextLabel_2.Font = Enum.Font.GothamBlack
TextLabel_2.Text = "NAME: Autofarm"
TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.TextSize = 13.000
TextLabel_2.TextTransparency = 0.460
TextLabel_2.TextWrapped = true
TextLabel_2.TextXAlignment = Enum.TextXAlignment.Left
TextLabel_2.TextYAlignment = Enum.TextYAlignment.Top

UICorner_3.CornerRadius = UDim.new(0, 5)
UICorner_3.Parent = Script

Execute.Name = "Execute"
Execute.Parent = Script
Execute.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
Execute.Position = UDim2.new(0.732394338, 0, 0.773049653, 0)
Execute.Size = UDim2.new(0, 57, 0, 32)
Execute.AutoButtonColor = false
Execute.Font = Enum.Font.GothamSemibold
Execute.Text = "Execute"
Execute.TextColor3 = Color3.fromRGB(255, 255, 255)
Execute.TextSize = 11.000
Execute.TextTransparency = 0.150

UICorner_4.CornerRadius = UDim.new(0, 5)
UICorner_4.Parent = Execute

local plr = game:GetService("Players").LocalPlayer
local mouse = plr:GetMouse()

mouse.KeyDown:connect(function(key)
    if key == "k" then
        if Bckg.Visible == true then
            Bckg.Visible = false
        else
            Bckg.Visible = true
        end
    end
end)

Cloudscripts.Parent = game.CoreGui
Bckg.Size = UDim2.new(1, 0, 1, 0)
Bckg.Position = UDim2.fromScale(0.5, 0.5)
Bckg.AnchorPoint = Vector2.new(0.5, 0.5)
Main.BackgroundTransparency = 1
Main.Active = true
Main.Draggable = true
Title.TextTransparency = 1
ScrollingFrame.ScrollBarImageColor3 = Color3.fromRGB(57, 57, 57)
TextLabel_2.AutomaticSize = Enum.AutomaticSize.Y

local tween1 = game:GetService("TweenService"):Create(Main,TweenInfo.new(0.4),{BackgroundTransparency=0})
local tween2 = game:GetService("TweenService"):Create(Title,TweenInfo.new(0.4),{TextTransparency=0})
tween1:Play() tween2:Play() tween2.Completed:Wait()

function updateCanvasSize(scroll, padding)
    local size = scroll.UIListLayout.AbsoluteContentSize;
    local padding = scroll.UIPadding.Parent.UIPadding;

    size = size + Vector2.new(0, padding.PaddingBottom.Offset + padding.PaddingTop.Offset);
    scroll.CanvasSize = UDim2.new(0, size.X, 0, size.Y)
end

function applyStroke(v, border)
    stroke = Instance.new('UIStroke')
    stroke.Color = Color3.fromHex("#414141")
	if border then
		stroke.ApplyStrokeMode = "Border"
	end
    stroke.Parent = v
end

local GetName = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId)
local name = game:GetService('HttpService'):UrlEncode(GetName.Name)
for _, v in pairs(game:GetService("HttpService"):JSONDecode(game:HttpGetAsync("https://www.scriptblox.com/api/script/search?q=" .. name))) do
    for _,v in pairs(v['scripts']) do
        if game.CoreGui:FindFirstChild('Cloudscripts') then
            local a = game.CoreGui.Cloudscripts.Bckg.Main.ScriptMain:Clone()
            a.Script.Image = ("https://www.roblox.com/asset-thumbnail/image?assetId=%s&width=768&height=432&format=png"):format(game.PlaceId)
            a.Script:FindFirstChild('TextLabel').Text = "VIEWS: " .. v['views']
            a.Script:FindFirstChild('TextLabel').Name = 'Title'
            a.Script:FindFirstChild('TextLabel').Text = "NAME: " .. v['title'] .. ' / ' .. v['game']['name']
            applyStroke(a.Script)
            applyStroke(a.Script.Execute, true)
            a.Parent = game.CoreGui.Cloudscripts.Bckg.Main.ScrollingFrame
            a.Visible = true
            a.Script.Execute.MouseButton1Click:Connect(function()
                loadstring(v['script'])()
            end)
        end
    end
    updateCanvasSize(game.CoreGui.Cloudscripts.Bckg.Main.ScrollingFrame)
end