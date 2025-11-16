local gui = Instance.new("ScreenGui")
gui.Name = "Young shelon gui"
gui.Parent = game.CoreGui

local Ui = Instance.new("Frame")
Ui.Size = UDim2.new(0.0, 489, 0.0, 300)
Ui.Position = UDim2.new(0.0, 0, 0.0, 0)
Ui.BackgroundColor3 = Color3.new(1, 1, 1)
Ui.BorderColor3 = Color3.new(0, 0, 0)
Ui.BorderSizePixel = 0
Ui.Active = true
Ui.BackgroundTransparency = 0.6
Ui.Draggable = true
Ui.Parent = gui

local Image = Instance.new("ImageLabel")
Image.Size = UDim2.new(1.004, 0, 1.0, 0)
Image.Position = UDim2.new(0.0, 0, 0.0, 0)
Image.BackgroundColor3 = Color3.new(0, 0, 0)
Image.ImageColor3 = Color3.new(1, 1, 1)
Image.Image = "rbxassetid://14902240136"
Image.ImageTransparency = 0.4
Image.Parent = Ui

Image.BackgroundTransparency = 1

local Text = Instance.new("TextLabel")
Text.Size = UDim2.new(1.0, 0, 0.1, 20)
Text.Position = UDim2.new(0.0, 0, 0.0, 0)
Text.BackgroundColor3 = Color3.new(0, 0, 0)
Text.BorderColor3 = Color3.new(0, 0, 0)
Text.BorderSizePixel = 1
Text.Text = "yong Shelon gui"
Text.BackgroundTransparency = 1
Text.TextColor3 = Color3.new(0, 0, 0)
Text.Font = Enum.Font.Highway
Text.Parent = Image
Text.TextSize = 30

local TextBox = Instance.new("TextBox")
TextBox.Size = UDim2.new(0.6, 29, 0.7, 7)
TextBox.Position = UDim2.new(0.0, 4, 0.0, 45)
TextBox.BackgroundColor3 = Color3.new(1, 1, 1)
TextBox.BorderColor3 = Color3.new(0, 0, 0)
TextBox.BorderSizePixel = 0
TextBox.Text = ""
TextBox.PlaceholderText = "Execute His Thoughts"
TextBox.PlaceholderColor3 = Color3.fromRGB(0, 0, 0)
TextBox.TextColor3 = Color3.new(0, 0, 0)
TextBox.BackgroundTransparency = 0.4
TextBox.Font = Enum.Font.SpecialElite
TextBox.TextSize = 18
TextBox.Parent = Image
TextBox.TextYAlignment = Enum.TextYAlignment.Top
TextBox.TextXAlignment = Enum.TextXAlignment.Left
TextBox.ClearTextOnFocus = failed
TextBox.MultiLine = true
TextBox.TextWrapped = true

local Exe = Instance.new("TextButton")
Exe.Size = UDim2.new(0.1, 22, 0.1, 0)
Exe.Position = UDim2.new(0.0, 4, 0.0, 266)
Exe.BackgroundColor3 = Color3.new(1, 1, 1)
Exe.BorderColor3 = Color3.new(0, 0, 0)
Exe.BorderSizePixel = 0
Exe.Text = "exe"
Exe.BackgroundTransparency = 0.1
Exe.TextColor3 = Color3.new(0, 0, 0)
Exe.Font = Enum.Font.Montserrat
Exe.Parent = Image
Exe.TextSize = 21
Exe.MouseButton1Click:Connect(function()
assert(loadstring(TextBox.Text))()
end)

local clea = Instance.new("TextButton")
clea.Size = UDim2.new(0.1, 22, 0.1, 0)
clea.Position = UDim2.new(0.1, 31, 0.0, 266)
clea.BackgroundColor3 = Color3.new(1, 1, 1)
clea.BorderColor3 = Color3.new(0, 0, 0)
clea.BorderSizePixel = 0
clea.Text = "clear"
clea.BackgroundTransparency = 0.1
clea.TextColor3 = Color3.new(0, 0, 0)
clea.Font = Enum.Font.Montserrat
clea.Parent = Image
clea.TextSize = 21
clea.MouseButton1Click:Connect(function()
TextBox.Text = ""
end)

local Re = Instance.new("TextButton")
Re.Size = UDim2.new(0.1, 22, 0.1, 0)
Re.Position = UDim2.new(0.3, 8, 0.0, 266)
Re.BackgroundColor3 = Color3.new(1, 1, 1)
Re.BorderColor3 = Color3.new(0, 0, 0)
Re.BorderSizePixel = 0
Re.Text = "R6"
Re.BackgroundTransparency = 0.1
Re.TextColor3 = Color3.new(0, 0, 0)
Re.Font = Enum.Font.Montserrat
Re.Parent = Image
Re.TextSize = 21
Re.MouseButton1Click:Connect(function()
loadstring(game:HttpGet("https://pastebin.com/raw/9BFcHqfK"))("Copyright ERROR_CODE ECCS Co")
end)

