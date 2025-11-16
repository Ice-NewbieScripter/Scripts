-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local MainFrame = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local ImageLabel = Instance.new("ImageLabel")
local Executor = Instance.new("TextButton")
local ExecutorFrame = Instance.new("Frame")
local FrameK = Instance.new("Frame")
local TextBox = Instance.new("TextBox")
local File = Instance.new("TextButton")
local Clear = Instance.new("TextButton")
local Execute = Instance.new("TextButton")
local Outputithink = Instance.new("TextBox")
local Settings = Instance.new("TextButton")
local close = Instance.new("TextButton")
local bigger_dontwork = Instance.new("TextButton")
local Remove = Instance.new("TextButton")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.ResetOnSpawn = false

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.288775504, 0, 0.203557312, 0)
Frame.Size = UDim2.new(0, 490, 0, 27)
Frame.Active = true
Frame.Draggable = true

MainFrame.Name = "MainFrame"
MainFrame.Parent = Frame
MainFrame.BackgroundColor3 = Color3.fromRGB(234, 234, 234)
MainFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
MainFrame.BorderSizePixel = 0
MainFrame.Position = UDim2.new(0, 0, 1, 0)
MainFrame.Size = UDim2.new(0, 490, 0, 314)

Title.Name = "Title"
Title.Parent = Frame
Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title.BackgroundTransparency = 1.000
Title.BorderColor3 = Color3.fromRGB(0, 0, 0)
Title.BorderSizePixel = 0
Title.Position = UDim2.new(0.0279069766, 0, 0.148148149, 0)
Title.Size = UDim2.new(0, 122, 0, 21)
Title.Font = Enum.Font.SourceSans
Title.Text = "Dominant Executor"
Title.TextColor3 = Color3.fromRGB(0, 0, 0)
Title.TextSize = 14.000
Title.TextWrapped = true

ImageLabel.Parent = Frame
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageLabel.BorderSizePixel = 0
ImageLabel.Position = UDim2.new(0.0139534883, 0, 0.222222224, 0)
ImageLabel.Size = UDim2.new(0, 17, 0, 17)
ImageLabel.Image = "rbxassetid://86102463824382"

Executor.Name = "Executor"
Executor.Parent = Frame
Executor.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Executor.BorderColor3 = Color3.fromRGB(124, 124, 124)
Executor.Position = UDim2.new(0.0135440128, 0, 1.22222221, 0)
Executor.Size = UDim2.new(0, 45, 0, 17)
Executor.Font = Enum.Font.SourceSans
Executor.Text = "Executor"
Executor.TextColor3 = Color3.fromRGB(0, 0, 0)
Executor.TextSize = 14.000

ExecutorFrame.Name = "ExecutorFrame"
ExecutorFrame.Parent = Frame
ExecutorFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ExecutorFrame.BorderColor3 = Color3.fromRGB(124, 124, 124)
ExecutorFrame.Position = UDim2.new(0.0139535712, 0, 1.85185182, 0)
ExecutorFrame.Size = UDim2.new(0, 483, 0, 291)

FrameK.Name = "FrameK"
FrameK.Parent = ExecutorFrame
FrameK.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
FrameK.BorderColor3 = Color3.fromRGB(124, 124, 124)
FrameK.Position = UDim2.new(0.823655844, 0, 0.0526316017, 0)
FrameK.Size = UDim2.new(0, 75, 0, 262)

TextBox.Parent = ExecutorFrame
TextBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextBox.BorderColor3 = Color3.fromRGB(124, 124, 124)
TextBox.Position = UDim2.new(0.013507559, 0, 0.0523059741, 0)
TextBox.Size = UDim2.new(0, 385, 0, 155)
TextBox.ClearTextOnFocus = false
TextBox.Font = Enum.Font.SourceSans
TextBox.MultiLine = true
TextBox.Text = ""
TextBox.TextColor3 = Color3.fromRGB(0, 0, 0)
TextBox.TextSize = 14.000
TextBox.TextWrapped = true
TextBox.TextXAlignment = Enum.TextXAlignment.Left
TextBox.TextYAlignment = Enum.TextYAlignment.Top

File.Name = "File"
File.Parent = ExecutorFrame
File.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
File.BorderColor3 = Color3.fromRGB(124, 124, 124)
File.Position = UDim2.new(0.0150537631, 0, 0.853383482, 0)
File.Size = UDim2.new(0, 122, 0, 29)
File.Font = Enum.Font.SourceSans
File.Text = "File"
File.TextColor3 = Color3.fromRGB(0, 0, 0)
File.TextSize = 14.000

Clear.Name = "Clear"
Clear.Parent = ExecutorFrame
Clear.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Clear.BorderColor3 = Color3.fromRGB(124, 124, 124)
Clear.Position = UDim2.new(0.0150537631, 0, 0.731072545, 0)
Clear.Size = UDim2.new(0, 122, 0, 29)
Clear.Font = Enum.Font.SourceSans
Clear.Text = "Clear"
Clear.TextColor3 = Color3.fromRGB(0, 0, 0)
Clear.TextSize = 14.000

Execute.Name = "Execute"
Execute.Parent = ExecutorFrame
Execute.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Execute.BorderColor3 = Color3.fromRGB(124, 124, 124)
Execute.Position = UDim2.new(0.0150537631, 0, 0.607911825, 0)
Execute.Size = UDim2.new(0, 122, 0, 29)
Execute.Font = Enum.Font.SourceSans
Execute.Text = "Execute"
Execute.TextColor3 = Color3.fromRGB(0, 0, 0)
Execute.TextSize = 14.000

Outputithink.Name = "Outputithink"
Outputithink.Parent = ExecutorFrame
Outputithink.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Outputithink.BorderColor3 = Color3.fromRGB(124, 124, 124)
Outputithink.Position = UDim2.new(0.29192546, 0, 0.604811013, 0)
Outputithink.Size = UDim2.new(0, 250, 0, 101)
Outputithink.Font = Enum.Font.SourceSans
Outputithink.Text = ""
Outputithink.TextColor3 = Color3.fromRGB(0, 0, 0)
Outputithink.TextSize = 14.000
Outputithink.TextXAlignment = Enum.TextXAlignment.Left
Outputithink.TextYAlignment = Enum.TextYAlignment.Top

Settings.Name = "Settings"
Settings.Parent = Frame
Settings.BackgroundColor3 = Color3.fromRGB(218, 218, 218)
Settings.BorderColor3 = Color3.fromRGB(124, 124, 124)
Settings.Position = UDim2.new(0.105380744, 0, 1.22222221, 0)
Settings.Size = UDim2.new(0, 45, 0, 17)
Settings.Font = Enum.Font.SourceSans
Settings.Text = "Settings"
Settings.TextColor3 = Color3.fromRGB(0, 0, 0)
Settings.TextSize = 14.000

close.Name = "close"
close.Parent = Frame
close.BackgroundColor3 = Color3.fromRGB