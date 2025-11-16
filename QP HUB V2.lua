local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/QP-Community/Roblox-Exploit/main/RayfieldModded'))()

local Window = Rayfield:CreateWindow({
   Name = "QP HUB V2",
   LoadingTitle = "by ScriptsQP",
   LoadingSubtitle = "Sub to ScriptsQP",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil, 
      FileName = "QP HUB"
   },
   Discord = {
      Enabled = true,
      Invite = "scriptsqp",
      RememberJoins = true 
   },
   KeySystem = false, 
   KeySettings = {
      Title = "Key : discord.gg/scriptsqp",
      Subtitle = "Join Server For Key",
      Note = "Leak Key = Ban",
      FileName = "Key", 
      SaveKey = true, 
      GrabKeyFromSite = false, 
      Key = {"Sub2ScriptsQP"}
   }
})

Rayfield:Notify({
   Title = "QP HUB",
   Content = "Loaded Successfully!",
   Duration = 6.5,
   Image = 4483362458,
   Actions = { 
      Ignore = {
         Name = "OK",
         Callback = function()
         print("The user tapped OK")
      end
   },
},
})

local Tab = Window:CreateTab("Universal", 4483362458)

local Button = Tab:CreateButton({
  Name = "UTH HUB",
  Callback = function()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/Orealated/Oreal/main/orealated.lol%20UTH%20Loader"))();
  end,
})

local Button = Tab:CreateButton({
  Name = "Admin",
  Callback = function()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/lxte/cmd/main/testing-main.lua"))()
  end,
})

local Button = Tab:CreateButton({
  Name = "FPS & Ping Counter",
  Callback = function()
  loadstring(game:HttpGet("https://shz.al/SjRH"))()
  end,
})

local Button = Tab:CreateButton({
  Name = "Anti Afk",
  Callback = function()
  loadstring(game:GetObjects("rbxassetid://14428356235")[1].Source)()
  end,
})

local Button = Tab:CreateButton({
  Name = "Pov Changer",
  Callback = function()
  loadstring(game:GetObjects("rbxassetid://15046298025")[1].Source)()
  end,
})

local Button = Tab:CreateButton({
  Name = "Chat Bypass | Key : P1d#uT",
  Callback = function()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/vqmpjayZ/Bypass/8e92f1a31635629214ab4ac38217b97c2642d113/vadrifts"))()
  end,
})

local Button = Tab:CreateButton({
  Name = "AutoClicker | Keybind : V",
  Callback = function()
    local time = 0.01 --decrease if too slow increase if too fast

    click = false
    m = game.Players.LocalPlayer:GetMouse()
    m.KeyDown:connect(function(key)
    if key == "v" then
    if click == true then click = false
    elseif
    click == false then click = true
    
    while click == true do 
    wait(time)
    mouse1click()
    end
    end
    end
    end)
  end,
})

local Button = Tab:CreateButton({
  Name = "fps booster",
  Callback = function()
  loadstring(game:HttpGet("https://pastebin.com/raw/8YZ2cc6V"))()
  end,
})

local Button = Tab:CreateButton({
  Name = "inf jump",
  Callback = function()
    local InfiniteJumpEnabled = true
    game:GetService("UserInputService").JumpRequest:connect(function()
        if InfiniteJumpEnabled then
            game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
        end
    end)
  end,
})

local Tab = Window:CreateTab("Counter Blox", 4483362458)

local Button = Tab:CreateButton({
  Name = "Midnight.cc",
  Callback = function()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/laeraz/midnightcc/main/public.lua"))()
  end,
})

local Tab = Window:CreateTab("be a parkour ninja", 4483362458)

local Button = Tab:CreateButton({
  Name = "Hitbox + INFJump",
  Callback = function()
  loadstring(game:HttpGet("https://shz.al/JcQM"))()
  end,
})

local Tab = Window:CreateTab("Frontlines", 4483362458)

local Button = Tab:CreateButton({
  Name = "Thunder Client",
  Callback = function()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/ThunderScriptSolutions/ThunderClientForSolara/main/ThunderClientGameSupport"))()
  end,
})

local Tab = Window:CreateTab("Dungeon Quest", 4483362458)

local Button = Tab:CreateButton({
  Name = "NS HUB",
  Callback = function()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/OhhMyGehlee/DQ/main/Solara"))()
  end,
})

local Tab = Window:CreateTab("Gym League", 4483362458)

