local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local Window = Rayfield:CreateWindow({
   Name = "Tool Giver V5 | DOORS",
   Icon = 12771178448,
   Theme = "Amethyst",
   LoadingTitle = "Loading...",
   LoadingSubtitle = "by ???",
   ConfigurationSaving = {
      Enabled = false,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "AOC Hub"
   },
   Discord = {
      Enabled = true,
      Invite = "https://discord.gg/zeJ32NF6rZ", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD
      RememberJoins = false -- Set this to false to make them join the discord every time they load it up
   },
   KeySystem = false, -- Set this to true to use our key system
   KeySettings = {
      Title = "??? Hub | NEWEST",
      Subtitle = "Key System",
      Note = "Key is ???",
      FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"Key is ???"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})
local Tab = Window:CreateTab("Tools")

local Button = Tab:CreateButton({
   Name = "Grenade [W.I.P]",
   Callback = function()
    loadstring(game:HttpGet("https://pastebin.com/raw/zeFBYYy9", true))()
   end,
})

local Button = Tab:CreateButton({
   Name = "Banana Gun",
   Callback = function()
     loadstring(game:HttpGet("https://pastebin.com/raw/CBxBM55t", true))() 
   end,
})

local Button = Tab:CreateButton({
   Name = "Size Stick",
   Callback = function()
     loadstring(game:HttpGet('https://gist.githubusercontent.com/IdkMyNameLoll/f0178af2301ca90c09895f10f3e7bd4b/raw/46899ccc3626f3485d85f990012f7ef37ae52e5e/resizerDoorsRemake'))() 
   end,
})

local Button = Tab:CreateButton({
   Name = "Crucifix On Anything",
   Callback = function()
     _G.Uses = 99999999999
_G.Range = 999
_G.OnAnything = true
_G.Fail = false
loadstring(game:HttpGet('https://raw.githubusercontent.com/PenguinManiack/Crucifix/main/Crucifix.lua'))() --no deivid-- --execute this instead--
   end,
})
local Button = Tab:CreateButton({
   Name = "Shears On Anything",
   Callback = function()
--[[
	WARNING: Heads up! This script has not been verified by ScriptBlox. Use at your own risk!
]]
local Userinputservice = game:GetService("UserInputService")   
if not Userinputservice.TouchEnabled then
    local shears = game:GetObjects("rbxassetid://12685082209")[1]
    shears.Parent = game.Players.LocalPlayer.Backpack
    local newCFrame = CFrame.new(0, 0, 0, 0.5, 0.707106829, 0.499999911, -0.5, 0.707106769, -0.49999997, 0.707106769, -2.10734239e-08, -0.707106769)
    shears.Grip = newCFrame

    local tool = shears

    local useAnimation = tool.Animations.use

    local function onButton1Down()
        local mouse = game.Players.LocalPlayer:GetMouse()
        local target = mouse.Target
        if target then
            if target:IsA("Model") then
                    target:Destroy()
            else
                local parentModel = target:FindFirstAncestorWhichIsA("Model")
                if parentModel then
                        parentModel:Destroy()
                end
            end
        else
            return
        end
        local humanoid = tool.Parent:FindFirstChildOfClass("Humanoid")
        if humanoid then
            local animator = humanoid:FindFirstChildOfClass("Animator")
            if animator then
                if not Sound then
                    Sound = Instance.new("Sound")
                    Sound.PlaybackSpeed = 1.25
                    Sound.SoundId = "rbxassetid://9118823101"
                    Sound.Parent = tool
                end
                animator:LoadAnimation(useAnimation):Play()
                Sound:Play()
                wait(0.5)
                Sound:Play()
            end
        end
    end
    tool.Activated:Connect(onButton1Down)
else
    local shears = game:GetObjects("rbxassetid://12685082209")[1]
    shears.Parent = game.Players.LocalPlayer.Backpack
    local newCFrame = CFrame.new(0, 0, 0, 0.5, 0.707106829, 0.499999911, -0.5, 0.707106769, -0.49999997, 0.707106769, -2.10734239e-08, -0.707106769)
    shears.Grip = newCFrame

    local tool = shears

    local useAnimation = tool.Animations.use

    local function onTouchStart()
        local mouse = game.Players.LocalPlayer:GetMouse()
        local target = mouse.Target
        if target then
            if target:IsA("Model") then
                print(target.Name)
                    target:Destroy()
            else
                local parentModel = target:FindFirstAncestorWhichIsA("Model")
                if parentModel then
                    print(parentModel.Name)
                        parentModel:Destroy()
                end
            end
        else
            return
        end
        local humanoid = tool.Parent:FindFirstChildOfClass("Humanoid")
        if humanoid then
            local animator = humanoid:FindFirstChildOfClass("Animator")
            if animator then
                if not Sound then
                    Sound = Instance.new("Sound")
                    Sound.PlaybackSpeed = 1.25
                    Sound.SoundId = "rbxassetid://9118823101"
                    Sound.Parent = tool
                end
                animator:LoadAnimation(useAnimation):Play()
                Sound:Play()
                wait(0.5)
                Sound:Play()
            end
        end
    end
    -- Connect the "onTouchStart" function to the tool's "Activated" event
    tool.Activated:Connect(onTouchStart)
end
   end,
})
local Button = Tab:CreateButton({
   Name = "Mischievous Crucifix",
   Callback = function()
     loadstring(game:HttpGet("https://raw.githubusercontent.com/Teilsthebfdifan/Modhub-assets/refs/heads/main/MischievousV2Test.lua"))()
   end,
})
local Button = Tab:CreateButton({
   Name = "Magnet",
   Callback = function()
     loadstring(game:HttpGet("https://raw.githubusercontent.com/MrNeRD0/Doors-Hack/main/MagnetByNerd.lua"))()
   end,
})

local Button = Tab:CreateButton({
   Name = "Infinite Vitamins",
   Callback = function()
     loadstring(game:HttpGet("https://raw.githubusercontent.com/MrNeRD0/Doors-Hack/refs/heads/main/Inf_Vitamins.lua"))()
   end,
})

local Button = Tab:CreateButton({
   Name = "Ice Gun",
   Callback = function()
     loadstring(game:HttpGet("https://raw.githubusercontent.com/MrNeRD0/Doors-Hack/refs/heads/main/IcegunByNerd.lua"))()
   end,
})

local Button = Tab:CreateButton({
    Name = "Water Jar",
    Callback = function()
        loadstring(game:HttpGet('https://gist.githubusercontent.com/IdkMyNameLoll/04d7dd5e02688624b958b8c2604b924c/raw/9e86b34249f44ed2dd433176e67daaf3db30cde8/MoonBottle'))()
    end,
 })

local Button = Tab:CreateButton({
    Name = "Seek Gun",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/notpoiu/Scripts/main/seekgun.lua"))()
    end,
 })

 local Button = Tab:CreateButton({
    Name = "Bomb rocket 2007",
    Callback = function()
          print("Executed Rocket Launcher")
     loadstring(game:HttpGet("https://raw.githubusercontent.com/notpoiu/Scripts/main/rocketLauncher.lua"))() 
      end    
    })