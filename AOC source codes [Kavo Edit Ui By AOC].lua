--AOC source codes [Kavo Edit Ui By AOC]
--Notification
game.StarterGui:SetCore("SendNotification", {
    Title = "AOC"; 
    Text = "discord.gg/UmQkTjq6jJ";
    Icon = "rbxassetid://102240518592215";
    Duration = 30;
    })
    wait(1)
    setclipboard("https://discord.gg/UmQkTjq6jJ")
    wait(1)
    if game.PlaceId == 2788229376 then
        game.Players.localPlayer:kick("This game have Anti cheat do not run our script in this game")
		wait(0.3)
		game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId, plr)
    end
    wait(1)
    --Gui
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/AOCHubReal/Ui-sources/main/Kavo-Lib-AOC-source.lua"))()
local Window = Library.CreateLib("X AOC Hub X", "Ocean")
    --MAIN
    local Main = Window:NewTab("AOC")
    local MainSection = Main:NewSection("▢Random▢")

    MainSection:NewButton("KICK ", "kick yourself", function()
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


    MainSection:NewButton("Infinite Yield AOC EDITION", "FE Admin Commands Edited by AOC", function()
        game.StarterGui:SetCore("SendNotification", {
    Title = "AOC"; 
    Text = "script has been deleted!!!";
    Icon = "rbxassetid://102240518592215";
    Duration = 5;
    })
        end)

            MainSection:NewButton("MoreUNC/ added UNC to your EXECUTOR", "most likely made for Solara", function()
                loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-MoreUNC-Simplified-15147"))()
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

    PlayerSection:NewButton("Reset WS/JP", "Resets all to defaults", function()
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
        end)

    PlayerSection:NewButton("Exit from game", "?", function()
        game.Players.localPlayer:kick("AOC")
        wait(0.2)
        game:Shutdown()
        end)

    PlayerSection:NewButton("Rejoin", "?", function()
        game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId, plr)
        end)

    PlayerSection:NewButton("ServerHop Gui Beta", "?", function()
-- SERVER HOP GUI (Exploit Only) | By ChatGPT

local HttpService = game:GetService("HttpService")
local TeleportService = game:GetService("TeleportService")
local Players = game:GetService("Players")

local PlaceId = game.PlaceId
local JobId = game.JobId
local Player = Players.LocalPlayer

-- Function to hop to a new server
local function ServerHop()
    local success, response = pcall(function()
        return HttpService:JSONDecode(
            game:HttpGet("https://games.roblox.com/v1/games/" .. PlaceId .. "/servers/Public?sortOrder=Desc&limit=100")
        )
    end)

    if not success then
        warn("❌ Failed to load server list:", response)
        return
    end

    for _, server in ipairs(response.data) do
        if server.id ~= JobId and server.playing < server.maxPlayers then
            print("✅ Hopping to new server:", server.id)
            TeleportService:TeleportToPlaceInstance(PlaceId, server.id, Player)
            return
        end
    end

    warn("❌ No available new servers found.")
end

-- Create GUI
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "ServerHopGUI"
ScreenGui.Parent = game.CoreGui

local Button = Instance.new("TextButton")
Button.Parent = ScreenGui
Button.Text = "Server Hop"
Button.Size = UDim2.new(0, 140, 0, 40)
Button.Position = UDim2.new(0, 20, 0, 100)
Button.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
Button.TextColor3 = Color3.fromRGB(255, 255, 255)
Button.TextSize = 22
Button.Font = Enum.Font.GothamBold
Button.BorderSizePixel = 0
Button.AutoButtonColor = true
Button.Draggable = true
Button.Active = true

local UICorner = Instance.new("UICorner")
UICorner.Parent = Button

-- Button click connects to ServerHop
Button.MouseButton1Click:Connect(ServerHop)
        end)

    PlayerSection:NewButton("DEX", "By Moon", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/infyiff/backup/main/dex.lua"))()
    end)

    PlayerSection:NewButton("DEX (AOC)", "By Moon But got edit by AOC", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/AOCHubReal/AOC-MOONSEC/main/AOC-Dark-Dex_Protect.lua"))()
    end)


    PlayerSection:NewButton("Coming soon...", "?", function()
        -- Script here
    end)


    MainSection:NewButton("Faded", "it da hood script", function()
                game.StarterGui:SetCore("SendNotification", {
    Title = "Bro seriously?"; 
    Text = "script already patched since 2024💔";
    Icon = "rbxassetid://102240518592215";
    Duration = 5;
    })
    wait(0.4)
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

    MainSection:NewButton("Pendulum Hub", " roblox thinks his game is for kids right? (talking about neko)", function()
        loadstring(game: HttpGet('https://raw.githubusercontent.com/Tescalus/Pendulum-Hubs-Source/main/Pendulum%20Hub%20V5.lua'))()
        end)

    MainSection:NewButton("Aure Moded", "Best", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Actyrn/Scripts/main/AzureModded"))()
            end)

    MainSection:NewButton("Zombie Animations (Perment)", "R15/ Warning: THIS SCRIPT STILL HAVING SOME GLITCH", function()
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

    MainSection:NewButton("redz blox fruit", "credit in script and discord", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/REDzHUB/BloxFruits/main/redz9999"))()
        end)

    MainSection:NewButton("redz blade ball", "credit in script and discord", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/REDzHUB/BladeBall/main/redz9999"))()
        end)

    MainSection:NewButton("redz pet simurator99", "credit in script and discord", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/REDzHUB/PetSimulator99/main/redz9999.lua"))()
        end)

    MainSection:NewButton("weird strict dad (only chapter 1)", "moblie&PC", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/yBloodz/Free-scripts/main/Weird%20Strict%20Dad"))()
        end)

    MainSection:NewButton("Da hood VORTEX GUI (OLD/ DO NOT USE THIS DETECTED)", "this is cool", function()
        loadstring(game: HttpGet('https://raw.githubusercontent.com/ImagineProUser/vortexdahood/main/vortex'))()
        end)

    MainSection:NewButton("build a boat (AUTO FARM) (read info)", "click get key in script and you got key no link", function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/NooVster/v1.1/main/Source'))()
        end)

    MainSection:NewButton("FE Energize dance", "nothing...", function()
        loadstring(game:HttpGet(('https://pastebin.com/raw/VzeePjf6'),true))()
        end)

    MainSection:NewButton("FE Energize dance (Remake)", "nothing...", function()
        loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Energize-10408"))()
        end)

    MainSection:NewButton("TBO HUB (DA HOOD)", "Solara support", function()
        setclipboard("loadstring(game:HttpGet('https://raw.githubusercontent.com/cool5013/TBO/main/TBOscript'))()")
        end)

    MainSection:NewButton("GHOST X", "BEST SCRIPT FOR MOBLE PLAYER", function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/GhostPlayer352/Test4/main/GhostHub'))()
        end)

    MainSection:NewButton("Fe Bypass PRISON LIFE", "why here?", function()
        loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\34\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\103\48\48\108\88\112\108\111\105\116\101\114\47\103\48\48\108\88\112\108\111\105\116\101\114\47\109\97\105\110\47\70\101\37\50\48\98\121\112\97\115\115\34\44\32\116\114\117\101\41\41\40\41\10")()
        end)

    MainSection:NewButton("Public Bathroom", "wassup vro", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ADSKerOffical/Budgie-Hub/main/PublicBathroomSimulator"))()
        end)

    MainSection:NewButton("RedZ Brookhaven", "BY REDZ CREDIT IN SCRIPT SEVRER DISCORD", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/REDzHUB/REDzHUB/main/TrollVersion"))()
        end)

    MainSection:NewButton("MENACE V2.1 bypass chat", "MENACE V2.1 BEST version", function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/Anonymous12131/MenaceV2.1.-Best-bypasser/main/obf_i7iAAH834YFQno0FLyuLPcNR5ouJrmvEFdtmXtF1C6u935ghB9DAFK5L3zgsPs6X.lua.txt'))()
        end)

    MainSection:NewButton("Synergy-Networks bypass chat", "not works for mm2 chat (2023-2024)", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Synergy-Networks/products/main/BetterBypasser/loader.lua"))()
        end)

    MainSection:NewButton("Prison life (Tbao)", "work all", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/tbao143/thaibao/main/TbaohubPrisonLife"))()
        end)

    MainSection:NewButton("POP IT TRADING SCRIPT (read info)", "KEY: SubscribeToxdkentryanborbon", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Sponge123456789/Sponge/main/Pop%20it%20update%20V5"))()
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

    MainSection:NewButton("AOC MOBLIE version !!!!!", "AOC MOBLIE", function()
        loadstring(game:HttpGet(('https://pastebin.com/raw/S23kqESN')))()
        end)

    MainSection:NewButton("REJOIN BUTTON IF GOT KICK", "vro am tired to info", function()
        loadstring(game:HttpGet(('https://pastebin.com/raw/Xzh2DBEx')))()
        end)
        
    MainSection:NewButton("X-RAY MINECRAFT GAME", "BLOXCRAFT WORK CRAFTBLOX WORK MINESHARFT WORK SKIBIDI DOP DOP YES YES. WTF HOW IT HERE", function()
        loadstring(game:HttpGet("https://gist.githubusercontent.com/raw/b8d379c1e296ade8305c2fe4df652537"))()
        end)

    MainSection:NewButton("BEDOL HUB", "blade ball script", function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/nqxlOfc/Loaders/main/Blade_Ball.lua'))() 
        end)

    MainSection:NewButton("fe bring player (beta)", "tired to info", function()
        loadstring(game:HttpGet(('https://pastebin.com/raw/Ur6V2GLM'),true))()
        end)

    MainSection:NewButton("fe float", "made by ghost x hub", function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/GhostPlayer352/Test4/main/Float'))()
        end)

    MainSection:NewButton("ChangiVerse (inf seed/money)", "made by Tora IsMe", function()
        game:GetService("ReplicatedStorage").Common.Upgrade:FireServer("Marshmallowrose",-19e19)
        end)

    MainSection:NewButton("FE Trolling GUI (sky hub)", "best", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/yofriendfromschool1/Sky-Hub/main/FE%20Trolling%20GUI.luau"))()
        end)

    MainSection:NewButton("Swag Mode Da hood", "Noinfo", function()
          game.StarterGui:SetCore("SendNotification", {
    Title = 'DO NOT USE THIS SCRIPT LEAVE FAST';
    Text = 'check discord.gg/swagmode for the current status of the script.';
    Duration = 30;
  })
wait(1)
        loadstring(game:HttpGet("https://raw.githubusercontent.com/lerkermer/lua-projects/master/SwagModeV002"))()
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
        wait(1)
        setclipboard("凹凸世界：自由丛林")
                  game.StarterGui:SetCore("SendNotification", {
    Title = 'Notification';
    Text = 'game name has been copy to clipboard';
    Duration = 5;
  })
    end
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
        setclipboard([[
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
]])
        end)

--Tab 3
        local Tab3 = Window:NewTab("• FPS •")
 
local Section3 = Tab3:NewSection("FPS/Booster")
 
Section3:NewButton("Set FPS cap (unlimit fps)", "Nothing happend to your game but you have a lot of FPS!!", function()
--FPS CAP
setfpscap(1e6)
end)


--Tab 4
local Tab4 = Window:NewTab("• play song •")
 
local Section4 = Tab4:NewSection("Song/sound (not FE)")
 
Section4:NewButton("Jumpstyle (1:52)", "TEST", function()
    local Jumpstyle		= Instance.new("Sound")
		Jumpstyle.Parent		= game:GetService("Workspace")
		Jumpstyle.SoundId		= "rbxassetid://1839246711"
		Jumpstyle.Playing		= trues
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
    Sonic_EXE.Pitch      = 1
    Sonic_EXE.Volume		= 4

    game.StarterGui:SetCore("SendNotification", {
        Title = "AOC"; 
        Text = "Sonic.exe";
        Icon = "rbxassetid://102240518592215";
        Duration = 14;
        })
end)



--Credits tab
local Tab5 = Window:NewTab("• Credits •")
 
local Section5 = Tab5:NewSection("Make by AOC/ice")
 
Section5:NewButton("discord server copy link", "TEST", function()
    setclipboard("discord.gg/UmQkTjq6jJ")

        game.StarterGui:SetCore("SendNotification", {
            Title = "AOC"; 
            Text = "Discord Invite has been copy to your clipboard!!";
            Icon = "rbxassetid://125846938071420";
            Duration = 10;
            })
end)

Section5:NewButton("discord AOC owner main account", "TEST", function()
    setclipboard("aoc.hub")
wait(2)
        game.StarterGui:SetCore("SendNotification", {
            Title = "AOC (This main will be unbanned in 2026 27 or 29 august...)"; 
            Text = "User has been copy to your clipboard!!";
            Icon = "rbxassetid://125846938071420";
            Duration = 10;
            })
end)

Section5:NewButton("discord AOC owner alt account (Beluga)", "TEST", function()
    setclipboard("k.6736")

        game.StarterGui:SetCore("SendNotification", {
            Title = "AOC"; 
            Text = "User has been copy to your clipboard!!";
            Icon = "rbxassetid://125846938071420";
            Duration = 10;
            })
end)

Section5:NewButton("discord AOC owner alt account (^^)", "TEST", function()
    setclipboard("secret.script")

        game.StarterGui:SetCore("SendNotification", {
            Title = "AOC"; 
            Text = "User has been copy to your clipboard!!";
            Icon = "rbxassetid://125846938071420";
            Duration = 10;
            })
end)

--Settings (Tab6)
local Tab6 = Window:NewTab("Settings")
local Section6 = Tab6:NewSection("Keybinds")

Section6:NewKeybind("Toggle gui (Pc)", "on/off gui", Enum.KeyCode.V, function()
	Library:ToggleUI()
end)

local Section7 = Tab6:NewSection("Dont worry in mobile we added")
local Section8 = Tab6:NewSection("Toggle Ui button!!")
wait(1)
local UserInputService = game:GetService("UserInputService")

if UserInputService.TouchEnabled and not UserInputService.KeyboardEnabled then
    -- ผู้เล่นใช้โทรศัพท์มือถือ

    local ScreenGui = Instance.new("ScreenGui")
    ScreenGui.Name = "ScreenGui"
    ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
    ScreenGui.ResetOnSpawn = false

    local Toggle = Instance.new("TextButton")
    Toggle.Name = "Toggle_AOC"
    Toggle.Parent = ScreenGui
    Toggle.BackgroundColor3 = Color3.fromRGB(0, 20, 255)
    Toggle.Position = UDim2.new(0, 0, 0.454706937, 0)
    Toggle.Size = UDim2.new(0, 90, 0, 38)
    Toggle.Font = Enum.Font.SourceSans
    Toggle.Text = "AOC"
    Toggle.TextColor3 = Color3.fromRGB(0, 0, 0)
    Toggle.TextSize = 28.000
    Toggle.Draggable = true

    Toggle.MouseButton1Click:Connect(function()
        Library:ToggleUI()
    end)

    local Corner = Instance.new("UICorner")
    Corner.Name = "Corner"
    Corner.Parent = Toggle
end

local Tab7 = Window:NewTab("Updates")
local Section9 = Tab7:NewSection("this script make since 2024")
local Section10 = Tab7:NewSection("We coming back in 2025!!")
local Section11 = Tab7:NewSection("making Resolver anti cheat")