      		local gui = Instance.new("ScreenGui")
gui.Name = "Polaria 1.5"
gui.Parent = game.CoreGui

local Ui = Instance.new("Frame")
Ui.Size = UDim2.new(0.6, 12, 0.9, 69)
Ui.Position = UDim2.new(0.2, 0, 0.0, 0)
Ui.BackgroundColor3 = Color3.new(0, 0, 0)
Ui.BorderColor3 = Color3.new(0.5, 0, 1.0, 0)
Ui.BorderSizePixel = 3
Ui.Active = true
Ui.BackgroundTransparency = 0 
Ui.Draggable = true
Ui.Parent = gui

local TextLabel = Instance.new("TextLabel")
TextLabel.Size = UDim2.new(0.9, 45, 0.0, 26)
TextLabel.Position = UDim2.new(0.0, 0, 0.0, 0)
TextLabel.BackgroundColor3 = Color3.new(0, 0, 0)
TextLabel.BorderColor3 = Color3.new(0.5, 0, 1.0, 0)
TextLabel.BorderSizePixel = 3
TextLabel.Text = ""
TextLabel.BackgroundTransparency = 0 
TextLabel.TextColor3 = Color3.new(1, 1, 1)
TextLabel.Font = Enum.Font.Code
TextLabel.Parent = Ui
TextLabel.TextSize = 19

local text1 = Instance.new("TextLabel")
text1.Size = UDim2.new(0.1, 34, 0.2, 0)
text1.Position = UDim2.new(0.0, 0, 0.3, 3)
text1.BackgroundColor3 = Color3.new(0, 0, 0)
text1.BorderColor3 = Color3.new(0, 0, 0)
text1.BorderSizePixel = 0
text1.Text = "POLARIA"
text1.BackgroundTransparency = 0 
text1.TextColor3 = Color3.new(255, 255, 255)
text1.Font = Enum.Font.Code
text1.Parent = TextLabel
text1.TextSize = 19

local X = Instance.new("TextButton")
X.Size = UDim2.new(0.0, 28, 0.9, 2)
X.Position = UDim2.new(0.9, 18, 0.0, 0)
X.BackgroundColor3 = Color3.new(0, 0, 0)
X.BorderColor3 = Color3.new(0.5, 0, 1.0, 0)
X.BorderSizePixel = 3
X.Text = "X"
X.BackgroundTransparency = 0 
X.TextColor3 = Color3.new(255, 255, 255)
X.Font = Enum.Font.Code
X.Parent = TextLabel
X.TextSize = 25

local idk = Instance.new("Frame")
idk.Size = UDim2.new(0.0, 28, 0.9, 2)
idk.Position = UDim2.new(0.8, 32, 0.0, 0)
idk.BackgroundColor3 = Color3.new(0, 0, 0)
idk.BorderColor3 = Color3.new(0.5, 0, 1.0)
idk.BorderSizePixel = 3
idk.Active = false
idk.BackgroundTransparency = 0 
idk.Draggable = true
idk.Parent = TextLabel

local so = Instance.new("Frame")
so.Size = UDim2.new(0.2, 7, 0.5, 1)
so.Position = UDim2.new(0.3, 0, 0.2, 0)
so.BackgroundColor3 = Color3.new(0, 0, 0)
so.BorderColor3 = Color3.new(1, 1, 1)
so.BorderSizePixel = 1
so.Active = false
so.BackgroundTransparency = 0 
so.Draggable = true
so.Parent = idk

local Kl = Instance.new("TextButton")
Kl.Size = UDim2.new(0.0, 28, 0.9, 2)
Kl.Position = UDim2.new(0.8, 2, 0.0, 0)
Kl.BackgroundColor3 = Color3.new(0, 0, 0)
Kl.BorderColor3 = Color3.new(0.5, 0, 1.0, 0)
Kl.BorderSizePixel = 3
Kl.Text = "⩢“"
Kl.BackgroundTransparency = 0 
Kl.TextColor3 = Color3.new(255, 255, 255)
Kl.Font = Enum.Font.Code
Kl.Parent = TextLabel
Kl.TextSize = 24

local Home = Instance.new("TextButton")
Home.Size = UDim2.new(0.2, 9, 0.0, 29)
Home.Position = UDim2.new(0.0, 0, 0.0, 29)
Home.BackgroundColor3 = Color3.new(0, 0, 0)
Home.BorderColor3 = Color3.new(0.5, 0, 1.0, 0)
Home.BorderSizePixel = 3
Home.Text = "Home"
Home.BackgroundTransparency = 0 
Home.TextColor3 = Color3.new(255, 255, 255)
Home.Font = Enum.Font.Code
Home.Parent = Ui
Home.TextSize = 20

local server = Instance.new("TextButton")
server.Size = UDim2.new(0.2, 25, 0.0, 29)
server.Position = UDim2.new(0.1, 58, 0.0, 29)
server.BackgroundColor3 = Color3.new(0, 0, 0)
server.BorderColor3 = Color3.new(0.5, 0, 1.0, 0)
server.BorderSizePixel = 3
server.Text = "Server/Local"
server.BackgroundTransparency = 0 
server.TextColor3 = Color3.new(255, 255, 255)
server.Font = Enum.Font.Code
server.Parent = Ui
server.TextSize = 18

