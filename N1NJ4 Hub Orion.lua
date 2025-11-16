--N1NJ4 Hub
--rbxassetid://15719832182 phonk ninja
--rbxassetid://16730731897 Scary eyes
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/AOCHubReal/Ui-sources/main/Orion-Lib-(AOC).lua')))()
local Window = OrionLib:MakeWindow({Name = "N1NJ4 Hub || Version 1.0", HidePremium = false, IntroEnabled = true, IntroText = "N1NJ4 HUB", SaveConfig = true, ConfigFolder = "N1NJ4_V1"})

OrionLib:MakeNotification({
	Name = "N1NJ4 Hub",
	Content = "Thanks for using AOC Hub!",
	Image = "rbxassetid://16730731897", --Scary eyes
	Time = 20
})

local Tab = Window:MakeTab({
	Name = "Main",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Section = Tab:AddSection({
	Name = "FE Scripts"
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
	Name = "Polaria V1.5",
	Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/Xenon-UI-coder/Secret-Script/main/POLARIA%201.5.lua'))()
  	end    
})

Tab:AddButton({
	Name = "Young shelon gui",
	Callback = function()
      		loadstring(game:HttpGet('https://pastebin.com/raw/8ucsyWvX'))()
end
})

Tab:AddButton({
	Name = "Obama jumpscare",
	Callback = function()
      		loadstring(game:HttpGet("https://pastebin.com/raw/mmfmTLnj"))()
  	end    
})

Tab:AddButton({
	Name = "dominator executor",
	Callback = function()
        OrionLib:MakeNotification({
            Name = "Loading the script...",
            Content = "Here your script",
            Image = "rbxassetid://15719832182", --phonk ninja
            Time = 5
        })
		wait(7)
         loadstring(game:HttpGet(('https://pastebin.com/raw/YKRPx9CG'),true))()
  	end    
})

Tab:AddButton({
	Name = "Exser",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/gitluau/luauexser/main/pHzp8uG1PO962o6qucrlP3AJy17eV3B.lua"))();
  	end    
})

Tab:AddButton({
	Name = "T0PK3K",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/Xenon-UI-coder/Secret-Script/main/T0PK3K.lua"))();
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


Tab5:AddLabel("Script Owner: N1NJ4")
Tab5:AddLabel("Credits to aoc.hub")
Tab5:AddLabel("Credits to xenon.hub")

--TEST loadstring(game:HttpGet("https://raw.githubusercontent.com/AOCHubReal/AOC-MOONSEC/refs/heads/main/AOC_Orion_Protect.lua"))()
--TEST 