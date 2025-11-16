--Rayfield Interface
local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "🔥 AOC Scripter Hub | Universal V3",
   LoadingTitle = "🔥Universal Gui V3🔥",
   LoadingSubtitle = "by k.6736",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = AOC_HUB, -- Create a custom folder for your hub/game
      FileName = "AOC Hub"
   },
   Discord = {
      Enabled = true,
      Invite = "https://discord.gg/UmQkTjq6jJ", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD
      RememberJoins = false -- Set this to false to make them join the discord every time they load it up
   },
   KeySystem = true, -- Set this to true to use our key system
   KeySettings = {
      Title = "Key | AOC HUB",
      Subtitle = "Key System",
      Note = "Key in pastebin.com/raw/VXu8ag8Y",
      FileName = "AOC", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = true, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"https://pastebin.com/raw/VXu8ag8Y"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})

local MainTab = Window:CreateTab("Main", nil) -- Title, Image
local MainSection = MainTab:CreateSection("Main")

Rayfield:Notify({
   Title = "You executed the script",
   Content = "How did u found this secret VERSION????",
   Duration = 5,
   Image = 13047715178,
   Actions = { -- Notification Buttons
      Ignore = {
         Name = "Okay!",
         Callback = function()
         print("I hope it good works:)")
      end
   },
},
})

local Button = MainTab:CreateButton({
   Name = "Infinite Jump Toggle",
   Callback = function()
       --Toggles the infinite jump between on or off on every script run
_G.infinjump = not _G.infinjump

if _G.infinJumpStarted == nil then
	--Ensures this only runs once to save resources
	_G.infinJumpStarted = true
	
	--Notifies readiness
	game.StarterGui:SetCore("SendNotification", {Title="AOC Hub"; Text="Infinite Jump Activated!"; Duration=5;})

	--The actual infinite jump
	local plr = game:GetService('Players').LocalPlayer
	local m = plr:GetMouse()
	m.KeyDown:connect(function(k)
		if _G.infinjump then
			if k:byte() == 32 then
			humanoid = game:GetService'Players'.LocalPlayer.Character:FindFirstChildOfClass('Humanoid')
			humanoid:ChangeState('Jumping')
			wait()
			humanoid:ChangeState('Seated')
			end
		end
	end)
end
   end,
})

local Slider = MainTab:CreateSlider({
   Name = "WalkSpeed Slider",
   Range = {16, 350},
   Increment = 1,
   Suffix = "Speed",
   CurrentValue = 16,
   Flag = "sliderws", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = (Value)
   end,
})

local Slider = MainTab:CreateSlider({
   Name = "JumpPower Slider",
   Range = {1, 350},
   Increment = 1,
   Suffix = "Speed",
   CurrentValue = 16,
   Flag = "sliderjp", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = (Value)
   end,
})


local Input = MainTab:CreateInput({
   Name = "Walkspeed",
   PlaceholderText = "16-500",
   RemoveTextAfterFocusLost = true,
   Callback = function(Text)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = (Text)
   end,
})

local OtherSection = MainTab:CreateSection("Other")

local Toggle = MainTab:CreateToggle({
   Name = "[Beta]",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function()
    game.StarterGui:SetCore("SendNotification", {
        Title = "AOC"; 
        Text = "Nothing Rn";
        Icon = "rbxassetid://102240518592215";
        Duration = 10;
        })
   end,
})

local AOCTab = Window:CreateTab("AOC HUB", nil) -- Title, Image
local AOCSection = AOCTab:CreateSection("AOC all version")


