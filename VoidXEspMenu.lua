debugX = false

local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "🎮VoidX✨",
   Icon = 0, -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
   LoadingTitle = "Loading....",
   LoadingSubtitle = "by VoidX",
   Theme = "Default", -- Check https://docs.sirius.menu/rayfield/configuration/themes

   DisableRayfieldPrompts = false,
   DisableBuildWarnings = false, -- Prevents Rayfield from warning when the script has a version mismatch with the interface

   Discord = {
      Enabled = false, -- Prompt the user to join your Discord server if their executor supports it
      Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },

   KeySystem = true, -- Set this to true to use our key system
   KeySettings = {
      Title = "VoidX Keysystem",
      Subtitle = "Key System",
      Note = "Key is VoidX", -- Use this to tell the user how to get a key
      FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"VoidX"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})

_G.EspBox = false
_G.EspLine = false
_G.TeamCheck = false

local lplr = game.Players.LocalPlayer
local camera = workspace.CurrentCamera
local runService = game:GetService("RunService")

Plr = {}
for i,v in pairs(game.Players:GetPlayers()) do
    table.insert(Plr,v.Name)
end

local PlayersTab = Window:CreateTab("Player", 4483362458) -- Title, Image

local Section = PlayersTab:CreateSection("Player")

local Slider = PlayersTab:CreateSlider({
   Name = "WalkSpeed",
   Range = {16, 100},
   Increment = 1,
   Suffix = "WalkSpeed",
   CurrentValue = 16,
   Flag = "WalkSpeedhack", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
        
   end,
})

local Slider = PlayersTab:CreateSlider({
    Name = "JumpPower",
    Range = {50, 100},
    Increment = 1,
    Suffix = "JumpPower",
    CurrentValue = 50,
    Flag = "JumpPowerhack", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Value)
         game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
         
    end,
 })

local Section = PlayersTab:CreateSection("Esp")

local Toggle = PlayersTab:CreateToggle({
    Name = "EspBox",
    CurrentValue = false,
    Flag = "EspBox1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Value)
        _G.EspBox = Value
    end,
 })

local Toggle = PlayersTab:CreateToggle({
    Name = "Espline",
    CurrentValue = false,
    Flag = "Espline1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Value)
        _G.EspLine = Value
    end,
 })

local Toggle = PlayersTab:CreateToggle({
    Name = "EspTeamCheck",
    CurrentValue = false,
    Flag = "EspTeamCheck1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Value)
        _G.TeamCheck = Value
    end,
 })

local function createESP(v)
    if v == lplr then return end
    
    local Box = Drawing.new("Square")
    Box.Visible = false
    Box.Color = Color3.fromRGB(255, 255, 255)
    Box.Thickness = 1
    Box.Filled = false

    local function updateESP()
        runService.RenderStepped:Connect(function()
            if _G.EspBox and v.Character and v.Character:FindFirstChild("HumanoidRootPart") and v.Character:FindFirstChild("Humanoid").Health > 0 then
                local rootPart = v.Character.HumanoidRootPart
                local rootpos, onscreen = camera:WorldToViewportPoint(rootPart.Position)

                if onscreen then
                    local height = 3000 / rootpos.Z
                    local width = height / 1.8

                    Box.Size = Vector2.new(width, height)
                    Box.Position = Vector2.new(rootpos.X - width / 2, rootpos.Y - height / 2)
                    Box.Visible = not (_G.TeamCheck and v.TeamColor == lplr.TeamColor)
                else
                    Box.Visible = false
                end
            else
                Box.Visible = false
            end
        end)
    end

    updateESP()
end

local function createESPLine(v)
    if v == lplr then return end
    
    local Tracer = Drawing.new("Line")
    Tracer.Visible = false
    Tracer.Color = Color3.fromRGB(255, 255, 255)
    Tracer.Thickness = 1

    local function updateESPLine()
        runService.RenderStepped:Connect(function()
            if _G.EspLine and v.Character and v.Character:FindFirstChild("HumanoidRootPart") and v.Character:FindFirstChild("Humanoid").Health > 0 then
                local rootPart = v.Character.HumanoidRootPart
                local Vector, onscreen = camera:WorldToViewportPoint(rootPart.Position)
                
                if onscreen then
                    Tracer.From = Vector2.new(camera.ViewportSize.X / 2, camera.ViewportSize.Y)
                    Tracer.To = Vector2.new(Vector.X, Vector.Y)
                    Tracer.Visible = not (_G.TeamCheck and v.TeamColor == lplr.TeamColor)
                else
                    Tracer.Visible = false
                end
            else
                Tracer.Visible = false
            end
        end)
    end

    updateESPLine()
end

for _, v in pairs(game.Players:GetPlayers()) do
    createESP(v)
    createESPLine(v)
end

game.Players.PlayerAdded:Connect(function(v)
    createESP(v)
    createESPLine(v)
end)