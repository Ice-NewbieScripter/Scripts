-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local Frame = Instance.new("Frame")
local UICorner_2 = Instance.new("UICorner")
local Loader_Frame = Instance.new("Frame")
local UICorner_3 = Instance.new("UICorner")
local TextLabel = Instance.new("TextLabel")
local textloading = Instance.new("TextLabel")
local textloading_2 = Instance.new("TextLabel")
local TextButton = Instance.new("TextButton")
local UICorner_4 = Instance.new("UICorner")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

MainFrame.Name = "MainFrame"
MainFrame.Parent = ScreenGui
MainFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
MainFrame.BorderColor3 = Color3.fromRGB(0, 0, 255)
MainFrame.BorderSizePixel = 0
MainFrame.Position = UDim2.new(0.5, -250, 0.5, -125) -- Centered Position
MainFrame.Size = UDim2.new(0, 500, 0, 250)

UICorner.Parent = MainFrame

Frame.Parent = MainFrame
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.BorderColor3 = Color3.fromRGB(0, 0, 255)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.150000006, 0, 0.723999977, 0)
Frame.Size = UDim2.new(0, 350, 0, 15)

UICorner_2.Parent = Frame

Loader_Frame.Name = "Loader_Frame"
Loader_Frame.Parent = MainFrame
Loader_Frame.BackgroundColor3 = Color3.fromRGB(0, 0, 127)
Loader_Frame.BorderColor3 = Color3.fromRGB(0, 0, 255)
Loader_Frame.BorderSizePixel = 0
Loader_Frame.Position = UDim2.new(0.150000006, 0, 0.723999977, 0)
Loader_Frame.Size = UDim2.new(0, 0, 0, 15)

UICorner_3.Parent = Loader_Frame

TextLabel.Parent = MainFrame
TextLabel.BackgroundColor3 = Color3.fromRGB(100, 0, 255)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 255)
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0, 0, 0.184, 0)
TextLabel.Size = UDim2.new(0, 500, 0, 50)
TextLabel.Font = Enum.Font.GothamBlack
TextLabel.Text = "Welcome "..Game.Players.LocalPlayer.Name.." To N1NJ4 FE Gui"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 16.000

textloading.Name = "textloading"
textloading.Parent = MainFrame
textloading.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
textloading.BorderColor3 = Color3.fromRGB(0, 0, 255)
textloading.BorderSizePixel = 0
textloading.Position = UDim2.new(0.300000012, 0, 0.639999986, 0)
textloading.Size = UDim2.new(0, 200, 0, 15)
textloading.Font = Enum.Font.FredokaOne
textloading.Text = ""
textloading.TextColor3 = Color3.fromRGB(255, 255, 255)
textloading.TextSize = 14.000

textloading_2.Name = "textloading_2"
textloading_2.Parent = MainFrame
textloading_2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
textloading_2.BorderColor3 = Color3.fromRGB(0, 0, 255)
textloading_2.BorderSizePixel = 0
textloading_2.Position = UDim2.new(0.648000002, 0, 0.864000022, 0)
textloading_2.Size = UDim2.new(0, 95, 0, 15)
textloading_2.Font = Enum.Font.FredokaOne
textloading_2.Text = ""
textloading_2.TextColor3 = Color3.fromRGB(255, 255, 255)
textloading_2.TextSize = 14.000

TextButton.Parent = MainFrame
TextButton.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
TextButton.BorderColor3 = Color3.fromRGB(0, 0, 255)
TextButton.BorderSizePixel = 0
TextButton.Position = UDim2.new(0.861999989, 0, 0.864000022, 0)
TextButton.Size = UDim2.new(0, 55, 0, 15)
TextButton.Font = Enum.Font.Gotham
TextButton.Text = "skip"
TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton.TextSize = 14.000
TextButton.Visible = false
TextButton.MouseButton1Click:connect(function()
    ScreenGui:Destroy()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Xenon-UI-coder/N1NJ4-Project/main/N1NJ4%20Setting.lua"))()
end)

UICorner_4.Parent = TextButton