local Button = Tab:CreateButton({
  Name = "Lightux HUB",
  Callback = function()
  loadstring(game:HttpGet('https://raw.githubusercontent.com/cool83birdcarfly02six/LightuxSolaraSup/main/README.md'))()
  end,
})

local Button = Tab:CreateButton({
  Name = "Speed X HUB",
  Callback = function()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Script-Games/main/Gym%20League.lua"))()
  end,
})

local Tab = Window:CreateTab("Phantom Force", 4483362458)

local Button = Tab:CreateButton({
  Name = "Thunder Client",
  Callback = function()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/ThunderScriptSolutions/ThunderClientForSolara/main/ThunderClientGameSupport"))()
  end,
})

local Tab = Window:CreateTab("Arsenal", 4483362458)

local Button = Tab:CreateButton({
  Name = "Thunder Client",
  Callback = function()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/ThunderScriptSolutions/ThunderClientForSolara/main/ThunderClientGameSupport"))()
  end,
})

local Button = Tab:CreateButton({
  Name = "Mysploit",
  Callback = function()
  loadstring(game:HttpGet('https://raw.githubusercontent.com/wuhaz/arsenal/main/main.lua'))() 
  end,
})

local Button = Tab:CreateButton({
  Name = "Void HUB",
  Callback = function()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/VoidzyScripter/VoidHub-/main/Source%20Code"))();
  end,
})

 Tab = Window:CreateTab("MM2", 4483362458)

local Button = Tab:CreateButton({
  Name = "Thunder Client",
  Callback = function()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/ThunderScriptSolutions/ThunderClientForSolara/main/ThunderClientGameSupport"))()
  end,
})

local Button = Tab:CreateButton({
  Name = "R3TH PRIV HUB",
  Callback = function()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/SimplySentinel/r3th/main/loader.lua"))()
  end,
})

local Tab = Window:CreateTab("Fabled Legacy", 4483362458)

local Button = Tab:CreateButton({
  Name = "NS HUB",
  Callback = function()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/OhhMyGehlee/FL/main/Solara"))()
  end,
})

local Tab = Window:CreateTab("Horrors RNG", 4483362458)

local Button = Tab:CreateButton({
  Name = "RINNS HUB",
  Callback = function()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/R1nn1/MainMenu1/main/MainMenuV1.2"))()
  end,
})

local Tab = Window:CreateTab("Airsoft FE", 4483362458)

local Button = Tab:CreateButton({
  Name = "Hitbox",
  Callback = function()
  loadstring(game:HttpGet("https://shz.al/C8Q5"))()
  end,
})

local Tab = Window:CreateTab("Underground War 2", 4483362458)

local Button = Tab:CreateButton({
  Name = "RINNS HUB",
  Callback = function()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/R1nn1/MainMenu1/main/MainMenuV1.2"))()
  end,
})

local Tab = Window:CreateTab("TSBG", 4483362458)

local Button = Tab:CreateButton({
  Name = "Lightux HUB",
  Callback = function()
  loadstring(game:HttpGet(('https://raw.githubusercontent.com/cool83birdcarfly02six/Lightux/main/README.md'),true))()loadstring(game:HttpGet(('https://raw.githubusercontent.com/cool83birdcarfly02six/Lightux/main/README.md'),true))()
  end,
})

local Button = Tab:CreateButton({
  Name = "NBLM HUB",
  Callback = function()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/NBLMSCRIPTS/NBLMSCRIPTHUB/main/SKIBIDI"))()
  end,
})

local Button = Tab:CreateButton({
  Name = "Lightux HUB",
  Callback = function()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/OhhMyGehlee/TSBG/main/Solara"))()
  end,
})

local Tab = Window:CreateTab("Lumber Tycoon 2", 4483362458)

local Button = Tab:CreateButton({
  Name = "Butter HUB",
  Callback = function()
  loadstring(game:HttpGet('https://raw.githubusercontent.com/Butterisgood/Butter/main/Root2.lua'))("")
  end,
})

local Tab = Window:CreateTab("Zombie Uprising", 4483362458)

local Button = Tab:CreateButton({
  Name = "Unknow HUB",
  Callback = function()
  loadstring(game:HttpGet('https://raw.githubusercontent.com/Unknownproooolucky/Unknown-Hub-X-Universal-Games/main/Games/Zombie-Uprising'))()
  end,
})

local Tab = Window:CreateTab("Zombie Attack", 4483362458)