local R6 = Instance.new("TextButton")
R6.Size = UDim2.new(0.1, 22, 0.1, 0)
R6.Position = UDim2.new(0.4, 35, 0.0, 266)
R6.BackgroundColor3 = Color3.new(1,1, 1)
R6.BorderColor3 = Color3.new(0, 0, 0)
R6.BorderSizePixel = 0
R6.Text = "Re"
R6.BackgroundTransparency = 0.1
R6.TextColor3 = Color3.new(0, 0, 0)
R6.Font = Enum.Font.Montserrat
R6.Parent = Image
R6.TextSize = 23
R6.MouseButton1Click:Connect(function()
if game.Players.LocalPlayer.Character then
game.Players.LocalPlayer.Character.Humanoid.Health = 0
end
end)

local Scr = Instance.new("ScrollingFrame")
Scr.Size = UDim2.new(0.3, 7, 0.5, 39)
Scr.Position = UDim2.new(0.0, 332, 0.0, 72)
Scr.BackgroundColor3 = Color3.new(1, 1, 1)
Scr.BorderColor3 = Color3.new(0, 0, 0)
Scr.BorderSizePixel = 0
Scr.Parent = Image
Scr.ScrollBarThickness = 0

Scr.BackgroundTransparency = 1

local Jojo = Instance.new("TextButton")
Jojo.Size = UDim2.new(0.9, 19, 0.0, 25)
Jojo.Position = UDim2.new(0.0, 0, 0.0, 0)
Jojo.BackgroundColor3 = Color3.new(1, 1, 1)
Jojo.BorderColor3 = Color3.new(0, 0, 0)
Jojo.BorderSizePixel = 0
Jojo.Text = "Goku"
Jojo.BackgroundTransparency = 0.3
Jojo.TextColor3 = Color3.new(0, 0, 0)
Jojo.Font = Enum.Font.Montserrat
Jojo.Parent = Scr
Jojo.TextSize = 19

local Deku = Instance.new("TextButton")
Deku.Size = UDim2.new(0.9, 19, 0.0, 25)
Deku.Position = UDim2.new(0.0, 0, 0.0, 29)
Deku.BackgroundColor3 = Color3.new(1, 1, 1)
Deku.BorderColor3 = Color3.new(0, 0, 0)
Deku.BorderSizePixel = 0
Deku.Text = "Deku"
Deku.BackgroundTransparency = 0.3
Deku.TextColor3 = Color3.new(0, 0, 0)
Deku.Font = Enum.Font.Montserrat
Deku.Parent = Scr
Deku.TextSize = 19

local KJ = Instance.new("TextButton")
KJ.Size = UDim2.new(0.9, 19, 0.0, 25)
KJ.Position = UDim2.new(0.0, 0, 0.0, 58)
KJ.BackgroundColor3 = Color3.new(1, 1, 1)
KJ.BorderColor3 = Color3.new(0, 0, 0)
KJ.BorderSizePixel = 0
KJ.Text = "KJ"
KJ.BackgroundTransparency = 0.3
KJ.TextColor3 = Color3.new(0, 0, 0)
KJ.Font = Enum.Font.Montserrat
KJ.Parent = Scr
KJ.TextSize = 19

local Minos = Instance.new("TextButton")
Minos.Size = UDim2.new(0.9, 19, 0.0, 25)
Minos.Position = UDim2.new(0.0, 0, 0.0, 88)
Minos.BackgroundColor3 = Color3.new(1, 1, 1)
Minos.BorderColor3 = Color3.new(0, 0, 0)
Minos.BorderSizePixel = 0
Minos.Text = "Minos"
Minos.BackgroundTransparency = 0.3
Minos.TextColor3 = Color3.new(0, 0, 0) 
Minos.Font = Enum.Font.Montserrat
Minos.Parent = Scr
Minos.TextSize = 19

local Jojo1 = Instance.new("TextButton")
Jojo1.Size = UDim2.new(0.9, 19, 0.0, 25)
Jojo1.Position = UDim2.new(0.0, 0, 0.0, 118)
Jojo1.BackgroundColor3 = Color3.new(1, 1, 1)
Jojo1.BorderColor3 = Color3.new(0, 0, 0)
Jojo1.BorderSizePixel = 0
Jojo1.Text = "Jojo"
Jojo1.BackgroundTransparency = 0.3
Jojo1.TextColor3 = Color3.new(0, 0, 0)
Jojo1.Font = Enum.Font.Montserrat
Jojo1.Parent = Scr
Jojo1.TextSize = 19

