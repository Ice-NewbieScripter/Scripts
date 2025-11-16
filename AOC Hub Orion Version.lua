--AOC Hub
--rbxassetid://15719832182 phonk ninja
--rbxassetid://16730731897 Scary eyes
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/AOCHubReal/Ui-sources/main/Orion-Lib-(AOC).lua')))() -- https://raw.githubusercontent.com/shlexware/Orion/main/source
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