local Button = Tab:CreateButton({
  Name = "Unknow HUB",
  Callback = function()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/Unknownproooolucky/Unknown-ZombieAttack/main/Gui.lua"))()
  end,
})

local Tab = Window:CreateTab("TPS: Street Soccer", 4483362458)

local Button = Tab:CreateButton({
  Name = "Byte HUB",
  Callback = function()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/DamThien332/TPS-Script/main/Main-ByteHub.lua"))()
  end,
})

local Tab = Window:CreateTab("Scythe Simulator", 4483362458)

local Button = Tab:CreateButton({
  Name = "OP SCRIPT",
  Callback = function()
  loadstring(game:HttpGet("https://shz.al/SJBh"))()
  end,
})

local Button = Tab:CreateButton({
  Name = "SS HUB",
  Callback = function()
  loadstring(game:HttpGet("https://shz.al/GdGh"))()
  end,
})

local Tab = Window:CreateTab("Jujutsu Shenanigans", 4483362458)

local Button = Tab:CreateButton({
  Name = "NS HUB",
  Callback = function()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/OhhMyGehlee/JJS/main/Solara"))()
  end,
})

local Tab = Window:CreateTab("Lifting Simulator", 4483362458)

local Button = Tab:CreateButton({
  Name = "LS HUB",
  Callback = function()
  loadstring(game:HttpGet("https://shz.al/kRfb"))()
  end,
})

local Tab = Window:CreateTab("Kat", 4483362458)

local Button = Tab:CreateButton({
  Name = "BelugaWare",
  Callback = function()
  loadstring(game:HttpGet('https://raw.githubusercontent.com/scripter1cursed1rade/BelugaWare-realesed-1.3/main/belugaware.lua'))()
  end,
})

local Tab = Window:CreateTab("Sheep Tycoon", 4483362458)

local Button = Tab:CreateButton({
  Name = "INF Wool",
  Callback = function()
  loadstring(game:HttpGet("https://shz.al/H7hR"))()
  end,
})

local Tab = Window:CreateTab("King of The Hill", 4483362458)

local Button = Tab:CreateButton({
  Name = "Permanent GodSword",
  Callback = function()
  game:GetService("ReplicatedStorage").Events.purchaseWeapon:InvokeServer("God Sword",0)
  end,
})

local Tab = Window:CreateTab("Demonfall", 4483362458)

local Button = Tab:CreateButton({
  Name = "NS HUB",
  Callback = function()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/OhhMyGehlee/DF2/main/Solara"))()
  end,
})

local Tab = Window:CreateTab("Allblox  Battle", 4483362458)

local Button = Tab:CreateButton({
  Name = "NS HUB",
  Callback = function()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/OhhMyGehlee/ABB/main/Solara/Mobile"))()
  end,
})

local Tab = Window:CreateTab("Event RNG", 4483362458)

local Button = Tab:CreateButton({
  Name = "INF Money",
  Callback = function()
  loadstring(game:HttpGet("https://shz.al/YjR4"))()
  end,
})

local Tab = Window:CreateTab("Strongest Punch Simulator", 4483362458)

local Button = Tab:CreateButton({
  Name = "Oujaboard HUB",
  Callback = function()
  loadstring(game:HttpGet('https://raw.githubusercontent.com/oujaboard/voidpoptart/master/strongestpunchsim'))()
  end,
})

local Button = Tab:CreateButton({
  Name = "AutoPunch",
  Callback = function()
  loadstring(game:HttpGet("https://shz.al/PZMX"))()
  end,
})

local Tab = Window:CreateTab("Blox Fruit", 4483362458)

local Button = Tab:CreateButton({
  Name = "Zen HUB",
  Callback = function()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/Zenhubtop/zen_hub_pr/main/zennewwwwui.lua", true))()
  end,
})

local Tab = Window:CreateTab("King Legacy", 4483362458)

local Button = Tab:CreateButton({
  Name = "ArcHUB",
  Callback = function()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/ChopLoris/ArcHub/main/PC.lua"))()
  end,
})

local Tab = Window:CreateTab("CURSED ARENA", 4483362458)

local Button = Tab:CreateButton({
  Name = "NS HUB",
  Callback = function()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/OhhMyGehlee/CA2/main/Solara"))()
  end,
})

local Tab = Window:CreateTab("Cold War", 4483362458)

local Button = Tab:CreateButton({
  Name = "Blindness HUB",
  Callback = function()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/washingtontrichkid2/Newgay/main/Coldwar"))()
  end,
})

local Tab = Window:CreateTab("Project Slayers", 4483362458)