local function MNQEF_fake_script()
	local script = Instance.new('LocalScript', MainFrame)
	wait(1)
	script.Parent:TweenSize(UDim2.new(0, 500, 0, 250), "Out", "Quad", 0.5, true)
	wait(0.5)
	script.Parent.Loader_Frame:TweenSize(UDim2.new(0, 0, 0, 15), "Out", "Quad", 0.5, true)
	script.Parent.textloading.Text = "LOADING."
	wait(1)
	script.Parent.Loader_Frame:TweenSize(UDim2.new(0, 0, 0, 15), "Out", "Quad", 0.5, true)
	script.Parent.textloading.Text = "LOADING.."
	script.Parent.textloading_2.Text = "SKIP - 5."
	wait(1)
	script.Parent.Loader_Frame:TweenSize(UDim2.new(0, 60, 0, 15), "Out", "Quad", 0.5, true)
	script.Parent.textloading.Text = "LOADING..."
	script.Parent.textloading_2.Text = "SKIP - 4."
	wait(1.5)
	script.Parent.Loader_Frame:TweenSize(UDim2.new(0, 90, 0, 15), "Out", "Quad", 0.5, true)
	script.Parent.textloading.Text = "LOADING."
	script.Parent.textloading_2.Text = "SKIP - 3."
	wait(1.5)
	script.Parent.Loader_Frame:TweenSize(UDim2.new(0, 120, 0, 15), "Out", "Quad", 0.5, true)
	script.Parent.textloading.Text = "LOADING.."
	script.Parent.textloading_2.Text = "SKIP - 2."
	wait(1.5)
	script.Parent.Loader_Frame:TweenSize(UDim2.new(0, 140, 0, 15), "Out", "Quad", 0.5, true)
	script.Parent.textloading.Text = "LOADING..."
	script.Parent.textloading_2.Text = "SKIP - 1."
	wait(1.5)
    TextButton.Visible = true
	script.Parent.Loader_Frame:TweenSize(UDim2.new(0, 160, 0, 15), "Out", "Quad", 0.5, true)
	script.Parent.textloading.Text = "LOADING."
	script.Parent.textloading_2.Text = ""
	wait(1.5)
	script.Parent.Loader_Frame:TweenSize(UDim2.new(0, 190, 0, 15), "Out", "Quad", 0.5, true)
	script.Parent.textloading.Text = "LOADING.."
	wait(1.5)
	script.Parent.Loader_Frame:TweenSize(UDim2.new(0, 211, 0, 15), "Out", "Quad", 0.5, true)
	script.Parent.textloading.Text = "LOADING..."
	wait(1.5)
	script.Parent.Loader_Frame:TweenSize(UDim2.new(0, 224, 0, 15), "Out", "Quad", 0.5, true)
	script.Parent.textloading.Text = "LOADING."
	wait(1.5)
	script.Parent.Loader_Frame:TweenSize(UDim2.new(0, 231, 0, 15), "Out", "Quad", 0.5, true)
	script.Parent.textloading.Text = "LOADING.."
	wait(1.5)
	script.Parent.Loader_Frame:TweenSize(UDim2.new(0, 239, 0, 15), "Out", "Quad", 0.5, true)
	script.Parent.textloading.Text = "LOADING..."
	wait(1.5)
	script.Parent.Loader_Frame:TweenSize(UDim2.new(0, 251, 0, 15), "Out", "Quad", 0.5, true)
	script.Parent.textloading.Text = "LOADING."
	wait(1.5)
	script.Parent.Loader_Frame:TweenSize(UDim2.new(0, 251, 0, 15), "Out", "Quad", 0.5, true)
	script.Parent.textloading.Text = "LOADING.."
	wait(1.5)
	script.Parent.Loader_Frame:TweenSize(UDim2.new(0, 272, 0, 15), "Out", "Quad", 0.5, true)
	script.Parent.textloading.Text = "LOADING..."
	wait(1.5)
	script.Parent.Loader_Frame:TweenSize(UDim2.new(0, 294, 0, 15), "Out", "Quad", 0.5, true)
	script.Parent.textloading.Text = "LOADING."
	wait(1.5)
	script.Parent.Loader_Frame:TweenSize(UDim2.new(0, 345, 0, 15), "Out", "Quad", 0.5, true)
	script.Parent.textloading.Text = "LOADING.."
	wait(1.5)
	script.Parent.Loader_Frame:TweenSize(UDim2.new(0, 350, 0, 15), "Out", "Quad", 0.5, true)
	script.Parent.textloading.Text = "LOADING..."
	wait(1.5)
	ScreenGui:Destroy()
	
	loadstring(game:HttpGet("https://raw.githubusercontent.com/Xenon-UI-coder/N1NJ4-Project/main/N1NJ4%20Setting.lua"))()

end
coroutine.wrap(MNQEF_fake_script)()