local scr = Instance.new("TextButton")
scr.Size = UDim2.new(0.2, 0, 0.0, 29)
scr.Position = UDim2.new(0.3, 85, 0.0, 29)
scr.BackgroundColor3 = Color3.new(0, 0, 0)
scr.BorderColor3 = Color3.new(0.5, 0, 1.0, 0)
scr.BorderSizePixel = 3
scr.Text = "Scripts"
scr.BackgroundTransparency = 0 
scr.TextColor3 = Color3.new(255, 255, 255)
scr.Font = Enum.Font.Code
scr.Parent = Ui
scr.TextSize = 19

local exe = Instance.new("TextButton")
exe.Size = UDim2.new(0.1, 34, 0.0, 29)
exe.Position = UDim2.new(0.6, 39, 0.0, 29)
exe.BackgroundColor3 = Color3.new(0, 0, 0)
exe.BorderColor3 = Color3.new(0.5, 0, 1.0, 0)
exe.BorderSizePixel = 3
exe.Text = "Executor"
exe.BackgroundTransparency = 0 
exe.TextColor3 = Color3.new(255, 255, 255)
exe.Font = Enum.Font.Code
exe.Parent = Ui
exe.TextSize = 19

local out = Instance.new("TextButton")
out.Size = UDim2.new(0.1, 15, 0.0, 29)
out.Position = UDim2.new(0.8, 30, 0.0, 29)
out.BackgroundColor3 = Color3.new(0, 0, 0)
out.BorderColor3 = Color3.new(0.5, 0, 1.0)
out.BorderSizePixel = 3
out.Text = "Output"
out.BackgroundTransparency = 0 
out.TextColor3 = Color3.new(255, 255, 255)
out.Font = Enum.Font.Code
out.Parent = Ui
out.TextSize = 19

local Box = Instance.new("TextBox")
Box.Size = UDim2.new(0.9, 35, 0.6, 15)
Box.Position = UDim2.new(0.0, 5, 0.2, 0)
Box.BackgroundColor3 = Color3.new(0, 0, 0)
Box.BorderColor3 = Color3.new(0.5, 0, 1.0, 0)
Box.BorderSizePixel = 3
Box.Text = "Made by N1NJ4 Team"
Box.TextColor3 = Color3.new(1, 1, 1)
Box.BackgroundTransparency = 0
Box.Font = Enum.Font.Code
Box.TextSize = 15
Box.Parent = Ui
Box.TextYAlignment = Enum.TextYAlignment.Top
Box.TextXAlignment = Enum.TextXAlignment.Left
Box.ClearTextOnFocus = failed
Box.TextWrapped = true

local execu = Instance.new("TextButton")
execu.Size = UDim2.new(0.2, 0, 0.1, 0)
execu.Position = UDim2.new(0.0, 5, 0.8, 27)
execu.BackgroundColor3 = Color3.new(0, 0, 0)
execu.BorderColor3 = Color3.new(0.5, 0, 1.0, 0)
execu.BorderSizePixel = 3
execu.Text = "Execute"
execu.BackgroundTransparency = 0 
execu.TextColor3 = Color3.new(255, 255, 255)
execu.Font = Enum.Font.Code
execu.Parent = Ui
execu.TextSize = 19

local clea = Instance.new("TextButton")
clea.Size = UDim2.new(0.2, 0, 0.1, 0)
clea.Position = UDim2.new(0.2, 19, 0.8, 27)
clea.BackgroundColor3 = Color3.new(0, 0, 0)
clea.BorderColor3 = Color3.new(0.5, 0, 1.0, 0)
clea.BorderSizePixel = 3
clea.Text = "Clear"
clea.BackgroundTransparency = 0 
clea.TextColor3 = Color3.new(255, 255, 255)
clea.Font = Enum.Font.Code
clea.Parent = Ui
clea.TextSize = 19

local Oppk = Instance.new("TextLabel")
Oppk.Size = UDim2.new(0.2, 0, 0.1, 0)
Oppk.Position = UDim2.new(0.5, 9, 0.8, 27)
Oppk.BackgroundColor3 = Color3.new(0, 0, 0)
Oppk.BorderColor3 = Color3.new(0, 0, 0)
Oppk.BorderSizePixel = 0
Oppk.Text = "Execute on :"
Oppk.BackgroundTransparency = 1
Oppk.TextColor3 = Color3.new(255, 255, 255)
Oppk.Font = Enum.Font.Code
Oppk.Parent = Ui
Oppk.TextSize = 20

local ll = Instance.new("TextLabel")
ll.Size = UDim2.new(0.3, 0, 0.1, 0)
ll.Position = UDim2.new(0.7, 0, 0.8, 27)
ll.BackgroundColor3 = Color3.new(0, 0, 0)
ll.BorderColor3 = Color3.new(0, 0, 0)
ll.BorderSizePixel = 0
ll.Text = "Server"
ll.BackgroundTransparency = 1
ll.TextColor3 = Color3.new(0, 1, 0)
ll.Font = Enum.Font.Code
ll.Parent = Ui
ll.TextSize = 19

---Scripts:

X.MouseButton1Click:Connect(function()
Ui:remove()
end)

clea.MouseButton1Click:Connect(function()
Box.Text = ""
end)

execu.MouseButton1Click:Connect(function()
assert(loadstring(Box.Text))()
end)
  	