local Button = Tab:CreateButton({
  Name = "NukevsCity HUB",
  Callback = function()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/NukeVsCity/Scripts2024/main/newprojslayrs"))()
  end,
})

local Tab = Window:CreateTab("Da Strike", 4483362458)

local Button = Tab:CreateButton({
  Name = "Vascal Lock",
  Callback = function()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/Gwaporoblox/VascalLock/main/README.md"))()
  end,
})

local Tab = Window:CreateTab("BladeBall", 4483362458)

local Button = Tab:CreateButton({
  Name = "S0l HUB",
  Callback = function()
  loadstring(game:HttpGet("https://rentry.co/7wrzwray/raw",true))()
  end,
})

local Button = Tab:CreateButton({
  Name = "Pitbull HUB",
  Callback = function()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/SoyAdriYT/PitbullHub--/main/Destroyer", true))()
  end,
})

local Button = Tab:CreateButton({
  Name = "GPLLP HUB",
  Callback = function()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/songolasangkatangw/memek/main/adakontolsamamemek.lua"))()
  end,
})

local Tab = Window:CreateTab("Attack on Titan Revolution", 4483362458)

local Button = Tab:CreateButton({
  Name = "Goomba HUB",
  Callback = function()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/JustLevel/working-newbie/main/AOTR.lua"))()
  end,
})

local Tab = Window:CreateTab("Bedwars", 4483362458)

local Button = Tab:CreateButton({
  Name = "Aristois",
  Callback = function()
  pcall(function() loadstring(game:HttpGet('https://raw.githubusercontent.com/XzynAstralz/Aristois/main/NewMainScript.lua'))() end)
  end,
})

local Button = Tab:CreateButton({
  Name = "CoCoKiwi",
  Callback = function()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/cocotv666/CocoKiwi/main/Cocokiwi"))()
  end,
})

local Button = Tab:CreateButton({
  Name = "Red Raven",
  Callback = function()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/cocotv666/Red-Raven/main/RedRaven_Loader"))()
  end,
})

local Button = Tab:CreateButton({
  Name = "Ghostware ( Skidded )",
  Callback = function()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/CakScripts/GhostWare/main/MainScript"))()
  end,
})

local Tab = Window:CreateTab("Bridge Duels", 4483362458)

local Button = Tab:CreateButton({
  Name = "Red Raven",
  Callback = function()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/cocotv666/Red-Raven/main/RedRaven_Loader"))()
  end,
})

local Tab = Window:CreateTab("Ninja Legend", 4483362458)

local Button = Tab:CreateButton({
  Name = "Terror HUB",
  Callback = function()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/Tropxzz/Terror/main/Games/NinjaLegends.lua", true))()
  end,
})

local Tab = Window:CreateTab("Piggy", 4483362458)

local Button = Tab:CreateButton({
  Name = "get item",
  Callback = function()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/QP-Community/Roblox/main/Piggy"))()
  end,
})

local Tab = Window:CreateTab("Car crushers 2", 4483362458)

local Button = Tab:CreateButton({
  Name = "cathub",
  Callback = function()
  loadstring(game:HttpGet('https://whimper.xyz/cathub.lua'))()
  end,
})

local Tab = Window:CreateTab("Drive World", 4483362458)

local Button = Tab:CreateButton({
  Name = "Angel HUB",
  Callback = function()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/QP-Community/Roblox/main/DriveWorld"))()
  end,
})

local Tab = Window:CreateTab("Warrior Simulator", 4483362458)

local Button = Tab:CreateButton({
  Name = "DKHUB",
  Callback = function()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/Christian2703/Main/main/Mainscript", true))()
  end,
})

local Tab = Window:CreateTab("Legend Of Speed", 4483362458)

local Button = Tab:CreateButton({
  Name = "LOS HUB",
  Callback = function()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/SkoterScripts/Legends-Of-Speed-Script/main/Script%20For%20Legends%20Of%20Speed.txt"))()
  end,
})

local Tab = Window:CreateTab("Flee the Facility", 4483362458)

local Button = Tab:CreateButton({
  Name = "FF HUB",
  Callback = function()
  loadstring(game:HttpGet("https://pastebin.com/raw/1GEWA6th"))()
  end,
})

local Tab = Window:CreateTab("PS99", 4483362458)

local Button = Tab:CreateButton({
  Name = "PS99 HUB",
  Callback = function()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/QP-Community/Roblox/main/PS99"))()
  end,
})