local Cashx = Instance.new("TextButton")
Cashx.Size = UDim2.new(0.9, 19, 0.0, 25)
Cashx.Position = UDim2.new(0.0, 0, 0.0, 148)
Cashx.BackgroundColor3 = Color3.new(1, 1, 1)
Cashx.BorderColor3 = Color3.new(0, 0, 0)
Cashx.BorderSizePixel = 0
Cashx.Text = "Chad"
Cashx.BackgroundTransparency = 0.3
Cashx.TextColor3 = Color3.new(0, 0, 0)
Cashx.Font = Enum.Font.Montserrat
Cashx.Parent = Scr
Cashx.TextSize = 19

local Gojo = Instance.new("TextButton")
Gojo.Size = UDim2.new(0.9, 19, 0.0, 25)
Gojo.Position = UDim2.new(0.0, 0, 0.0, 178)
Gojo.BackgroundColor3 = Color3.new(1, 1, 1)
Gojo.BorderColor3 = Color3.new(0, 0, 0)
Gojo.BorderSizePixel = 0
Gojo.Text = "Gojo"
Gojo.BackgroundTransparency = 0.3
Gojo.TextColor3 = Color3.new(0, 0, 0)
Gojo.Font = Enum.Font.Montserrat
Gojo.Parent = Scr
Gojo.TextSize = 19

local sec = Instance.new("TextBox")
sec.Size = UDim2.new(0.3, 7, 0.0, 25)
sec.Position = UDim2.new(0.0, 332, 0.0, 45)
sec.BackgroundColor3 = Color3.new(1, 1, 1)
sec.BorderColor3 = Color3.new(0, 0, 0)
sec.BorderSizePixel = 0
sec.Text = ""
sec.TextColor3 = Color3.new(0, 0, 0)
sec.BackgroundTransparency = 0.3
sec.Font = Enum.Font.Montserrat
sec.TextSize = 15
sec.Parent = Image
sec.PlaceholderText = "search"
sec.PlaceholderColor3 = Color3.fromRGB(0, 0, 0)
sec.TextSize = 21

local command = Instance.new("TextBox")
command.Size = UDim2.new(0.3, 29, 0.1, 0)
command.Position = UDim2.new(0.5, 64, 0.0, 266)
command.BackgroundColor3 = Color3.new(1, 1, 1)
command.BorderColor3 = Color3.new(0, 0, 0)
command.BorderSizePixel = 0
command.Text = ""
command.TextColor3 = Color3.new(0, 0, 0)
command.BackgroundTransparency = 0.3
command.Font = Enum.Font.Code
command.TextSize = 15
command.Parent = Image
command.PlaceholderText = "command bar"
command.PlaceholderColor3 = Color3.fromRGB(0, 0, 0)
command.TextSize = 21

local lel = Instance.new("ImageLabel")
lel.Size = UDim2.new(0.0, 100, 0.0, 100)
lel.Position = UDim2.new(-0.127000004, 0, 0.407999992, 0)
lel.BackgroundColor3 = Color3.new(0, 0, 0)
lel.ImageColor3 = Color3.new(1, 1, 1)
lel.Image = "rbxassetid://146470272"
lel.ImageTransparency = 0
lel.Parent = gui

lel.BackgroundTransparency = 1 

local Ring = Instance.new("ImageLabel")
Ring.Size = UDim2.new(1.0, 0, 1.0, 0)
Ring.Position = UDim2.new(0.0, 0, 0.0, 0)
Ring.BackgroundColor3 = Color3.new(0, 0, 0)
Ring.ImageColor3 = Color3.new(1, 1, 1)
Ring.Image = "rbxassetid://7102118272"
Ring.ImageTransparency = 0
Ring.Parent = lel

Ring.BackgroundTransparency = 1

local Orbit = Instance.new("ImageLabel")
Orbit.Size = UDim2.new(0.0, 21, 0.0, 21)
Orbit.Position = UDim2.new(0.0, 0, 0.0, 10)
Orbit.BackgroundColor3 = Color3.new(0, 0, 0)
Orbit.ImageColor3 = Color3.new(1, 1, 1)
Orbit.Image = "rbxassetid://15654878092"
Orbit.ImageTransparency = 0
Orbit.Parent = Ring

Orbit.BackgroundTransparency = 1

lel:TweenPosition(UDim2.new(0.458, 0, 0.408, 0), "Out", "Linear", 0.4, false)
wait(3)
lel:TweenPosition(UDim2.new(0.0, 9, 0.0, 190), "Out", "Sine", 0.7, false)

while wait() do
Ring.Rotation = Ring.Rotation + 1
Orbit.Rotation = Orbit.Rotation - 1
end