local Button = AOCTab:CreateButton({
    Name = "AOC Kavo Ui",
    Callback = function()
        --AOC source codes
--Notification
game.StarterGui:SetCore("SendNotification", {
    Title = "AOC"; 
    Text = "discord.gg/UmQkTjq6jJ";
    Icon = "rbxassetid://102240518592215";
    Duration = 30;
    })
    --Gui
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("X AOC Hub X", "Ocean")
    --MAIN
    local Main = Window:NewTab("AOC")
    local MainSection = Main:NewSection("▢Random▢")

    MainSection:NewButton("KICK ", "YOU GOT KICK", function()
        game.Players.localPlayer:kick("AOC")
        end)

    MainSection:NewToggle("Super-Human", "go fast and jump high", function(state)
        if state then
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 400
            game.Players.LocalPlayer.Character.Humanoid.JumpPower = 140
        else
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
            game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
        end
        end)

    MainSection:NewButton("Infinite Yield OP", "FE Admin Commands", function()
        loadstring(game:HttpGet(('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'),true))()
        end)


    MainSection:NewButton("Infinite Yield AOC EDITION", "FE Admin Commands", function()
        loadstring(game:HttpGet(('https://pastebin.com/raw/V4iJsU4Z'),true))()
        end)


    --LOCAL PLAYER
    local Player = Window:NewTab("Player/Gui")
    local PlayerSection = Player:NewSection("Local")

    PlayerSection:NewSlider("Walkspeed", "SPEED!!", 5500, 16, function(s)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
        end)

    PlayerSection:NewSlider("Jumppower", "JUMP HIGH!!", 5500, 50, function(s)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
        end)

    PlayerSection:NewButton("Reset WS/JP", "Resets to all defaults", function()
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
        end)

    PlayerSection:NewButton("Exit from game", "?", function()
        game:Shutdown()
        end)

    PlayerSection:NewButton("Rejoin", "?", function()
        game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId, plr)
        end)


    PlayerSection:NewButton("DEX", "By Moon", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/infyiff/backup/main/dex.lua"))()
    end)


    PlayerSection:NewButton("Coming soon...", "?", function()
        -- Script here
    end)


    MainSection:NewButton("Faded", "it da hood script", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/NighterEpic/Faded/main/YesEpic", true))()
        end)

    MainSection:NewButton("kiroftt (pop it trade)", "bypass", function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/Kiroftt/popit/main/scripx'))();
        end)

    MainSection:NewButton("AOC Hub V0.1", "bypass", function()
        loadstring(game:HttpGet("https://pastebin.com/raw/tj2p7bWs"))();
        end)

    MainSection:NewButton("Synapse X", "SYNAPSE EXECUTOR MADE BY AOC AND MORE", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/AOCHubReal/synapse-x-remake/main/Synapse%20X%20Remake"))()
        end)

    MainSection:NewButton("Pendulum Hub", " roblox thinks his game is for kids right? ", function()
        loadstring(game: HttpGet('https://raw.githubusercontent.com/Tescalus/Pendulum-Hubs-Source/main/Pendulum%20Hub%20V5.lua'))()
        end)

    MainSection:NewButton("AZURE MODDED", "best aimbot forever (forme)", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Actyrn/Scripts/main/AzureModded"))()
            end)

    MainSection:NewButton("Zombie Animations", "R15", function()
--zombie animations
zombie = game:GetService("RunService").Stepped:Connect(function ()
    game.Players.LocalPlayer.Character.Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=10921344533"
    game.Players.LocalPlayer.Character.Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=10921345304"
    game.Players.LocalPlayer.Character.Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=616163682"
    game.Players.LocalPlayer.Character.Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=10921351278"
    game.Players.LocalPlayer.Character.Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=10921350320"
    game.Players.LocalPlayer.Character.Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=10921343576"
    end)
        end)


    MainSection:NewButton("TELEKINESIS TOOL", "------------------", function()
        loadstring(game:HttpGet('https://pastebin.com/raw/jScxvtSr'))()
        end)

    MainSection:NewButton("boost fps", "boost fps", function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/AOCHubReal/AOC/main/BOOST%20FPS'))()
        end)

    MainSection:NewButton("redz blox fruit", "credit in script and discord", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/REDzHUB/BloxFruits/main/redz9999"))()
        end)

    MainSection:NewButton("redz blade ball", "credit in script and discord", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/REDzHUB/BladeBall/main/redz9999"))()
        end)

    MainSection:NewButton("redz pet simurator99", "credit in script and discord", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/REDzHUB/PetSimulator99/main/redz9999.lua"))()
        end)

    MainSection:NewButton("Tiger X V3 (Moblie)", "Universal", function()
        loadstring(game:HttpGet("https://scriptblox.com/raw/Universal-Script-Tiger-Hub-V3-13585"))()
        end)

    MainSection:NewButton("mm2 auto farm gui", "work only god mode (is joke)", function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/Unknownproootest/Unknown-MurderMystery2/main/FarmGui.lua'))()
        end)

    MainSection:NewButton("weird strict dad (only chapter 1)", "moblie&PC", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/yBloodz/Free-scripts/main/Weird%20Strict%20Dad"))()
        end)

    MainSection:NewButton("Da hood VORTEX GUI (OLD)", "this is cool", function()
        loadstring(game: HttpGet('https://raw.githubusercontent.com/ImagineProUser/vortexdahood/main/vortex'))()
        end)

    MainSection:NewButton("build a boat (AUTO FARM) (read info)", "click get key in script and you got key no link", function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/NooVster/v1.1/main/Source'))()
        end)

    MainSection:NewButton("FE Energize dance", "nothing...", function()
        loadstring(game:HttpGet(('https://pastebin.com/raw/VzeePjf6'),true))()
        end)

    MainSection:NewButton("TBO HUB (DA HOOD)", "Solara not support", function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/cool5013/TBO/main/TBOscript'))()
        end)

    MainSection:NewButton("GHOST X", "BEST SCRIPT FOR MOBLE PLAYER", function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/GhostPlayer352/Test4/main/GhostHub'))()
        end)

    MainSection:NewButton("ice hub", "GOOD FOR BROOKHAVEN?", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/IceMael7/NewIceHub/main/Brookhaven"))()
        end)

    MainSection:NewButton("Fe Bypass PRISON LIFE", "why here?", function()
        loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\34\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\103\48\48\108\88\112\108\111\105\116\101\114\47\103\48\48\108\88\112\108\111\105\116\101\114\47\109\97\105\110\47\70\101\37\50\48\98\121\112\97\115\115\34\44\32\116\114\117\101\41\41\40\41\10")()
        end)

    MainSection:NewButton("Public Bathroom", "what sub?", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ADSKerOffical/Budgie-Hub/main/PublicBathroomSimulator"))()
        end)

    MainSection:NewButton("RedZ Brookhaven", "BY REDZ CREDIT IN SCRIPT SEVRER DISCORD", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/REDzHUB/REDzHUB/main/REDzHUB"))()
        end)

    MainSection:NewButton("MENACE V2.1 bypass chat", "MENACE V2.1 BEST version", function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/Anonymous12131/MenaceV2.1.-Best-bypasser/main/obf_i7iAAH834YFQno0FLyuLPcNR5ouJrmvEFdtmXtF1C6u935ghB9DAFK5L3zgsPs6X.lua.txt'))()
        end)

    MainSection:NewButton("Synergy-Networks bypass chat", "not works for mm2 chats", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Synergy-Networks/products/main/BetterBypasser/loader.lua"))()
        end)

    MainSection:NewButton("Prison life (Tbao)", "work all", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/tbao143/thaibao/main/TbaohubPrisonLife"))()
        end)

    MainSection:NewButton("MM2 CE-Technologies", "key: jUnMxNCHas9TSgIlzKfz", function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/scriptemt/CE-Technologies/main/script', true))()
        end)

    MainSection:NewButton("The Presentation Experience", "work?", function()
        loadstring(game:HttpGet('https://pastebin.com/raw/GJx34d1S'))()
        end)

    MainSection:NewButton("POP IT TRADING SCRIPT (read info)", "KEY: SubscribeToxdkentryanborbon", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Sponge123456789/Sponge/main/Pop%20it%20update%20V5"))()
        end)

    MainSection:NewButton("SPEED TOOL AND FAKE MARCO (DA HOOD)", "made by NUKER HUB", function()
getgenv().Speed = true
getgenv().FakeMacro = true
loadstring(game:HttpGet("https://raw.githubusercontent.com/Allvideo/nukermode/main/Kit%20tools.txt"))()
        end)

    MainSection:NewButton("ANTI AFK Gui", "made by aoc.hub discord", function()
        wait(0.5)local ba=Instance.new("ScreenGui")
local ca=Instance.new("TextLabel")local da=Instance.new("Frame")
local _b=Instance.new("TextLabel")local ab=Instance.new("TextLabel")ba.Parent=game.CoreGui
ba.ZIndexBehavior=Enum.ZIndexBehavior.Sibling;ca.Parent=ba;ca.Active=true
ca.BackgroundColor3=Color3.new(0.176471,0.176471,0.176471)ca.Draggable=true
ca.Position=UDim2.new(0.698610067,0,0.098096624,0)ca.Size=UDim2.new(0,370,0,52)
ca.Font=Enum.Font.SourceSansSemibold;ca.Text="Anti Afk"ca.TextColor3=Color3.new(0,1,1)
ca.TextSize=22;da.Parent=ca
da.BackgroundColor3=Color3.new(0.196078,0.196078,0.196078)da.Position=UDim2.new(0,0,1.0192306,0)
da.Size=UDim2.new(0,370,0,107)_b.Parent=da
_b.BackgroundColor3=Color3.new(0.176471,0.176471,0.176471)_b.Position=UDim2.new(0,0,0.800455689,0)
_b.Size=UDim2.new(0,370,0,21)_b.Font=Enum.Font.Arial;_b.Text="MADE BY aoc.hub discord"
_b.TextColor3=Color3.new(0,1,1)_b.TextSize=20;ab.Parent=da
ab.BackgroundColor3=Color3.new(0.176471,0.176471,0.176471)ab.Position=UDim2.new(0,0,0.158377,0)
ab.Size=UDim2.new(0,370,0,44)ab.Font=Enum.Font.ArialBold;ab.Text="Status: Active"
ab.TextColor3=Color3.new(0,1,1)ab.TextSize=20;local bb=game:service'VirtualUser'
game:service'Players'.LocalPlayer.Idled:connect(function()
bb:CaptureController()bb:ClickButton2(Vector2.new())
ab.Text="Roblox kicked you but we didnt let them!"wait(2)ab.Text="Status : Active"end)
        end)

    MainSection:NewButton("FE HAT ORBIT(PATCHED)", "PATCH", function()
        loadstring(game:HttpGet(('https://pastebin.com/raw/E8tkgbGD')))()
        end)

    MainSection:NewButton("NETLESS", "IDK", function()
        loadstring(game:HttpGet(('https://pastebin.com/raw/2NguxLWQ7')))()
        end)

    MainSection:NewButton("AOC MOBLIE version !!!!!", "AOC MOBLIE", function()
        loadstring(game:HttpGet(('https://pastebin.com/raw/S23kqESN')))()
        end)

    MainSection:NewButton("REJOIN BUTTON IF GOT KICK", "WHENN YOU GOT BAN CAN REJOIN BUT YOU GOT BAN", function()
        loadstring(game:HttpGet(('https://pastebin.com/raw/Xzh2DBEx')))()
        end)
        
    MainSection:NewButton("X-RAY MINECRAFT GAME", "BLOXCRAFT WORK CRAFTBLOX WORK MINESHARFT WORK SKIBIDI DOP DOP YES YES, WTF HOW IT HERE", function()
        loadstring(game:HttpGet("https://gist.githubusercontent.com/raw/b8d379c1e296ade8305c2fe4df652537"))()
        end)

    MainSection:NewButton("DOORS SCRIPT", "??", function()
        loadstring(game:HttpGetAsync("https://pastebin.com/raw/R8QMbhzv"))() 
        end)

    MainSection:NewButton("BEDOL HUB", "bro can you know is blade ball script", function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/nqxlOfc/Loaders/main/Blade_Ball.lua'))() 
        end)

    MainSection:NewButton("fe bring", "?", function()
        loadstring(game:HttpGet(('https://pastebin.com/raw/Ur6V2GLM'),true))()
        end)

    MainSection:NewButton("fe float", "made by ghost x hub", function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/GhostPlayer352/Test4/main/Float'))()
        end)

    MainSection:NewButton("ChangiVerse (inf seed/money)", "made by Tora IsMe", function()
        game:GetService("ReplicatedStorage").Common.Upgrade:FireServer("Marshmallowrose",-19e19)
        end)

    MainSection:NewButton("Admins Universal 300+ (sky hub)", "best", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/yofriendfromschool1/Sky-Hub/main/FE%20Trolling%20GUI.luau"))()
        end)

    MainSection:NewButton("Swag Mode Da hood", "Noinfo", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/lerkermer/lua-projects/master/SwagModeV002"))()
        end)

    MainSection:NewButton("R3TH Priv", "Noinfo", function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/R3TH-PRIV/R3THPRIV/main/loader.lua'))()
        end)

    MainSection:NewButton("MM2 Kidachi", "Noinfo", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/KidichiHB/Kidachi/main/Scripts/MM2", true))()
        end)

    MainSection:NewButton("Touch fling", "work all", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/0Ben1/fe./main/Fling%20GUI"))()
        end)

    MainSection:NewButton("凹凸世界：自由丛林", "speed dupe (inf)", function()
        while true do
            wait(0.1)
        
        local args = {
            [1] = 2,
            [2] = {
                [1] = 1,
                [2] = 1,
                [3] = 27
            }
        }
        
        game:GetService("ReplicatedStorage").Project.RemoteEvent.ControlMessageEvent:FireServer(unpack(args))
        
        end

        setclipboard("凹凸世界：自由丛林")
        end)

   
    MainSection:NewButton("Control da hood", "?", function()
        --control script
        loadstring(game:HttpGet('https://raw.githubusercontent.com/yuvic123/s/main/s'))()
        end)


    MainSection:NewButton("OP CAMLOCK KEY C", "?", function()
        --OP Camlock
        getgenv().NemesisPreBeta = {
            ["Settings"] = {
                Disabling = {Toggle = false, Keybind = "H"},
                UpdateTickDelay = 0.05
            },
            ["Camlock"] = {
                Toggling = {
                    Enable = true, 
                    Keybind = "c"
                },
                Settings = {
                    Prediction = { 
                        true, 
                        999.999, 
                        false, 
                        .003
                    },
                    Smoothing = {
                        smoothness = true, 
                        x = 1, 
                        y = 1
                    },
                    OffSets = {
                        Jump = {
                            Enable = false, 
                            [1] = Vector3.new(0, 3, 0)
                        }
                    }
                },
                Conditions = {
                    Player = {
                        WallCheck = false, 
                        Grabbed = false, 
                        Knocked = false, 
                        CrewID = false
                    },
                    BodyParts = {"HumanoidRootPart", "Head"}
                }
            },
            ["Silent"] = {
                Toggling = { Enable = false },
                Settings = {
                    Prediction = { true , 0.11934 , false, 0.003 },
                    HitChance = 100,
                    Resolver = true,
                    OffSets = {
                        Jump = {
                            Enable = false, 
                            [1] = Vector3.new(0, 0, 0)
                        }
                    }
                },
                Conditions = {
                    Player = { WallCheck = false, Grabbed = false, Knocked = false, CrewID = false },
                    BodyParts = {"HumanoidRootPart", "UpperTorso", "Head"}
                }
            },
            ["Field Of View"] = {
                Enable = true, 
                Size = 1000, 
                Color = Color3.fromRGB(255, 255, 255), 
            },
            ["Miscs"] = {
                ["Sorting"] = {
                    Toggled = false,
                    Key = "F",
                    alphabetically = true,
                    Ammo = false,
                    Custom = {
                        Enable = false,
                        List = {[1] = "[Revolver]", [2] = "[Chicken]"} -- // etc
                    }
                },
                ["Animation"] = {
                    Enable = true,
                    Animations = {["Greet"] = {[1] = false, [2] = "V"}}
                }
            }
        }
        
        
        
        
        
        local DUpvalue, Round, V3, V2, CF, Rservice, UserInput, Ping, Mouse, backpack  = debug.getupvalue, math.round, Vector3.new, Vector2.new, CFrame.new, game:GetService("RunService"), game:GetService("UserInputService"), game:GetService("Stats").PerformanceStats.Ping, game:GetService("Players").LocalPlayer:GetMouse(), game:GetService("Players").LocalPlayer.Backpack
        local Players, Self, Character, Camera = game:GetService("Players"), game:GetService("Players").LocalPlayer, game:GetService("Players").LocalPlayer.Character or  game:GetService("Players").LocalPlayer.CharacterAdded:Wait(), game:GetService("Workspace").CurrentCamera
        local idx, endp
        
        
        local Storage = {
            Drawings = {},
            Connections = {},
            targets = {
                [1] = nil,
                [2] = nil
            },
            ValuePosition = nil,
            bodyparts = {
                [1] = "",
                [2] = ""
            },
            update_tick = tick(),
            etc = {
                Ctoggled = false,
                Mtoggled = false
            },
            items = {}
        }
        
        
        
        function NewConnection(type, callback)
            local connection = type:Connect(callback)
            Storage.Connections[#Storage.Connections+1] = connection
            return connection
        end
        
        function Chance(chance, maxchance)
            return math.random(maxchance) <= chance
        end
        
        
        function Thread(Function, ...)
            local co
            local success, result
        
            if Function ~= nil then
                co = coroutine.create(Function)
                success, result = coroutine.resume(co, ...)
            end
            if success ~= nil and co ~= nil and Function ~= nil then
                return result
            end
        end
        
        
        function wallcheck(origin)
            local parts = Camera:GetPartsObscuringTarget({origin.Position,  Character.HumanoidRootPart.Position}, {Camera, Character, origin.Parent})
            if #parts == 0 then
                return true
            end
            return false
        end
        
        function Grabbed(player)
            if player.Character ~= nil  then
                return not player.Character:FindFirstChild("GRABBING_CONSTRAINT")
            end
        end
        
        function Knocked(player)
            if player.Character ~= nil  then
                return player.Character.BodyEffects["K.O"].Value ~= true
            end
        end
        
        
        local pingHistory = {}
        local lastPingUpdateTime = tick()
        
        
        
        function GetPrediction()
            local currentPing = Ping:GetValue() * 0.003
            if getgenv().NemesisPreBeta.Camlock.Settings.Prediction[3] or getgenv().NemesisPreBeta.Silent.Settings.Prediction[3] then
                return currentPing
            else
                return getgenv().NemesisPreBeta.Camlock.Settings.Prediction[2] and getgenv().NemesisPreBeta.Silent.Settings.Prediction[2]
            end
        end
        
        function Crew(player)
            if game.Players.LocalPlayer:FindFirstChild("DataFolder"):FindFirstChild("Information"):FindFirstChild("Crew") then
                local SelfCrewValue =  game.Players.LocalPlayer:FindFirstChild("DataFolder"):FindFirstChild("Information"):FindFirstChild("Crew")
                if SelfCrewValue.Value ~= 0 then
                    if player:FindFirstChild("DataFolder"):FindFirstChild("Information"):FindFirstChild("Crew")  then
                        local Enimy = player:FindFirstChild("DataFolder"):FindFirstChild("Information"):FindFirstChild("Crew")
                        if Enimy.Value == SelfCrewValue.Value then
                            return false
                        end
                    end
                end
            end
            return true
        end
        
        
        
        function Closespart(player, hitboxes)
            local closestPart
            local closestDistanc = math.huge
            for _, hitbox in pairs(hitboxes) do
                local part = player.Character:FindFirstChild(hitbox)
                if part then
                    local pos = Camera:WorldToViewportPoint(part.Position)
                    local distance = (UserInput:GetMouseLocation() - V2(pos.X, pos.Y)).Magnitude
                    if distance < closestDistanc then
                        closestPart = part
                        closestDistanc = distance
                    end
                end
            end
            return closestPart
        end
        
        
        
        function isInCustomList(toolName)
            for _, customName in ipairs(getgenv().NemesisPreBeta.Miscs.Sorting.Custom.List) do
                if toolName == customName then
                    return true
                end
            end
            return false
        end
        
        
        function GetClosest(table)
            local MaxDistance = getgenv().NemesisPreBeta["Field Of View"].Enable and getgenv().NemesisPreBeta["Field Of View"].Size or math.huge
            local Target
        
            for i,v in pairs(Players:GetPlayers()) do
                if v ~= Self and v.Character ~= nil and v.Character:FindFirstChild("HumanoidRootPart") and v.Character:FindFirstChild("Head") then
                    local ViewPort, Visible = Camera:WorldToViewportPoint(v.Character.HumanoidRootPart.Position)
                    local Mag = (UserInput:GetMouseLocation() - Vector2.new(ViewPort.X, ViewPort.Y)).Magnitude
                    if MaxDistance > Mag and Visible and (
                        (table.WallCheck and wallcheck(v.Character.HumanoidRootPart)) or true and
                        (table.Grabbed and Grabbed(v)) or true and
                        (table.Knocked and Knocked(v)) or true and
                        (table.CrewID and Crew(v)) or true 
                    ) then
                        MaxDistance = Mag
                        Target = v
                    end
                end
            end
            return Target
        end
        
        function Velocity(Target, method)
            if method == true then
                local pos = Target.Character.HumanoidRootPart.Position
                local lastTime = tick()
                local currentPos, currentTime
                local connection
                connection =
                    game:GetService("RunService").Heartbeat:Connect(
                    function()
                        currentPos = Target.Character.HumanoidRootPart.Position
                        currentTime = tick()
                        connection:Disconnect()
                    end
                )
                wait(0.01)
                local velocity = (currentPos - pos) / (currentTime - lastTime)
                return Vector3.new(math.floor(velocity.X), math.floor(velocity.Y), math.floor(velocity.Z))
            else
                return Target.character:FindFirstChild("HumanoidRootPart").AssemblyLinearVelocity
            end
        end
        
        function playAnimation(animationName)
            local args = {
                [1] = "AnimationPack",
                [2] = animationName,
            }
            game:GetService("ReplicatedStorage").MainEvent:FireServer(unpack(args))
        end
        
        
        -- // updates
        
        function UpdateSilent()
            local SilentTable = getgenv().NemesisPreBeta.Silent
            if SilentTable.Toggling.Enable then
                Storage.targets[2] = GetClosest(SilentTable.Conditions.Player)
                if Storage.targets[2] ~= nil and Storage.targets[2].Character ~= nil and Storage.targets[2].Character:FindFirstChild("HumanoidRootPart") then
                    Storage.bodyparts[2] =  tostring(Closespart(Storage.targets[2], SilentTable.Conditions.BodyParts))
                    local position = Storage.targets[2].Character[Storage.bodyparts[2]].Position
                    if SilentTable.Settings.OffSets.Jump.Enable and Storage.targets[2].Character:FindFirstChildOfClass("Humanoid"):GetState() == Enum.HumanoidStateType.Freefall then
                        position = position + SilentTable.Settings.OffSets.Jump[1]
                    end
                    Storage.CFposition = position + (SilentTable.Settings.Prediction and Velocity(Storage.targets[2], SilentTable.Settings.Resolver) * GetPrediction() or 0)
                end
            end
        end
        
        
        function UpdateCamlock()
            local CamLockTable = getgenv().NemesisPreBeta.Camlock
            if Storage.etc.Ctoggled and CamLockTable.Toggling.Enable and Storage.targets[1] ~= nil and Storage.targets[1].Character ~= nil then
                local position = Storage.targets[1].Character[Storage.bodyparts[1]].Position
        
                if CamLockTable.Settings.OffSets.Jump.Enable and Storage.targets[1].Character:FindFirstChildOfClass("Humanoid"):GetState() == Enum.HumanoidStateType.Freefall then
                    position = position + CamLockTable.Settings.OffSets.Jump[1]
                end
        
                if CamLockTable.Settings.Smoothing.enable then
                    local goal = CFrame.new(Camera.CFrame.Position, position + (CamLockTable.Settings.Prediction[1] * GetPrediction() or Vector3.new()))
                    Camera.CFrame = Camera.CFrame:Lerp(goal, CamLockTable.Settings.Smoothing.x, CamLockTable.Settings.Smoothing.y)
                else
                    local prediction = CamLockTable.Settings.Prediction[1] and Storage.targets[1].Character.HumanoidRootPart.AssemblyLinearVelocity * GetPrediction() or Vector3.new()
                    Camera.CFrame = CFrame.new(Camera.CFrame.Position, position + prediction)
                end
            end
        end
        
        do -- main connection
        
            NewConnection(UserInput.InputBegan, function(key, wtv)
                if key.KeyCode == Enum.KeyCode[getgenv().NemesisPreBeta.Camlock.Toggling.Keybind:upper()] and not wtv then
                    if getgenv().NemesisPreBeta.Camlock.Toggling.Enable then
                        Storage.etc.Ctoggled = not Storage.etc.Ctoggled
                        Storage.targets[1] = GetClosest(getgenv().NemesisPreBeta.Camlock.Conditions.Player)
        
                        if  Storage.targets[1] and  Storage.targets[1].Character then
                            Storage.bodyparts[1] = tostring(Closespart(Storage.targets[1], getgenv().NemesisPreBeta.Camlock.Conditions.BodyParts))
        
                        end
                    else
                        if  Storage.targets[1] ~= nil then
                            Storage.targets[1] = nil
                        end
                    end
                end
            end)
        
            NewConnection(UserInput.InputBegan, function(key, wtv)
                if getgenv().NemesisPreBeta.Settings.Disabling.Toggle and key.KeyCode == Enum.KeyCode[getgenv().NemesisPreBeta.Settings.Disabling.Keybind:upper()]  and not wtv then
                    for i,v in pairs(Storage.Connections) do
                        if v then
                            v:Disconnect()
                        end
                    end
                    for i,v in pairs(Storage.Drawings) do
                        if v and v.__OBJECT_EXISTS then
                            print("f")
                        end
                    end
                end
            end)
        
            NewConnection(UserInput.InputBegan, function(key, wtv)
                if getgenv().NemesisPreBeta.Miscs.Sorting.Toggled and key.KeyCode == Enum.KeyCode[getgenv().NemesisPreBeta.Miscs.Sorting.Key:upper()] and not wtv then
                    local items = {}
        
                    if getgenv().NemesisPreBeta.Miscs.Sorting.Custom.Enable then
                        for _, customName in ipairs(getgenv().NemesisPreBeta.Miscs.Sorting.Custom.List) do
                            for _, item in pairs(backpack:GetChildren()) do
                                if item:IsA("Tool") and item.Name == customName then
                                    table.insert(items, 1, item)
                                    break
                                end
                            end
                        end
                    end
                    
                    for _, item in pairs(backpack:GetChildren()) do
                        if item:IsA("Tool") and (not getgenv().NemesisPreBeta.Miscs.Sorting.Custom.Enable or not isInCustomList(item.Name)) then
                            table.insert(items, item)
                        end
                    end
                    
                    if getgenv().NemesisPreBeta.Miscs.Sorting.alphabetically and not getgenv().NemesisPreBeta.Miscs.Sorting.Custom.Enable then
                        table.sort(items, function(a, b)
                            return a.Name < b.Name
                        end)
                    end
                    
                    if getgenv().NemesisPreBeta.Miscs.Sorting.Ammo and not getgenv().NemesisPreBeta.Miscs.Sorting.Custom.Enable then
                        table.sort(items, function(a, b)
                            return a.Value > b.Value
                        end)
                    end
        
                    for _, item in ipairs(items) do
                        item.Parent = nil
                        wait(0.01)
                        item.Parent = backpack
                    end
        
                end
            end)
        
            NewConnection(UserInput.InputBegan, function(key, wtv)
                if getgenv().NemesisPreBeta.Miscs.Animation.Enable and not wtv then
                    for animationName, animationData in pairs(getgenv().NemesisPreBeta.Miscs.Animation.Animations) do
                        if animationData[1] and key.KeyCode == Enum.KeyCode[animationData[2]] then
                            playAnimation(animationName)
                            break
                        end
                    end
                end
            end)
        
        
        
        
            NewConnection(Rservice.Heartbeat, function()
        
                    --//  camlock
                    Thread(UpdateCamlock())
        
                    --// Silent UPDATE
                    Thread(UpdateSilent())
        
            end)
        end
        
        
            for connection, index in next, getconnections(workspace.CurrentCamera.Changed) do
                index:Disable()
            end
            for connection, index in next, getconnections(workspace.CurrentCamera:GetPropertyChangedSignal("CFrame")) do
                index:Disable()
            end
        
        
        local oldIndex
        oldIndex = hookmetamethod(game, "__index", function(t, k)
            if t:IsA("Mouse") and k == "Hit" or k == "Target" then
                if  getgenv().NemesisPreBeta.Silent.Toggling.Enable and Chance(getgenv().NemesisPreBeta.Silent.Settings.HitChance, 100) and Storage.targets[2] ~= nil then
                    local Hit = CFrame.new(Storage.CFposition)
                    return (k == "Hit" and Hit)
                end
            end
            return oldIndex(t, k)
        end)
        
        end)

    MainSection:NewButton("AUTO RELOAD (original da hood only)", "auto reload guns", function()
        _G.AutoReload = true -- change to false if u don't want it anymore.

while _G.AutoReload == true and game:GetService("RunService").Heartbeat:Wait() do
if game:GetService("Players").LocalPlayer.Character:FindFirstChildWhichIsA("Tool") then
            if game:GetService("Players").LocalPlayer.Character:FindFirstChildWhichIsA("Tool"):FindFirstChild("Ammo") then
                if game:GetService("Players").LocalPlayer.Character:FindFirstChildWhichIsA("Tool"):FindFirstChild("Ammo").Value <= 0 then
                    game:GetService("ReplicatedStorage").MainEvent:FireServer("Reload", game:GetService("Players").LocalPlayer.Character:FindFirstChildWhichIsA("Tool")) 
                    wait(1)
                end
            end
        end
end
        end)

--Tab 3
        local Tab3 = Window:NewTab("• TEST •")
 
local Section3 = Tab3:NewSection("TESTER")
 
Section3:NewButton("?", "?", function()
    game.StarterGui:SetCore("SendNotification", {
        Title = "AOC"; 
        Text = "Nothing now";
        Icon = "rbxassetid://125846938071420";
        Duration = 10;
        })
end)


--Tab 4
local Tab4 = Window:NewTab("• play song •")
 
local Section4 = Tab4:NewSection("Song/sound (not FE)")
 
Section4:NewButton("Jumpstyle (1:52)", "TEST", function()
    local Jumpstyle		= Instance.new("Sound")
		Jumpstyle.Parent		= game:GetService("Workspace")
		Jumpstyle.SoundId		= "rbxassetid://1839246711"
		Jumpstyle.Playing		= true
		Jumpstyle.Looped		= false
		Jumpstyle.Pitch      = 0.9
		Jumpstyle.Volume		= 2

        game.StarterGui:SetCore("SendNotification", {
            Title = "AOC"; 
            Text = "Jumpstyle";
            Icon = "rbxassetid://102240518592215";
            Duration = 14;
            })
end)

Section4:NewButton("Relaxed Scene (1:37)", "TEST", function()
    local Relaxed_Scene		= Instance.new("Sound")
    Relaxed_Scene.Parent		= game:GetService("Workspace")
    Relaxed_Scene.SoundId		= "rbxassetid://1848354536"
    Relaxed_Scene.Playing		= true
    Relaxed_Scene.Looped		= false
    Relaxed_Scene.Pitch      = 1
    Relaxed_Scene.Volume		= 7

    game.StarterGui:SetCore("SendNotification", {
        Title = "AOC"; 
        Text = "Relaxed Scene";
        Icon = "rbxassetid://102240518592215";
        Duration = 14;
        })
end)

Section4:NewButton("Sonic.EXE", "TEST", function()
    local Sonic_EXE		= Instance.new("Sound")
    Sonic_EXE.Parent		= game:GetService("Workspace")
    Sonic_EXE.SoundId		= "rbxassetid://7337298420"
    Sonic_EXE.Playing		= true
    Sonic_EXE.Looped		= false
    Sonic_EXEe.Pitch      = 1
    Sonic_EXE.Volume		= 4

    game.StarterGui:SetCore("SendNotification", {
        Title = "AOC"; 
        Text = "Sonic.exe";
        Icon = "rbxassetid://102240518592215";
        Duration = 14;
        })
end)



--Credits tab
local Tab4000 = Window:NewTab("• Credits •")
 
local Section4000 = Tab4000:NewSection("Make by AOC/ice")
 
Section4000:NewButton("discord server copy link", "TEST", function()
    setclipboard("discord.gg/UmQkTjq6jJ")

        game.StarterGui:SetCore("SendNotification", {
            Title = "AOC"; 
            Text = "Copys now";
            Icon = "rbxassetid://125846938071420";
            Duration = 10;
            })
end)

Section4000:NewButton("discord AOC owner main account", "TEST", function()
    setclipboard("aoc.hub")

        game.StarterGui:SetCore("SendNotification", {
            Title = "AOC"; 
            Text = "Copys now";
            Icon = "rbxassetid://125846938071420";
            Duration = 10;
            })
end)

Section4000:NewButton("discord AOC owner alt account", "TEST", function()
    setclipboard("ninja.hub")

        game.StarterGui:SetCore("SendNotification", {
            Title = "AOC"; 
            Text = "Copys now";
            Icon = "rbxassetid://125846938071420";
            Duration = 10;
            })
end)




--Settings
local Tab = Window:NewTab("Settings")
local Section = Tab:NewSection("Keybinds")

Section:NewKeybind("Toggle gui", "on/off gui", Enum.KeyCode.V, function()
	Library:ToggleUI()
end)

local Tab100 = Window:NewTab("Update")
local Section100 = Tab:NewSection("This is ALL Update from AOC Creater")

Section100:NewButton("In moblie we have Toggle gui NOW!!!", "TEST", function()
    setclipboard("ninja.hub")

        game.StarterGui:SetCore("SendNotification", {
            Title = "AOC"; 
            Text = "Copys now";
            Icon = "rbxassetid://125846938071420";
            Duration = 10;
            })
end)

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "ScreenGui"
ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ResetOnSpawn = false

local Toggle = Instance.new("TextButton")
Toggle.Name = "Toggle"
Toggle.Parent = ScreenGui
Toggle.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Toggle.Position = UDim2.new(0, 0, 0.454706937, 0)
Toggle.Size = UDim2.new(0, 90, 0, 38)
Toggle.Font = Enum.Font.SourceSans
Toggle.Text = "AOC"
Toggle.TextColor3 = Color3.fromRGB(248, 248, 248)
Toggle.TextSize = 28.000
Toggle.Draggable = true
Toggle.MouseButton1Click:connect(function()
    Library:ToggleUI()
end)

local Corner = Instance.new("UICorner")
Corner.Name = "Corner"
Corner.Parent = Toggle
    end,
 })

 local Button = AOCTab:CreateButton({
    Name = "AOC Orion Ui",
    Callback = function()
--AOC Hub
--rbxassetid://15719832182 phonk ninja
--rbxassetid://16730731897 Scary eyes
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/AOCHubReal/AOC/refs/heads/main/Orion%20Gui%20source%20(Edit).lua')))() -- https://raw.githubusercontent.com/shlexware/Orion/main/source
local Window = OrionLib:MakeWindow({Name = "AOC Hub || Version 1.0", HidePremium = false, IntroEnabled = true, IntroText = "AOC HUB", SaveConfig = true, ConfigFolder = "V1"})

OrionLib:MakeNotification({
	Name = "AOC Hub",
	Content = "Thanks for using AOC Hub!",
	Image = "rbxassetid://16730731897", --Scary eyes
	Time = 20
})

local Tab = Window:MakeTab({
	Name = "Movesets (TSB)",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Section = Tab:AddSection({
	Name = "Characters (TSB)"
})

local Tab2 = Window:MakeTab({
	Name = "Player",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Section2 = Tab2:AddSection({
	Name = "Player Section"
})

local Tab3 = Window:MakeTab({
	Name = "Esp / Aimbot",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Section3 = Tab3:AddSection({
	Name = "Esp / Aimbot"
})

local Tab5 = Window:MakeTab({
	Name = "Credits",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Section5 = Tab5:AddSection({
	Name = "Credits"
})

Tab:AddButton({
	Name = "Vortex Vanguard (Saitama)",
	Callback = function()
          loadstring(game:HttpGet('https://pastebin.com/raw/rfuwSHff'))()
  	end    
})

Tab:AddButton({
	Name = "Gojo (Saitama)",
	Callback = function()
      		loadstring(game:HttpGet('https://pastebin.com/raw/Fz5qGQa2'))()
end
})

Tab:AddButton({
	Name = "Mixed Power (Saitama)",
	Callback = function()
      		loadstring(game:HttpGet("https://pastebin.com/raw/Y3uyGSK6"))()
  	end    
})

Tab:AddButton({
	Name = "Matsuya (Hero Hunter)",
	Callback = function()
        OrionLib:MakeNotification({
            Name = "if it bad im sorry But im tried for it😭",
            Content = "Here your script",
            Image = "rbxassetid://15719832182", --phonk ninja
            Time = 5
        })

         loadstring(game:HttpGet(('https://raw.githubusercontent.com/AOCHubReal/AOC-MOONSEC/main/Matsuya_Protect.lua'),true))()
  	end    
})

Tab:AddButton({
	Name = "No Escape By AOC (Saitama)",
	Callback = function()
		loadstring(game:HttpGet('https://raw.githubusercontent.com/AOCHubReal/AOC-MOONSEC/refs/heads/main/No-Escape_Protect.lua'))()
  	end    
})

Tab2:AddButton({
	Name = "Infinite Yield",
	Callback = function()
      		loadstring(game:HttpGet(('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'),true))()
  	end    
})

Tab3:AddButton({
	Name = "Universal Outline Esp",
	Callback = function()
      		loadstring(game:HttpGet("https://raw.githubusercontent.com/1dontgiveaf/NSExpression/main/Outline%20ESP", true))()
  	end    
})

Tab3:AddButton({
	Name = "Aimbot/Camlock Key C",
	Callback = function()
      		loadstring(game:HttpGet('https://pastebin.com/raw/PWw4T73X'))()
  	end    
})

Tab2:AddButton({
	Name = "Boost Speed",
	Callback = function()
      		local player = game.Players.LocalPlayer
            local character = player.Character or player.CharacterAdded:Wait()
            
            local function speed()
                    local humanoid = character:WaitForChild("Humanoid")
                    if humanoid then
                               humanoid.WalkSpeed = humanoid.WalkSpeed + 5
                        end
            end

            speed()
  	end    
})

Tab2:AddButton({
	Name = "Rejoin",
	Callback = function()
		game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId, plr)
  	end    
})

Tab2:AddButton({
	Name = "Exit",
	Callback = function()
		game.Players.localPlayer:kick("AOC")
     game:Shutdown()
  	end    
})

local Tab4 = Window:MakeTab({
	Name = "Universal",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Section4 = Tab4:AddSection({
	Name = "ALL HUB ARE HERE!!"
})

Tab4:AddButton({
	Name = "AOC HUB (PC)",
	Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/AOCHubReal/AOC-MOONSEC/main/AOC_Protect.lua'))()
  	end    
})

Tab4:AddButton({
	Name = "Dex",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/infyiff/backup/main/dex.lua"))()
	end})

local Tab6 = Window:MakeTab({
	Name = "The strongest Battle Grounds",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Section6 = Tab6:AddSection({
	Name = "Random"
})

Tab6:AddButton({
	Name = "FFJ1 (TSB)",
	Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/FFJ1/Roblox-Exploits/main/scripts/TSBUtils.lua"))()
  	end    
})

Tab6:AddButton({
	Name = "Max Speed And Repulse",
	Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/AOCHubReal/AOC/refs/heads/main/Repulse-Flash"))()
  	end    
})

Tab6:AddButton({
	Name = "Character Customizer",
	Callback = function()
      		loadstring(game:HttpGet('https://raw.githubusercontent.com/xVicity/BURNED/main/LATEST.lua'))() 
  	end    
})

Tab6:AddButton({
	Name = "Auto Combo || Lockerv5",
	Callback = function()
      		loadstring(game:HttpGet("https://rentry.org/autocombo/raw"))()
  	end    
})

Tab5:AddLabel("Script Owner: AOC Icezy")
Tab5:AddLabel("Credits to NetlessKJ")
Tab5:AddLabel("Credits to Lockerv5")
Tab5:AddLabel("Credits to aoc.hub")

--TEST loadstring(game:HttpGet("https://raw.githubusercontent.com/AOCHubReal/AOC-MOONSEC/refs/heads/main/AOC_Orion_Protect.lua"))()
--TEST 
    end,
 })