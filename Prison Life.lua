if game.PlaceId == 155615604 then
-- Gui to Lua
-- Version: 3.2

-- Instances:

local Themes = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local Top = Instance.new("Frame")
local UICorner_2 = Instance.new("UICorner")
local title = Instance.new("TextLabel")
local BackScroller = Instance.new("Frame")
local UICorner_3 = Instance.new("UICorner")
local ScrollingFrame = Instance.new("ScrollingFrame")
local LightTheme = Instance.new("TextButton")
local UICorner_4 = Instance.new("UICorner")
local DarkTheme = Instance.new("TextButton")
local UICorner_5 = Instance.new("UICorner")
local GrapeTheme = Instance.new("TextButton")
local UICorner_6 = Instance.new("UICorner")
local BloodTheme = Instance.new("TextButton")
local UICorner_7 = Instance.new("UICorner")
local Midnight = Instance.new("TextButton")
local UICorner_8 = Instance.new("UICorner")
local Synapse = Instance.new("TextButton")
local UICorner_9 = Instance.new("UICorner")
local Recommended = Instance.new("TextLabel")
local Frame = Instance.new("Frame")
local Frame_2 = Instance.new("Frame")
local Recommended_2 = Instance.new("TextLabel")
local Frame_3 = Instance.new("Frame")
local Frame_4 = Instance.new("Frame")
local Sentinel = Instance.new("TextButton")
local UICorner_10 = Instance.new("UICorner")
local Serpent = Instance.new("TextButton")
local UICorner_11 = Instance.new("UICorner")
local Ocean = Instance.new("TextButton")
local UICorner_12 = Instance.new("UICorner")

--Properties:

Themes.Name = "Themes"
Themes.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
Themes.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Main.Name = "Main"
Main.Parent = Themes
Main.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
Main.ClipsDescendants = true
Main.Position = UDim2.new(0.00800000038, 0, -0.5, 0)
Main.Size = UDim2.new(0, 144, 0, 218)

UICorner.CornerRadius = UDim.new(0, 3)
UICorner.Parent = Main

Top.Name = "Top"
Top.Parent = Main
Top.BackgroundColor3 = Color3.fromRGB(16, 16, 16)
Top.Position = UDim2.new(-0.0781672299, 0, 0, 0)
Top.Size = UDim2.new(0, 165, 0, 21)

UICorner_2.CornerRadius = UDim.new(0, 3)
UICorner_2.Parent = Top

title.Name = "title"
title.Parent = Top
title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
title.BackgroundTransparency = 1.000
title.Position = UDim2.new(0.0672873259, 0, -0.0317455456, 0)
title.Size = UDim2.new(0, 144, 0, 21)
title.Font = Enum.Font.SourceSans
title.Text = "N1NJ4's Theme Picker"
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.TextSize = 14.000

BackScroller.Name = "BackScroller"
BackScroller.Parent = Main
BackScroller.BackgroundColor3 = Color3.fromRGB(16, 16, 16)
BackScroller.Position = UDim2.new(0.0468327738, 0, 0.123853214, 0)
BackScroller.Size = UDim2.new(0, 131, 0, 184)

UICorner_3.CornerRadius = UDim.new(0, 3)
UICorner_3.Parent = BackScroller

ScrollingFrame.Parent = BackScroller
ScrollingFrame.Active = true
ScrollingFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ScrollingFrame.BackgroundTransparency = 1.000
ScrollingFrame.BorderSizePixel = 0
ScrollingFrame.Size = UDim2.new(0, 130, 0, 184)

LightTheme.Name = "LightTheme"
LightTheme.Parent = ScrollingFrame
LightTheme.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
LightTheme.Position = UDim2.new(0.0693482012, 0, 0.100543477, 0)
LightTheme.Size = UDim2.new(0, 104, 0, 24)
LightTheme.Font = Enum.Font.SourceSansBold
LightTheme.Text = "Light Theme"
LightTheme.TextColor3 = Color3.fromRGB(255, 255, 255)
LightTheme.TextSize = 14.000
LightTheme.TextWrapped = true

UICorner_4.CornerRadius = UDim.new(0, 3)
UICorner_4.Parent = LightTheme

DarkTheme.Name = "DarkTheme"
DarkTheme.Parent = ScrollingFrame
DarkTheme.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
DarkTheme.Position = UDim2.new(0.0693482012, 0, 0.184782609, 0)
DarkTheme.Size = UDim2.new(0, 104, 0, 24)
DarkTheme.Font = Enum.Font.SourceSansBold
DarkTheme.Text = "Dark Theme"
DarkTheme.TextColor3 = Color3.fromRGB(255, 255, 255)
DarkTheme.TextSize = 14.000
DarkTheme.TextWrapped = true

UICorner_5.CornerRadius = UDim.new(0, 3)
UICorner_5.Parent = DarkTheme

GrapeTheme.Name = "GrapeTheme"
GrapeTheme.Parent = ScrollingFrame
GrapeTheme.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
GrapeTheme.Position = UDim2.new(0.0689999983, 0, 0.272500008, 0)
GrapeTheme.Size = UDim2.new(0, 104, 0, 24)
GrapeTheme.Font = Enum.Font.SourceSansBold
GrapeTheme.Text = "Grape Theme"
GrapeTheme.TextColor3 = Color3.fromRGB(255, 255, 255)
GrapeTheme.TextSize = 14.000
GrapeTheme.TextWrapped = true

UICorner_6.CornerRadius = UDim.new(0, 3)
UICorner_6.Parent = GrapeTheme

BloodTheme.Name = "BloodTheme"
BloodTheme.Parent = ScrollingFrame
BloodTheme.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
BloodTheme.Position = UDim2.new(0.0689999983, 0, 0.362173915, 0)
BloodTheme.Size = UDim2.new(0, 104, 0, 24)
BloodTheme.Font = Enum.Font.SourceSansBold
BloodTheme.Text = "Blood Theme"
BloodTheme.TextColor3 = Color3.fromRGB(255, 255, 255)
BloodTheme.TextSize = 14.000
BloodTheme.TextWrapped = true

UICorner_7.CornerRadius = UDim.new(0, 3)
UICorner_7.Parent = BloodTheme

Midnight.Name = "Midnight"
Midnight.Parent = ScrollingFrame
Midnight.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
Midnight.Position = UDim2.new(0.0689999983, 0, 0.449130446, 0)
Midnight.Size = UDim2.new(0, 104, 0, 24)
Midnight.Font = Enum.Font.SourceSansBold
Midnight.Text = "Midnight"
Midnight.TextColor3 = Color3.fromRGB(255, 255, 255)
Midnight.TextSize = 14.000
Midnight.TextWrapped = true

UICorner_8.CornerRadius = UDim.new(0, 3)
UICorner_8.Parent = Midnight

Synapse.Name = "Synapse"
Synapse.Parent = ScrollingFrame
Synapse.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
Synapse.Position = UDim2.new(0.0689999983, 0, 0.533369541, 0)
Synapse.Size = UDim2.new(0, 104, 0, 24)
Synapse.Font = Enum.Font.SourceSansBold
Synapse.Text = "Synapse"
Synapse.TextColor3 = Color3.fromRGB(255, 255, 255)
Synapse.TextSize = 14.000
Synapse.TextWrapped = true

UICorner_9.CornerRadius = UDim.new(0, 3)
UICorner_9.Parent = Synapse

Recommended.Name = "Recommended"
Recommended.Parent = ScrollingFrame
Recommended.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Recommended.BackgroundTransparency = 1.000
Recommended.Position = UDim2.new(-0.27692309, 0, 0.570652187, 0)
Recommended.Size = UDim2.new(0, 200, 0, 50)
Recommended.Font = Enum.Font.SourceSansBold
Recommended.Text = "Recommended"
Recommended.TextColor3 = Color3.fromRGB(255, 255, 255)
Recommended.TextSize = 14.000

Frame.Parent = ScrollingFrame
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.BorderColor3 = Color3.fromRGB(255, 255, 255)
Frame.Position = UDim2.new(0.0923076943, 0, 0.61717391, 0)
Frame.Size = UDim2.new(0, 100, 0, 0)

Frame_2.Parent = ScrollingFrame
Frame_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame_2.BorderColor3 = Color3.fromRGB(255, 255, 255)
Frame_2.Position = UDim2.new(0.0923077017, 0, 0.668804348, 0)
Frame_2.Size = UDim2.new(0, 100, 0, 0)

Recommended_2.Name = "Recommended"
Recommended_2.Parent = ScrollingFrame
Recommended_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Recommended_2.BackgroundTransparency = 1.000
Recommended_2.Position = UDim2.new(-0.27692309, 0, -0.019021716, 0)
Recommended_2.Size = UDim2.new(0, 200, 0, 50)
Recommended_2.Font = Enum.Font.SourceSansBold
Recommended_2.Text = "Themes"
Recommended_2.TextColor3 = Color3.fromRGB(255, 255, 255)
Recommended_2.TextSize = 14.000

Frame_3.Parent = ScrollingFrame
Frame_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame_3.BorderColor3 = Color3.fromRGB(255, 255, 255)
Frame_3.Position = UDim2.new(0.0923077017, 0, 0.079130441, 0)
Frame_3.Size = UDim2.new(0, 100, 0, 0)

Frame_4.Parent = ScrollingFrame
Frame_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame_4.BorderColor3 = Color3.fromRGB(255, 255, 255)
Frame_4.Position = UDim2.new(0.0923076943, 0, 0.0275000073, 0)
Frame_4.Size = UDim2.new(0, 100, 0, 0)

Sentinel.Name = "Sentinel"
Sentinel.Parent = ScrollingFrame
Sentinel.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
Sentinel.Position = UDim2.new(0.0689999983, 0, 0.704565167, 0)
Sentinel.Size = UDim2.new(0, 104, 0, 24)
Sentinel.Font = Enum.Font.SourceSansBold
Sentinel.Text = "Sentinel"
Sentinel.TextColor3 = Color3.fromRGB(255, 255, 255)
Sentinel.TextSize = 14.000
Sentinel.TextWrapped = true

UICorner_10.CornerRadius = UDim.new(0, 3)
UICorner_10.Parent = Sentinel

Serpent.Name = "Serpent"
Serpent.Parent = ScrollingFrame
Serpent.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
Serpent.Position = UDim2.new(0.0689999983, 0, 0.791521728, 0)
Serpent.Size = UDim2.new(0, 104, 0, 24)
Serpent.Font = Enum.Font.SourceSansBold
Serpent.Text = "Serpent"
Serpent.TextColor3 = Color3.fromRGB(255, 255, 255)
Serpent.TextSize = 14.000
Serpent.TextWrapped = true

UICorner_11.CornerRadius = UDim.new(0, 3)
UICorner_11.Parent = Serpent

Ocean.Name = "Ocean"
Ocean.Parent = ScrollingFrame
Ocean.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
Ocean.Position = UDim2.new(0.0689999983, 0, 0.878478229, 0)
Ocean.Size = UDim2.new(0, 104, 0, 24)
Ocean.Font = Enum.Font.SourceSansBold
Ocean.Text = "Ocean"
Ocean.TextColor3 = Color3.fromRGB(255, 255, 255)
Ocean.TextSize = 14.000
Ocean.TextWrapped = true

UICorner_12.CornerRadius = UDim.new(0, 3)
UICorner_12.Parent = Ocean

-- Scripts:

local function MPHSAXF_fake_script() -- LightTheme.LocalScript 
	local script = Instance.new('LocalScript', LightTheme)

	script.Parent.MouseButton1Click:Connect(function()
		script.Parent.Parent.Parent.Parent:TweenPosition(UDim2.new(0.008, 0,-0.5, 0, "Linear"))
		
		wait(1)
		local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
		local Window = Library.CreateLib("Prison Life", "LightTheme")
		local Tab = Window:NewTab("Combat")
		local Local2 = Window:NewTab("LocalPlayer")
		local Local = Local2:NewSection("LocalPlayer")
		local Misc = Window:NewTab("Miscellaneous")
		local MiscSection = Misc:NewSection("Miscellaneous")
		local Section = Tab:NewSection("Combat")
		local Section2 = Tab:NewSection("Gun Mods")
		local Others = Tab:NewSection("Others")
		local Teleports = Window:NewTab("Teleports")
		local Section44 = Teleports:NewSection("Teleports")
		local AdminCommands = Window:NewTab("Admin Commands")
		local Credits = Window:NewTab("Credits")
		local CreditsSection = Credits:NewSection("Credits")
		local AdminSection = AdminCommands:NewSection("Admin")
		local Commands = AdminCommands:NewSection("Commands:")
	
	
		--Guns For Gun Mods
	
	
	
		Section:NewButton("Gives You All Items(No Gamepasses)", "Grab All Items!", function()
			print("All Weapons Given!")
			workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["Remington 870"].ITEMPICKUP)
			workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver.M9.ITEMPICKUP)
			workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.single.Hammer.ITEMPICKUP)
			workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["AK-47"].ITEMPICKUP)
		end)
		Section:NewToggle("Invisible Guns", "Makes Your Guns Invisible(NOT FE)", function(state)
			if state then
	
				while wait() do
	
					for i,v in pairs(game.Players.LocalPlayer.Backpack["AK-47"].Model:GetChildren()) do
						if v.Name == "Part" then
							v.Transparency = 1
						end
					end
	
					local M9 = game.Players.LocalPlayer.Backpack["M9"].Part
	
					M9.Transparency = 1
	
					for i,a in pairs(game.Players.LocalPlayer.Backpack["Remington 870"].Model:GetChildren()) do
						if a.Name == "Part" then
							a.Transparency = 1
						end
					end
				end
			else
	
	
				while wait() do
					for i,v in pairs(game.Players.LocalPlayer.Backpack["AK-47"].Model:GetChildren()) do
						if v.Name == "Part" then
							v.Transparency = 0
						end
					end
	
					local M9 = game.Players.LocalPlayer.Backpack["M9"].Part
	
					M9.Transparency = 0
	
					for i,b in pairs(game.Players.LocalPlayer.Backpack["Remington 870"].Model:GetChildren()) do
						if b.Name == "Part" then
							b.Transparency = 0
						end
					end
				end
			end
		end)
		MiscSection:NewButton("Remove all Doors", "Removes Every Door!", function()
			for i,d in pairs(game.Workspace.Doors:GetChildren()) do
				if d.ClassName == "Model" then
					d:Destroy()
				end
			end
		end)
	
		Section2:NewButton("Auto Fire", "Turns On AutoFire!", function()
			while wait() do
				local Remington = require(game.Players.LocalPlayer.Backpack["Remington 870"].GunStates)
				local Pistol = require(game.Players.LocalPlayer.Backpack.M9.GunStates)
				local AK = require(game.Players.LocalPlayer.Backpack["AK-47"].GunStates)
				Remington["AutoFire"] = true
				Pistol["AutoFire"] = true
				AK["AutoFire"] = true
			end
		end)
		Section2:NewButton("Fire Rate", "Decreases Your Fire Rate!", function()
			while wait() do
				local Remington = require(game.Players.LocalPlayer.Backpack["Remington 870"].GunStates)
				local Pistol = require(game.Players.LocalPlayer.Backpack.M9.GunStates)
				local AK = require(game.Players.LocalPlayer.Backpack["AK-47"].GunStates)
				Remington["FireRate"] = 0.00001
				Pistol["FireRate"] = 0.00001
				AK["FireRate"] = 0.00001
			end
		end)
		Section2:NewButton("Spread", "Decreases Your Spread!", function()
			while wait() do
				local Remington = require(game.Players.LocalPlayer.Backpack["Remington 870"].GunStates)
				local Pistol = require(game.Players.LocalPlayer.Backpack.M9.GunStates)
				local AK = require(game.Players.LocalPlayer.Backpack["AK-47"].GunStates)
				Remington["Spread"] = 0
				Pistol["Spread"] = 0
				AK["Spread"] = 0
			end
		end)
		Section2:NewButton("Damage", "Adds More Damage To Other Players!", function()
			while wait() do
				local Remington = require(game.Players.LocalPlayer.Backpack["Remington 870"].GunStates)
				local Pistol = require(game.Players.LocalPlayer.Backpack.M9.GunStates)
				local AK = require(game.Players.LocalPlayer.Backpack["AK-47"].GunStates)
				Remington["Damage"] = 99999999999
				Pistol["Damage"] = 99999999999
				AK["Damage"] = 99999999999
			end
		end)
		Section2:NewButton("Store Ammo", "Adds More Stored ammo To your guns!", function()
			while wait() do
				local Remington = require(game.Players.LocalPlayer.Backpack["Remington 870"].GunStates)
				local Pistol = require(game.Players.LocalPlayer.Backpack.M9.GunStates)
				local AK = require(game.Players.LocalPlayer.Backpack["AK-47"].GunStates)
				Remington["StoredAmmo"] = 999999999999
				Pistol["StoredAmmo"] = 999999999999
				AK["StoredAmmo"] = 999999999999
			end
		end)
		Section2:NewButton("Current Ammo", "Adds Ammo!", function()
			while wait() do
				local Remington = require(game.Players.LocalPlayer.Backpack["Remington 870"].GunStates)
				local Pistol = require(game.Players.LocalPlayer.Backpack.M9.GunStates)
				local AK = require(game.Players.LocalPlayer.Backpack["AK-47"].GunStates)
				Remington["CurrentAmmo"] = 999999999999
				Pistol["CurrentAmmo"] = 999999999999
				AK["CurrentAmmo"] = 999999999999
			end
		end)
	
		Others:NewTextBox("Reload Time[BROKEN]", "Adds Less Reload Time!", function(txt)
			print(txt)
			while wait() do
				local Remington = require(game.Players.LocalPlayer.Backpack["Remington 870"].GunStates)
				local Pistol = require(game.Players.LocalPlayer.Backpack.M9.GunStates)
				local AK = require(game.Players.LocalPlayer.Backpack["AK-47"].GunStates)
				Remington["ReloadTime"] = txt
				Pistol["ReloadTime"] = txt
				AK["ReloadTime"] = txt
			end
		end)
	
		AdminSection:NewButton("Admin Commands", "Gives You Commands!", function()
			loadstring(game:HttpGet(('https://raw.githubusercontent.com/XTheMasterX/Scripts/Main/PrisonLife'),true))()
		end)
	
		MiscSection:NewButton("Remove All Fences", "All Fences Will Be Removed!", function()
			for i,l in pairs(game.Workspace["Prison_Fences"]:GetChildren()) do
				if l.Name == "fence" then
					l:Destroy()
				end
			end
		end)
	
		MiscSection:NewButton("Remove All Gates", "All Fences Will Be Removed!", function()
			game.Workspace["Prison_Fences"]["Prison_Gate"]:Destroy()
			game.Workspace["Prison_Fences"]["gate"]:Destroy()
		end)
	
		Section44:NewButton("Outside of prison", "Teleports You outside of the prison!", function()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(451.6684265136719, 98.0399169921875, 2216.338134765625)
		end)
		Section44:NewButton("Prison Yard", "Teleports You to the Prison Yard", function()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(736.4671630859375, 97.99992370605469, 2517.583740234375)
		end)
		Section44:NewButton("Kitchen", "Teleports You to the Kitchen!", function()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(906.641845703125, 99.98993682861328, 2237.67333984375)
		end)
		Section44:NewButton("Prison Cells", "Teleports You to the Prison Cells!", function()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(919.5551147460938, 99.98998260498047, 2441.700927734375)
		end)
		Section44:NewButton("Surveilance Room", "Teleports You to the Surveilance Room!", function()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(795.251953125, 99.98998260498047, 2327.720703125)
		end)
		Section44:NewButton("Break Room", "Teleports You to the Break Room!", function()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(800.0896606445312, 99.98998260498047, 2266.71630859375)
		end)
		Section44:NewButton("Police Armory", "Teleports You to the Police Armory!", function()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(837.2889404296875, 99.98998260498047, 2270.99658203125)
		end)
		Section44:NewButton("Police Room", "Teleports to to the Police Room", function()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(836.5386352539062, 99.98998260498047, 2320.604248046875)
		end)
		Section44:NewButton("Cafeteria", "Teleports you to the Cafeteria!", function()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(918.994873046875, 99.98993682861328, 2325.73095703125)
		end)
		Section44:NewButton("Criminal Base Inside", "Teleports you to the Criminal Base Inside!", function()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-975.8451538085938, 109.32379150390625, 2053.11376953125)
		end)
		-- Commands
		Commands:NewLabel(":rank player — gives player commands")
		Commands:NewLabel(":kill player — kills player")
		Commands:NewLabel(":sa player — spam arrest player")
		Commands:NewLabel(":crim player — makes player criminal")
		Commands:NewLabel(":bring player — brings player")
		Commands:NewLabel(":goto player — makes you go to player")
		Commands:NewLabel(":void player — voids player")
		Commands:NewLabel(":key player — gives player keycard")
		Commands:NewLabel(":cuffs player — gives player handcuffs")
		Commands:NewLabel(":trap player — traps player")
		Commands:NewLabel(":yard player — brings player to yard")
		Commands:NewLabel(":base player — brings player to criminal base")
		Commands:NewLabel(":prison player — brings player to prison")
		Commands:NewLabel(":lk — loopkills player")
		Commands:NewLabel(":aura — gives player kill aura")
		Commands:NewLabel(":virus — makes anyone who touch player dies")
		Commands:NewLabel(":oof — kills everyone")
		Commands:NewLabel(":spike — lag spike")
		Commands:NewLabel(":bspike — big lag spike")
		Commands:NewLabel(":lag — lags the server")
		Commands:NewLabel(":crash — crashes the server")
		Commands:NewLabel(":tk player — teleport you to player and kills them")
		Commands:NewLabel(":ltk player — loops tpkill")
		Commands:NewLabel(":logs — prints all used cmds")
	
	
		CreditsSection:NewLabel("Scripts Made By: N1NJ4")
		CreditsSection:NewLabel("UI Library: Kavo UI Library")
		CreditsSection:NewLabel("UI Library Made by: xHeptc")
	
		Local:NewSlider("Walkspeed", "Changes Your Walking Speed!", 500, 16, function(S) -- 500 (MaxValue) | 0 (MinValue)
			game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = S
		end)
		Local:NewSlider("JumpPower", "Changes Your Walking Speed!", 500, 16, function(P) -- 500 (MaxValue) | 0 (MinValue)
			game.Players.LocalPlayer.Character.Humanoid.JumpPower = P
		end)
		Local:NewTextBox("NoClip Key", "Adds a key to ur no clip!", function(NoClip)
			print("key set to "..NoClip)
			local StealthMode = true -- If game has an anticheat that checks the logs
	
			local Indicator
	
			if not StealthMode then
				local ScreenGui = Instance.new("ScreenGui", game.CoreGui)
				print("NOCLIP: Press Q to Activate")
				Indicator = Instance.new("TextLabel", ScreenGui)
				Indicator.AnchorPoint = Vector2.new(0, 1)
				Indicator.Position = UDim2.new(0, 0, 1, 0)
				Indicator.Size = UDim2.new(0, 200, 0, 50)
				Indicator.BackgroundTransparency = 1
				Indicator.TextScaled = true
				Indicator.TextStrokeTransparency = 0
				Indicator.TextColor3 = Color3.new(0, 0, 0)
				Indicator.TextStrokeColor3 = Color3.new(1, 1, 1)
				Indicator.Text = "Noclip: Enabled"
			end
	
			local noclip = true
			local player = game.Players.LocalPlayer
			local character = player.Character or player.CharacterAdded:Wait()
	
			local mouse = player:GetMouse()
	
			mouse.KeyDown:Connect(function(key)
				if key == NoClip then
					noclip = not noclip
	
					if not StealthMode then
						Indicator.Text = "Noclip: " .. (noclip and "Enabled" or "Disabled")
					end
				end
			end)
	
			while true do
				player = game.Players.LocalPlayer
				character = player.Character
	
				if noclip then
					for _, v in pairs(character:GetDescendants()) do
						pcall(function()
							if v:IsA("BasePart") then
								v.CanCollide = false
							end
						end)
					end
				end
	
				game:GetService("RunService").Stepped:wait()
			end
		end)
	end)
end
coroutine.wrap(MPHSAXF_fake_script)()
local function TEAOS_fake_script() -- DarkTheme.LocalScript 
	local script = Instance.new('LocalScript', DarkTheme)

	script.Parent.MouseButton1Click:Connect(function()
		script.Parent.Parent.Parent.Parent:TweenPosition(UDim2.new(0.008, 0,-0.5, 0, "Linear"))
		wait(1)
	
	
		local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
		local Window = Library.CreateLib("Prison Life", "DarkTheme")
		local Tab = Window:NewTab("Combat")
		local Local2 = Window:NewTab("LocalPlayer")
		local Local = Local2:NewSection("LocalPlayer")
		local Misc = Window:NewTab("Miscellaneous")
		local MiscSection = Misc:NewSection("Miscellaneous")
		local Section = Tab:NewSection("Combat")
		local Section2 = Tab:NewSection("Gun Mods")
		local Others = Tab:NewSection("Others")
		local Teleports = Window:NewTab("Teleports")
		local Section44 = Teleports:NewSection("Teleports")
		local AdminCommands = Window:NewTab("Admin Commands")
		local Credits = Window:NewTab("Credits")
		local CreditsSection = Credits:NewSection("Credits")
		local AdminSection = AdminCommands:NewSection("Admin")
		local Commands = AdminCommands:NewSection("Commands:")
	
	
		--Guns For Gun Mods
	
	
	
		Section:NewButton("Gives You All Items(No Gamepasses)", "Grab All Items!", function()
			print("All Weapons Given!")
			workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["Remington 870"].ITEMPICKUP)
			workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver.M9.ITEMPICKUP)
			workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.single.Hammer.ITEMPICKUP)
			workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["AK-47"].ITEMPICKUP)
		end)
		Section:NewToggle("Invisible Guns", "Makes Your Guns Invisible(NOT FE)", function(state)
			if state then
	
				while wait() do
	
					for i,v in pairs(game.Players.LocalPlayer.Backpack["AK-47"].Model:GetChildren()) do
						if v.Name == "Part" then
							v.Transparency = 1
						end
					end
	
					local M9 = game.Players.LocalPlayer.Backpack["M9"].Part
	
					M9.Transparency = 1
	
					for i,a in pairs(game.Players.LocalPlayer.Backpack["Remington 870"].Model:GetChildren()) do
						if a.Name == "Part" then
							a.Transparency = 1
						end
					end
				end
			else
	
	
				while wait() do
					for i,v in pairs(game.Players.LocalPlayer.Backpack["AK-47"].Model:GetChildren()) do
						if v.Name == "Part" then
							v.Transparency = 0
						end
					end
	
					local M9 = game.Players.LocalPlayer.Backpack["M9"].Part
	
					M9.Transparency = 0
	
					for i,b in pairs(game.Players.LocalPlayer.Backpack["Remington 870"].Model:GetChildren()) do
						if b.Name == "Part" then
							b.Transparency = 0
						end
					end
				end
			end
		end)
		MiscSection:NewButton("Remove all Doors", "Removes Every Door!", function()
			for i,d in pairs(game.Workspace.Doors:GetChildren()) do
				if d.ClassName == "Model" then
					d:Destroy()
				end
			end
		end)
	
		Section2:NewButton("Auto Fire", "Turns On AutoFire!", function()
			while wait() do
				local Remington = require(game.Players.LocalPlayer.Backpack["Remington 870"].GunStates)
				local Pistol = require(game.Players.LocalPlayer.Backpack.M9.GunStates)
				local AK = require(game.Players.LocalPlayer.Backpack["AK-47"].GunStates)
				Remington["AutoFire"] = true
				Pistol["AutoFire"] = true
				AK["AutoFire"] = true
			end
		end)
		Section2:NewButton("Fire Rate", "Decreases Your Fire Rate!", function()
			while wait() do
				local Remington = require(game.Players.LocalPlayer.Backpack["Remington 870"].GunStates)
				local Pistol = require(game.Players.LocalPlayer.Backpack.M9.GunStates)
				local AK = require(game.Players.LocalPlayer.Backpack["AK-47"].GunStates)
				Remington["FireRate"] = 0.00001
				Pistol["FireRate"] = 0.00001
				AK["FireRate"] = 0.00001
			end
		end)
		Section2:NewButton("Spread", "Decreases Your Spread!", function()
			while wait() do
				local Remington = require(game.Players.LocalPlayer.Backpack["Remington 870"].GunStates)
				local Pistol = require(game.Players.LocalPlayer.Backpack.M9.GunStates)
				local AK = require(game.Players.LocalPlayer.Backpack["AK-47"].GunStates)
				Remington["Spread"] = 0
				Pistol["Spread"] = 0
				AK["Spread"] = 0
			end
		end)
		Section2:NewButton("Damage", "Adds More Damage To Other Players!", function()
			while wait() do
				local Remington = require(game.Players.LocalPlayer.Backpack["Remington 870"].GunStates)
				local Pistol = require(game.Players.LocalPlayer.Backpack.M9.GunStates)
				local AK = require(game.Players.LocalPlayer.Backpack["AK-47"].GunStates)
				Remington["Damage"] = 99999999999
				Pistol["Damage"] = 99999999999
				AK["Damage"] = 99999999999
			end
		end)
		Section2:NewButton("Store Ammo", "Adds More Stored ammo To your guns!", function()
			while wait() do
				local Remington = require(game.Players.LocalPlayer.Backpack["Remington 870"].GunStates)
				local Pistol = require(game.Players.LocalPlayer.Backpack.M9.GunStates)
				local AK = require(game.Players.LocalPlayer.Backpack["AK-47"].GunStates)
				Remington["StoredAmmo"] = 999999999999
				Pistol["StoredAmmo"] = 999999999999
				AK["StoredAmmo"] = 999999999999
			end
		end)
		Section2:NewButton("Current Ammo", "Adds Ammo!", function()
			while wait() do
				local Remington = require(game.Players.LocalPlayer.Backpack["Remington 870"].GunStates)
				local Pistol = require(game.Players.LocalPlayer.Backpack.M9.GunStates)
				local AK = require(game.Players.LocalPlayer.Backpack["AK-47"].GunStates)
				Remington["CurrentAmmo"] = 999999999999
				Pistol["CurrentAmmo"] = 999999999999
				AK["CurrentAmmo"] = 999999999999
			end
		end)
	
		Others:NewTextBox("Reload Time[BROKEN]", "Adds Less Reload Time!", function(txt)
			print(txt)
			while wait() do
				local Remington = require(game.Players.LocalPlayer.Backpack["Remington 870"].GunStates)
				local Pistol = require(game.Players.LocalPlayer.Backpack.M9.GunStates)
				local AK = require(game.Players.LocalPlayer.Backpack["AK-47"].GunStates)
				Remington["ReloadTime"] = txt
				Pistol["ReloadTime"] = txt
				AK["ReloadTime"] = txt
			end
		end)
	
		AdminSection:NewButton("Admin Commands", "Gives You Commands!", function()
			loadstring(game:HttpGet(('https://raw.githubusercontent.com/XTheMasterX/Scripts/Main/PrisonLife'),true))()
		end)
	
		MiscSection:NewButton("Remove All Fences", "All Fences Will Be Removed!", function()
			for i,l in pairs(game.Workspace["Prison_Fences"]:GetChildren()) do
				if l.Name == "fence" then
					l:Destroy()
				end
			end
		end)
	
		MiscSection:NewButton("Remove All Gates", "All Fences Will Be Removed!", function()
			game.Workspace["Prison_Fences"]["Prison_Gate"]:Destroy()
			game.Workspace["Prison_Fences"]["gate"]:Destroy()
		end)
	
		Section44:NewButton("Outside of prison", "Teleports You outside of the prison!", function()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(451.6684265136719, 98.0399169921875, 2216.338134765625)
		end)
		Section44:NewButton("Prison Yard", "Teleports You to the Prison Yard", function()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(736.4671630859375, 97.99992370605469, 2517.583740234375)
		end)
		Section44:NewButton("Kitchen", "Teleports You to the Kitchen!", function()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(906.641845703125, 99.98993682861328, 2237.67333984375)
		end)
		Section44:NewButton("Prison Cells", "Teleports You to the Prison Cells!", function()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(919.5551147460938, 99.98998260498047, 2441.700927734375)
		end)
		Section44:NewButton("Surveilance Room", "Teleports You to the Surveilance Room!", function()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(795.251953125, 99.98998260498047, 2327.720703125)
		end)
		Section44:NewButton("Break Room", "Teleports You to the Break Room!", function()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(800.0896606445312, 99.98998260498047, 2266.71630859375)
		end)
		Section44:NewButton("Police Armory", "Teleports You to the Police Armory!", function()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(837.2889404296875, 99.98998260498047, 2270.99658203125)
		end)
		Section44:NewButton("Police Room", "Teleports to to the Police Room", function()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(836.5386352539062, 99.98998260498047, 2320.604248046875)
		end)
		Section44:NewButton("Cafeteria", "Teleports you to the Cafeteria!", function()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(918.994873046875, 99.98993682861328, 2325.73095703125)
		end)
		Section44:NewButton("Criminal Base Inside", "Teleports you to the Criminal Base Inside!", function()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-975.8451538085938, 109.32379150390625, 2053.11376953125)
		end)
		-- Commands
		Commands:NewLabel(":rank player — gives player commands")
		Commands:NewLabel(":kill player — kills player")
		Commands:NewLabel(":sa player — spam arrest player")
		Commands:NewLabel(":crim player — makes player criminal")
		Commands:NewLabel(":bring player — brings player")
		Commands:NewLabel(":goto player — makes you go to player")
		Commands:NewLabel(":void player — voids player")
		Commands:NewLabel(":key player — gives player keycard")
		Commands:NewLabel(":cuffs player — gives player handcuffs")
		Commands:NewLabel(":trap player — traps player")
		Commands:NewLabel(":yard player — brings player to yard")
		Commands:NewLabel(":base player — brings player to criminal base")
		Commands:NewLabel(":prison player — brings player to prison")
		Commands:NewLabel(":lk — loopkills player")
		Commands:NewLabel(":aura — gives player kill aura")
		Commands:NewLabel(":virus — makes anyone who touch player dies")
		Commands:NewLabel(":oof — kills everyone")
		Commands:NewLabel(":spike — lag spike")
		Commands:NewLabel(":bspike — big lag spike")
		Commands:NewLabel(":lag — lags the server")
		Commands:NewLabel(":crash — crashes the server")
		Commands:NewLabel(":tk player — teleport you to player and kills them")
		Commands:NewLabel(":ltk player — loops tpkill")
		Commands:NewLabel(":logs — prints all used cmds")
	
	
		CreditsSection:NewLabel("Scripts Made By: N1NJ4")
		CreditsSection:NewLabel("UI Library: Kavo UI Library")
		CreditsSection:NewLabel("UI Library Made by: xHeptc")
	
		Local:NewSlider("Walkspeed", "Changes Your Walking Speed!", 500, 16, function(S) -- 500 (MaxValue) | 0 (MinValue)
			game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = S
		end)
		Local:NewSlider("JumpPower", "Changes Your Walking Speed!", 500, 16, function(P) -- 500 (MaxValue) | 0 (MinValue)
			game.Players.LocalPlayer.Character.Humanoid.JumpPower = P
		end)
		Local:NewTextBox("NoClip Key", "Adds a key to ur no clip!", function(NoClip)
			print("key set to "..NoClip)
			local StealthMode = true -- If game has an anticheat that checks the logs
	
			local Indicator
	
			if not StealthMode then
				local ScreenGui = Instance.new("ScreenGui", game.CoreGui)
				print("NOCLIP: Press Q to Activate")
				Indicator = Instance.new("TextLabel", ScreenGui)
				Indicator.AnchorPoint = Vector2.new(0, 1)
				Indicator.Position = UDim2.new(0, 0, 1, 0)
				Indicator.Size = UDim2.new(0, 200, 0, 50)
				Indicator.BackgroundTransparency = 1
				Indicator.TextScaled = true
				Indicator.TextStrokeTransparency = 0
				Indicator.TextColor3 = Color3.new(0, 0, 0)
				Indicator.TextStrokeColor3 = Color3.new(1, 1, 1)
				Indicator.Text = "Noclip: Enabled"
			end
	
			local noclip = true
			local player = game.Players.LocalPlayer
			local character = player.Character or player.CharacterAdded:Wait()
	
			local mouse = player:GetMouse()
	
			mouse.KeyDown:Connect(function(key)
				if key == NoClip then
					noclip = not noclip
	
					if not StealthMode then
						Indicator.Text = "Noclip: " .. (noclip and "Enabled" or "Disabled")
					end
				end
			end)
	
			while true do
				player = game.Players.LocalPlayer
				character = player.Character
	
				if noclip then
					for _, v in pairs(character:GetDescendants()) do
						pcall(function()
							if v:IsA("BasePart") then
								v.CanCollide = false
							end
						end)
					end
				end
	
				game:GetService("RunService").Stepped:wait()
			end
		end)
	end)
end
coroutine.wrap(TEAOS_fake_script)()
local function GYBRL_fake_script() -- GrapeTheme.LocalScript 
	local script = Instance.new('LocalScript', GrapeTheme)

	script.Parent.MouseButton1Click:Connect(function()
		script.Parent.Parent.Parent.Parent:TweenPosition(UDim2.new(0.008, 0,-0.5, 0, "Linear"))
		wait(1)
	
	
		local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
		local Window = Library.CreateLib("Prison Life", "GrapeTheme")
		local Tab = Window:NewTab("Combat")
		local Local2 = Window:NewTab("LocalPlayer")
		local Local = Local2:NewSection("LocalPlayer")
		local Misc = Window:NewTab("Miscellaneous")
		local MiscSection = Misc:NewSection("Miscellaneous")
		local Section = Tab:NewSection("Combat")
		local Section2 = Tab:NewSection("Gun Mods")
		local Others = Tab:NewSection("Others")
		local Teleports = Window:NewTab("Teleports")
		local Section44 = Teleports:NewSection("Teleports")
		local AdminCommands = Window:NewTab("Admin Commands")
		local Credits = Window:NewTab("Credits")
		local CreditsSection = Credits:NewSection("Credits")
		local AdminSection = AdminCommands:NewSection("Admin")
		local Commands = AdminCommands:NewSection("Commands:")
	
	
		--Guns For Gun Mods
	
	
	
		Section:NewButton("Gives You All Items(No Gamepasses)", "Grab All Items!", function()
			print("All Weapons Given!")
			workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["Remington 870"].ITEMPICKUP)
			workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver.M9.ITEMPICKUP)
			workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.single.Hammer.ITEMPICKUP)
			workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["AK-47"].ITEMPICKUP)
		end)
		Section:NewToggle("Invisible Guns", "Makes Your Guns Invisible(NOT FE)", function(state)
			if state then
	
				while wait() do
	
					for i,v in pairs(game.Players.LocalPlayer.Backpack["AK-47"].Model:GetChildren()) do
						if v.Name == "Part" then
							v.Transparency = 1
						end
					end
	
					local M9 = game.Players.LocalPlayer.Backpack["M9"].Part
	
					M9.Transparency = 1
	
					for i,a in pairs(game.Players.LocalPlayer.Backpack["Remington 870"].Model:GetChildren()) do
						if a.Name == "Part" then
							a.Transparency = 1
						end
					end
				end
			else
	
	
				while wait() do
					for i,v in pairs(game.Players.LocalPlayer.Backpack["AK-47"].Model:GetChildren()) do
						if v.Name == "Part" then
							v.Transparency = 0
						end
					end
	
					local M9 = game.Players.LocalPlayer.Backpack["M9"].Part
	
					M9.Transparency = 0
	
					for i,b in pairs(game.Players.LocalPlayer.Backpack["Remington 870"].Model:GetChildren()) do
						if b.Name == "Part" then
							b.Transparency = 0
						end
					end
				end
			end
		end)
		MiscSection:NewButton("Remove all Doors", "Removes Every Door!", function()
			for i,d in pairs(game.Workspace.Doors:GetChildren()) do
				if d.ClassName == "Model" then
					d:Destroy()
				end
			end
		end)
	
		Section2:NewButton("Auto Fire", "Turns On AutoFire!", function()
			while wait() do
				local Remington = require(game.Players.LocalPlayer.Backpack["Remington 870"].GunStates)
				local Pistol = require(game.Players.LocalPlayer.Backpack.M9.GunStates)
				local AK = require(game.Players.LocalPlayer.Backpack["AK-47"].GunStates)
				Remington["AutoFire"] = true
				Pistol["AutoFire"] = true
				AK["AutoFire"] = true
			end
		end)
		Section2:NewButton("Fire Rate", "Decreases Your Fire Rate!", function()
			while wait() do
				local Remington = require(game.Players.LocalPlayer.Backpack["Remington 870"].GunStates)
				local Pistol = require(game.Players.LocalPlayer.Backpack.M9.GunStates)
				local AK = require(game.Players.LocalPlayer.Backpack["AK-47"].GunStates)
				Remington["FireRate"] = 0.00001
				Pistol["FireRate"] = 0.00001
				AK["FireRate"] = 0.00001
			end
		end)
		Section2:NewButton("Spread", "Decreases Your Spread!", function()
			while wait() do
				local Remington = require(game.Players.LocalPlayer.Backpack["Remington 870"].GunStates)
				local Pistol = require(game.Players.LocalPlayer.Backpack.M9.GunStates)
				local AK = require(game.Players.LocalPlayer.Backpack["AK-47"].GunStates)
				Remington["Spread"] = 0
				Pistol["Spread"] = 0
				AK["Spread"] = 0
			end
		end)
		Section2:NewButton("Damage", "Adds More Damage To Other Players!", function()
			while wait() do
				local Remington = require(game.Players.LocalPlayer.Backpack["Remington 870"].GunStates)
				local Pistol = require(game.Players.LocalPlayer.Backpack.M9.GunStates)
				local AK = require(game.Players.LocalPlayer.Backpack["AK-47"].GunStates)
				Remington["Damage"] = 99999999999
				Pistol["Damage"] = 99999999999
				AK["Damage"] = 99999999999
			end
		end)
		Section2:NewButton("Store Ammo", "Adds More Stored ammo To your guns!", function()
			while wait() do
				local Remington = require(game.Players.LocalPlayer.Backpack["Remington 870"].GunStates)
				local Pistol = require(game.Players.LocalPlayer.Backpack.M9.GunStates)
				local AK = require(game.Players.LocalPlayer.Backpack["AK-47"].GunStates)
				Remington["StoredAmmo"] = 999999999999
				Pistol["StoredAmmo"] = 999999999999
				AK["StoredAmmo"] = 999999999999
			end
		end)
		Section2:NewButton("Current Ammo", "Adds Ammo!", function()
			while wait() do
				local Remington = require(game.Players.LocalPlayer.Backpack["Remington 870"].GunStates)
				local Pistol = require(game.Players.LocalPlayer.Backpack.M9.GunStates)
				local AK = require(game.Players.LocalPlayer.Backpack["AK-47"].GunStates)
				Remington["CurrentAmmo"] = 999999999999
				Pistol["CurrentAmmo"] = 999999999999
				AK["CurrentAmmo"] = 999999999999
			end
		end)
	
		Others:NewTextBox("Reload Time[BROKEN]", "Adds Less Reload Time!", function(txt)
			print(txt)
			while wait() do
				local Remington = require(game.Players.LocalPlayer.Backpack["Remington 870"].GunStates)
				local Pistol = require(game.Players.LocalPlayer.Backpack.M9.GunStates)
				local AK = require(game.Players.LocalPlayer.Backpack["AK-47"].GunStates)
				Remington["ReloadTime"] = txt
				Pistol["ReloadTime"] = txt
				AK["ReloadTime"] = txt
			end
		end)
	
		AdminSection:NewButton("Admin Commands", "Gives You Commands!", function()
			loadstring(game:HttpGet(('https://raw.githubusercontent.com/XTheMasterX/Scripts/Main/PrisonLife'),true))()
		end)
	
		MiscSection:NewButton("Remove All Fences", "All Fences Will Be Removed!", function()
			for i,l in pairs(game.Workspace["Prison_Fences"]:GetChildren()) do
				if l.Name == "fence" then
					l:Destroy()
				end
			end
		end)
	
		MiscSection:NewButton("Remove All Gates", "All Fences Will Be Removed!", function()
			game.Workspace["Prison_Fences"]["Prison_Gate"]:Destroy()
			game.Workspace["Prison_Fences"]["gate"]:Destroy()
		end)
	
		Section44:NewButton("Outside of prison", "Teleports You outside of the prison!", function()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(451.6684265136719, 98.0399169921875, 2216.338134765625)
		end)
		Section44:NewButton("Prison Yard", "Teleports You to the Prison Yard", function()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(736.4671630859375, 97.99992370605469, 2517.583740234375)
		end)
		Section44:NewButton("Kitchen", "Teleports You to the Kitchen!", function()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(906.641845703125, 99.98993682861328, 2237.67333984375)
		end)
		Section44:NewButton("Prison Cells", "Teleports You to the Prison Cells!", function()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(919.5551147460938, 99.98998260498047, 2441.700927734375)
		end)
		Section44:NewButton("Surveilance Room", "Teleports You to the Surveilance Room!", function()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(795.251953125, 99.98998260498047, 2327.720703125)
		end)
		Section44:NewButton("Break Room", "Teleports You to the Break Room!", function()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(800.0896606445312, 99.98998260498047, 2266.71630859375)
		end)
		Section44:NewButton("Police Armory", "Teleports You to the Police Armory!", function()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(837.2889404296875, 99.98998260498047, 2270.99658203125)
		end)
		Section44:NewButton("Police Room", "Teleports to to the Police Room", function()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(836.5386352539062, 99.98998260498047, 2320.604248046875)
		end)
		Section44:NewButton("Cafeteria", "Teleports you to the Cafeteria!", function()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(918.994873046875, 99.98993682861328, 2325.73095703125)
		end)
		Section44:NewButton("Criminal Base Inside", "Teleports you to the Criminal Base Inside!", function()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-975.8451538085938, 109.32379150390625, 2053.11376953125)
		end)
		-- Commands
		Commands:NewLabel(":rank player — gives player commands")
		Commands:NewLabel(":kill player — kills player")
		Commands:NewLabel(":sa player — spam arrest player")
		Commands:NewLabel(":crim player — makes player criminal")
		Commands:NewLabel(":bring player — brings player")
		Commands:NewLabel(":goto player — makes you go to player")
		Commands:NewLabel(":void player — voids player")
		Commands:NewLabel(":key player — gives player keycard")
		Commands:NewLabel(":cuffs player — gives player handcuffs")
		Commands:NewLabel(":trap player — traps player")
		Commands:NewLabel(":yard player — brings player to yard")
		Commands:NewLabel(":base player — brings player to criminal base")
		Commands:NewLabel(":prison player — brings player to prison")
		Commands:NewLabel(":lk — loopkills player")
		Commands:NewLabel(":aura — gives player kill aura")
		Commands:NewLabel(":virus — makes anyone who touch player dies")
		Commands:NewLabel(":oof — kills everyone")
		Commands:NewLabel(":spike — lag spike")
		Commands:NewLabel(":bspike — big lag spike")
		Commands:NewLabel(":lag — lags the server")
		Commands:NewLabel(":crash — crashes the server")
		Commands:NewLabel(":tk player — teleport you to player and kills them")
		Commands:NewLabel(":ltk player — loops tpkill")
		Commands:NewLabel(":logs — prints all used cmds")
	
	
		CreditsSection:NewLabel("Scripts Made By: N1NJ4")
		CreditsSection:NewLabel("UI Library: Kavo UI Library")
		CreditsSection:NewLabel("UI Library Made by: xHeptc")
	
		Local:NewSlider("Walkspeed", "Changes Your Walking Speed!", 500, 16, function(S) -- 500 (MaxValue) | 0 (MinValue)
			game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = S
		end)
		Local:NewSlider("JumpPower", "Changes Your Walking Speed!", 500, 16, function(P) -- 500 (MaxValue) | 0 (MinValue)
			game.Players.LocalPlayer.Character.Humanoid.JumpPower = P
		end)
		Local:NewTextBox("NoClip Key", "Adds a key to ur no clip!", function(NoClip)
			print("key set to "..NoClip)
			local StealthMode = true -- If game has an anticheat that checks the logs
	
			local Indicator
	
			if not StealthMode then
				local ScreenGui = Instance.new("ScreenGui", game.CoreGui)
				print("NOCLIP: Press Q to Activate")
				Indicator = Instance.new("TextLabel", ScreenGui)
				Indicator.AnchorPoint = Vector2.new(0, 1)
				Indicator.Position = UDim2.new(0, 0, 1, 0)
				Indicator.Size = UDim2.new(0, 200, 0, 50)
				Indicator.BackgroundTransparency = 1
				Indicator.TextScaled = true
				Indicator.TextStrokeTransparency = 0
				Indicator.TextColor3 = Color3.new(0, 0, 0)
				Indicator.TextStrokeColor3 = Color3.new(1, 1, 1)
				Indicator.Text = "Noclip: Enabled"
			end
	
			local noclip = true
			local player = game.Players.LocalPlayer
			local character = player.Character or player.CharacterAdded:Wait()
	
			local mouse = player:GetMouse()
	
			mouse.KeyDown:Connect(function(key)
				if key == NoClip then
					noclip = not noclip
	
					if not StealthMode then
						Indicator.Text = "Noclip: " .. (noclip and "Enabled" or "Disabled")
					end
				end
			end)
	
			while true do
				player = game.Players.LocalPlayer
				character = player.Character
	
				if noclip then
					for _, v in pairs(character:GetDescendants()) do
						pcall(function()
							if v:IsA("BasePart") then
								v.CanCollide = false
							end
						end)
					end
				end
	
				game:GetService("RunService").Stepped:wait()
			end
		end)
	end)
end
coroutine.wrap(GYBRL_fake_script)()
local function BFNJ_fake_script() -- BloodTheme.LocalScript 
	local script = Instance.new('LocalScript', BloodTheme)

	script.Parent.MouseButton1Click:Connect(function()
		script.Parent.Parent.Parent.Parent:TweenPosition(UDim2.new(0.008, 0,-0.5, 0, "Linear"))
	
	
		local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
		local Window = Library.CreateLib("Prison Life", "BloodTheme")
		local Tab = Window:NewTab("Combat")
		local Local2 = Window:NewTab("LocalPlayer")
		local Local = Local2:NewSection("LocalPlayer")
		local Misc = Window:NewTab("Miscellaneous")
		local MiscSection = Misc:NewSection("Miscellaneous")
		local Section = Tab:NewSection("Combat")
		local Section2 = Tab:NewSection("Gun Mods")
		local Others = Tab:NewSection("Others")
		local Teleports = Window:NewTab("Teleports")
		local Section44 = Teleports:NewSection("Teleports")
		local AdminCommands = Window:NewTab("Admin Commands")
		local Credits = Window:NewTab("Credits")
		local CreditsSection = Credits:NewSection("Credits")
		local AdminSection = AdminCommands:NewSection("Admin")
		local Commands = AdminCommands:NewSection("Commands:")
	
	
		--Guns For Gun Mods
	
	
	
		Section:NewButton("Gives You All Items(No Gamepasses)", "Grab All Items!", function()
			print("All Weapons Given!")
			workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["Remington 870"].ITEMPICKUP)
			workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver.M9.ITEMPICKUP)
			workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.single.Hammer.ITEMPICKUP)
			workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["AK-47"].ITEMPICKUP)
		end)
		Section:NewToggle("Invisible Guns", "Makes Your Guns Invisible(NOT FE)", function(state)
			if state then
	
				while wait() do
	
					for i,v in pairs(game.Players.LocalPlayer.Backpack["AK-47"].Model:GetChildren()) do
						if v.Name == "Part" then
							v.Transparency = 1
						end
					end
	
					local M9 = game.Players.LocalPlayer.Backpack["M9"].Part
	
					M9.Transparency = 1
	
					for i,a in pairs(game.Players.LocalPlayer.Backpack["Remington 870"].Model:GetChildren()) do
						if a.Name == "Part" then
							a.Transparency = 1
						end
					end
				end
			else
	
	
				while wait() do
					for i,v in pairs(game.Players.LocalPlayer.Backpack["AK-47"].Model:GetChildren()) do
						if v.Name == "Part" then
							v.Transparency = 0
						end
					end
	
					local M9 = game.Players.LocalPlayer.Backpack["M9"].Part
	
					M9.Transparency = 0
	
					for i,b in pairs(game.Players.LocalPlayer.Backpack["Remington 870"].Model:GetChildren()) do
						if b.Name == "Part" then
							b.Transparency = 0
						end
					end
				end
			end
		end)
		MiscSection:NewButton("Remove all Doors", "Removes Every Door!", function()
			for i,d in pairs(game.Workspace.Doors:GetChildren()) do
				if d.ClassName == "Model" then
					d:Destroy()
				end
			end
		end)
	
		Section2:NewButton("Auto Fire", "Turns On AutoFire!", function()
			while wait() do
				local Remington = require(game.Players.LocalPlayer.Backpack["Remington 870"].GunStates)
				local Pistol = require(game.Players.LocalPlayer.Backpack.M9.GunStates)
				local AK = require(game.Players.LocalPlayer.Backpack["AK-47"].GunStates)
				Remington["AutoFire"] = true
				Pistol["AutoFire"] = true
				AK["AutoFire"] = true
			end
		end)
		Section2:NewButton("Fire Rate", "Decreases Your Fire Rate!", function()
			while wait() do
				local Remington = require(game.Players.LocalPlayer.Backpack["Remington 870"].GunStates)
				local Pistol = require(game.Players.LocalPlayer.Backpack.M9.GunStates)
				local AK = require(game.Players.LocalPlayer.Backpack["AK-47"].GunStates)
				Remington["FireRate"] = 0.00001
				Pistol["FireRate"] = 0.00001
				AK["FireRate"] = 0.00001
			end
		end)
		Section2:NewButton("Spread", "Decreases Your Spread!", function()
			while wait() do
				local Remington = require(game.Players.LocalPlayer.Backpack["Remington 870"].GunStates)
				local Pistol = require(game.Players.LocalPlayer.Backpack.M9.GunStates)
				local AK = require(game.Players.LocalPlayer.Backpack["AK-47"].GunStates)
				Remington["Spread"] = 0
				Pistol["Spread"] = 0
				AK["Spread"] = 0
			end
		end)
		Section2:NewButton("Damage", "Adds More Damage To Other Players!", function()
			while wait() do
				local Remington = require(game.Players.LocalPlayer.Backpack["Remington 870"].GunStates)
				local Pistol = require(game.Players.LocalPlayer.Backpack.M9.GunStates)
				local AK = require(game.Players.LocalPlayer.Backpack["AK-47"].GunStates)
				Remington["Damage"] = 99999999999
				Pistol["Damage"] = 99999999999
				AK["Damage"] = 99999999999
			end
		end)
		Section2:NewButton("Store Ammo", "Adds More Stored ammo To your guns!", function()
			while wait() do
				local Remington = require(game.Players.LocalPlayer.Backpack["Remington 870"].GunStates)
				local Pistol = require(game.Players.LocalPlayer.Backpack.M9.GunStates)
				local AK = require(game.Players.LocalPlayer.Backpack["AK-47"].GunStates)
				Remington["StoredAmmo"] = 999999999999
				Pistol["StoredAmmo"] = 999999999999
				AK["StoredAmmo"] = 999999999999
			end
		end)
		Section2:NewButton("Current Ammo", "Adds Ammo!", function()
			while wait() do
				local Remington = require(game.Players.LocalPlayer.Backpack["Remington 870"].GunStates)
				local Pistol = require(game.Players.LocalPlayer.Backpack.M9.GunStates)
				local AK = require(game.Players.LocalPlayer.Backpack["AK-47"].GunStates)
				Remington["CurrentAmmo"] = 999999999999
				Pistol["CurrentAmmo"] = 999999999999
				AK["CurrentAmmo"] = 999999999999
			end
		end)
	
		Others:NewTextBox("Reload Time[BROKEN]", "Adds Less Reload Time!", function(txt)
			print(txt)
			while wait() do
				local Remington = require(game.Players.LocalPlayer.Backpack["Remington 870"].GunStates)
				local Pistol = require(game.Players.LocalPlayer.Backpack.M9.GunStates)
				local AK = require(game.Players.LocalPlayer.Backpack["AK-47"].GunStates)
				Remington["ReloadTime"] = txt
				Pistol["ReloadTime"] = txt
				AK["ReloadTime"] = txt
			end
		end)
	
		AdminSection:NewButton("Admin Commands", "Gives You Commands!", function()
			loadstring(game:HttpGet(('https://raw.githubusercontent.com/XTheMasterX/Scripts/Main/PrisonLife'),true))()
		end)
	
		MiscSection:NewButton("Remove All Fences", "All Fences Will Be Removed!", function()
			for i,l in pairs(game.Workspace["Prison_Fences"]:GetChildren()) do
				if l.Name == "fence" then
					l:Destroy()
				end
			end
		end)
	
		MiscSection:NewButton("Remove All Gates", "All Fences Will Be Removed!", function()
			game.Workspace["Prison_Fences"]["Prison_Gate"]:Destroy()
			game.Workspace["Prison_Fences"]["gate"]:Destroy()
		end)
	
		Section44:NewButton("Outside of prison", "Teleports You outside of the prison!", function()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(451.6684265136719, 98.0399169921875, 2216.338134765625)
		end)
		Section44:NewButton("Prison Yard", "Teleports You to the Prison Yard", function()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(736.4671630859375, 97.99992370605469, 2517.583740234375)
		end)
		Section44:NewButton("Kitchen", "Teleports You to the Kitchen!", function()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(906.641845703125, 99.98993682861328, 2237.67333984375)
		end)
		Section44:NewButton("Prison Cells", "Teleports You to the Prison Cells!", function()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(919.5551147460938, 99.98998260498047, 2441.700927734375)
		end)
		Section44:NewButton("Surveilance Room", "Teleports You to the Surveilance Room!", function()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(795.251953125, 99.98998260498047, 2327.720703125)
		end)
		Section44:NewButton("Break Room", "Teleports You to the Break Room!", function()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(800.0896606445312, 99.98998260498047, 2266.71630859375)
		end)
		Section44:NewButton("Police Armory", "Teleports You to the Police Armory!", function()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(837.2889404296875, 99.98998260498047, 2270.99658203125)
		end)
		Section44:NewButton("Police Room", "Teleports to to the Police Room", function()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(836.5386352539062, 99.98998260498047, 2320.604248046875)
		end)
		Section44:NewButton("Cafeteria", "Teleports you to the Cafeteria!", function()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(918.994873046875, 99.98993682861328, 2325.73095703125)
		end)
		Section44:NewButton("Criminal Base Inside", "Teleports you to the Criminal Base Inside!", function()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-975.8451538085938, 109.32379150390625, 2053.11376953125)
		end)
		-- Commands
		Commands:NewLabel(":rank player — gives player commands")
		Commands:NewLabel(":kill player — kills player")
		Commands:NewLabel(":sa player — spam arrest player")
		Commands:NewLabel(":crim player — makes player criminal")
		Commands:NewLabel(":bring player — brings player")
		Commands:NewLabel(":goto player — makes you go to player")
		Commands:NewLabel(":void player — voids player")
		Commands:NewLabel(":key player — gives player keycard")
		Commands:NewLabel(":cuffs player — gives player handcuffs")
		Commands:NewLabel(":trap player — traps player")
		Commands:NewLabel(":yard player — brings player to yard")
		Commands:NewLabel(":base player — brings player to criminal base")
		Commands:NewLabel(":prison player — brings player to prison")
		Commands:NewLabel(":lk — loopkills player")
		Commands:NewLabel(":aura — gives player kill aura")
		Commands:NewLabel(":virus — makes anyone who touch player dies")
		Commands:NewLabel(":oof — kills everyone")
		Commands:NewLabel(":spike — lag spike")
		Commands:NewLabel(":bspike — big lag spike")
		Commands:NewLabel(":lag — lags the server")
		Commands:NewLabel(":crash — crashes the server")
		Commands:NewLabel(":tk player — teleport you to player and kills them")
		Commands:NewLabel(":ltk player — loops tpkill")
		Commands:NewLabel(":logs — prints all used cmds")
	
	
		CreditsSection:NewLabel("Scripts Made By: N1NJ4")
		CreditsSection:NewLabel("UI Library: Kavo UI Library")
		CreditsSection:NewLabel("UI Library Made by: xHeptc")
	
		Local:NewSlider("Walkspeed", "Changes Your Walking Speed!", 500, 16, function(S) -- 500 (MaxValue) | 0 (MinValue)
			game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = S
		end)
		Local:NewSlider("JumpPower", "Changes Your Walking Speed!", 500, 16, function(P) -- 500 (MaxValue) | 0 (MinValue)
			game.Players.LocalPlayer.Character.Humanoid.JumpPower = P
		end)
		Local:NewTextBox("NoClip Key", "Adds a key to ur no clip!", function(NoClip)
			print("key set to "..NoClip)
			local StealthMode = true -- If game has an anticheat that checks the logs
	
			local Indicator
	
			if not StealthMode then
				local ScreenGui = Instance.new("ScreenGui", game.CoreGui)
				print("NOCLIP: Press Q to Activate")
				Indicator = Instance.new("TextLabel", ScreenGui)
				Indicator.AnchorPoint = Vector2.new(0, 1)
				Indicator.Position = UDim2.new(0, 0, 1, 0)
				Indicator.Size = UDim2.new(0, 200, 0, 50)
				Indicator.BackgroundTransparency = 1
				Indicator.TextScaled = true
				Indicator.TextStrokeTransparency = 0
				Indicator.TextColor3 = Color3.new(0, 0, 0)
				Indicator.TextStrokeColor3 = Color3.new(1, 1, 1)
				Indicator.Text = "Noclip: Enabled"
			end
	
			local noclip = true
			local player = game.Players.LocalPlayer
			local character = player.Character or player.CharacterAdded:Wait()
	
			local mouse = player:GetMouse()
	
			mouse.KeyDown:Connect(function(key)
				if key == NoClip then
					noclip = not noclip
	
					if not StealthMode then
						Indicator.Text = "Noclip: " .. (noclip and "Enabled" or "Disabled")
					end
				end
			end)
	
			while true do
				player = game.Players.LocalPlayer
				character = player.Character
	
				if noclip then
					for _, v in pairs(character:GetDescendants()) do
						pcall(function()
							if v:IsA("BasePart") then
								v.CanCollide = false
							end
						end)
					end
				end
	
				game:GetService("RunService").Stepped:wait()
			end
		end)
	end)
end
coroutine.wrap(BFNJ_fake_script)()
local function ERQTVH_fake_script() -- Midnight.LocalScript 
	local script = Instance.new('LocalScript', Midnight)

	script.Parent.MouseButton1Click:Connect(function()
		script.Parent.Parent.Parent.Parent:TweenPosition(UDim2.new(0.008, 0,-0.5, 0, "Linear"))
		wait(1)
	
	
		local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
		local Window = Library.CreateLib("Prison Life", "Midnight")
		local Tab = Window:NewTab("Combat")
		local Local2 = Window:NewTab("LocalPlayer")
		local Local = Local2:NewSection("LocalPlayer")
		local Misc = Window:NewTab("Miscellaneous")
		local MiscSection = Misc:NewSection("Miscellaneous")
		local Section = Tab:NewSection("Combat")
		local Section2 = Tab:NewSection("Gun Mods")
		local Others = Tab:NewSection("Others")
		local Teleports = Window:NewTab("Teleports")
		local Section44 = Teleports:NewSection("Teleports")
		local AdminCommands = Window:NewTab("Admin Commands")
		local Credits = Window:NewTab("Credits")
		local CreditsSection = Credits:NewSection("Credits")
		local AdminSection = AdminCommands:NewSection("Admin")
		local Commands = AdminCommands:NewSection("Commands:")
	
	
		--Guns For Gun Mods
	
	
	
		Section:NewButton("Gives You All Items(No Gamepasses)", "Grab All Items!", function()
			print("All Weapons Given!")
			workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["Remington 870"].ITEMPICKUP)
			workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver.M9.ITEMPICKUP)
			workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.single.Hammer.ITEMPICKUP)
			workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["AK-47"].ITEMPICKUP)
		end)
		Section:NewToggle("Invisible Guns", "Makes Your Guns Invisible(NOT FE)", function(state)
			if state then
	
				while wait() do
	
					for i,v in pairs(game.Players.LocalPlayer.Backpack["AK-47"].Model:GetChildren()) do
						if v.Name == "Part" then
							v.Transparency = 1
						end
					end
	
					local M9 = game.Players.LocalPlayer.Backpack["M9"].Part
	
					M9.Transparency = 1
	
					for i,a in pairs(game.Players.LocalPlayer.Backpack["Remington 870"].Model:GetChildren()) do
						if a.Name == "Part" then
							a.Transparency = 1
						end
					end
				end
			else
	
	
				while wait() do
					for i,v in pairs(game.Players.LocalPlayer.Backpack["AK-47"].Model:GetChildren()) do
						if v.Name == "Part" then
							v.Transparency = 0
						end
					end
	
					local M9 = game.Players.LocalPlayer.Backpack["M9"].Part
	
					M9.Transparency = 0
	
					for i,b in pairs(game.Players.LocalPlayer.Backpack["Remington 870"].Model:GetChildren()) do
						if b.Name == "Part" then
							b.Transparency = 0
						end
					end
				end
			end
		end)
		MiscSection:NewButton("Remove all Doors", "Removes Every Door!", function()
			for i,d in pairs(game.Workspace.Doors:GetChildren()) do
				if d.ClassName == "Model" then
					d:Destroy()
				end
			end
		end)
	
		Section2:NewButton("Auto Fire", "Turns On AutoFire!", function()
			while wait() do
				local Remington = require(game.Players.LocalPlayer.Backpack["Remington 870"].GunStates)
				local Pistol = require(game.Players.LocalPlayer.Backpack.M9.GunStates)
				local AK = require(game.Players.LocalPlayer.Backpack["AK-47"].GunStates)
				Remington["AutoFire"] = true
				Pistol["AutoFire"] = true
				AK["AutoFire"] = true
			end
		end)
		Section2:NewButton("Fire Rate", "Decreases Your Fire Rate!", function()
			while wait() do
				local Remington = require(game.Players.LocalPlayer.Backpack["Remington 870"].GunStates)
				local Pistol = require(game.Players.LocalPlayer.Backpack.M9.GunStates)
				local AK = require(game.Players.LocalPlayer.Backpack["AK-47"].GunStates)
				Remington["FireRate"] = 0.00001
				Pistol["FireRate"] = 0.00001
				AK["FireRate"] = 0.00001
			end
		end)
		Section2:NewButton("Spread", "Decreases Your Spread!", function()
			while wait() do
				local Remington = require(game.Players.LocalPlayer.Backpack["Remington 870"].GunStates)
				local Pistol = require(game.Players.LocalPlayer.Backpack.M9.GunStates)
				local AK = require(game.Players.LocalPlayer.Backpack["AK-47"].GunStates)
				Remington["Spread"] = 0
				Pistol["Spread"] = 0
				AK["Spread"] = 0
			end
		end)
		Section2:NewButton("Damage", "Adds More Damage To Other Players!", function()
			while wait() do
				local Remington = require(game.Players.LocalPlayer.Backpack["Remington 870"].GunStates)
				local Pistol = require(game.Players.LocalPlayer.Backpack.M9.GunStates)
				local AK = require(game.Players.LocalPlayer.Backpack["AK-47"].GunStates)
				Remington["Damage"] = 99999999999
				Pistol["Damage"] = 99999999999
				AK["Damage"] = 99999999999
			end
		end)
		Section2:NewButton("Store Ammo", "Adds More Stored ammo To your guns!", function()
			while wait() do
				local Remington = require(game.Players.LocalPlayer.Backpack["Remington 870"].GunStates)
				local Pistol = require(game.Players.LocalPlayer.Backpack.M9.GunStates)
				local AK = require(game.Players.LocalPlayer.Backpack["AK-47"].GunStates)
				Remington["StoredAmmo"] = 999999999999
				Pistol["StoredAmmo"] = 999999999999
				AK["StoredAmmo"] = 999999999999
			end
		end)
		Section2:NewButton("Current Ammo", "Adds Ammo!", function()
			while wait() do
				local Remington = require(game.Players.LocalPlayer.Backpack["Remington 870"].GunStates)
				local Pistol = require(game.Players.LocalPlayer.Backpack.M9.GunStates)
				local AK = require(game.Players.LocalPlayer.Backpack["AK-47"].GunStates)
				Remington["CurrentAmmo"] = 999999999999
				Pistol["CurrentAmmo"] = 999999999999
				AK["CurrentAmmo"] = 999999999999
			end
		end)
	
		Others:NewTextBox("Reload Time[BROKEN]", "Adds Less Reload Time!", function(txt)
			print(txt)
			while wait() do
				local Remington = require(game.Players.LocalPlayer.Backpack["Remington 870"].GunStates)
				local Pistol = require(game.Players.LocalPlayer.Backpack.M9.GunStates)
				local AK = require(game.Players.LocalPlayer.Backpack["AK-47"].GunStates)
				Remington["ReloadTime"] = txt
				Pistol["ReloadTime"] = txt
				AK["ReloadTime"] = txt
			end
		end)
	
		AdminSection:NewButton("Admin Commands", "Gives You Commands!", function()
			loadstring(game:HttpGet(('https://raw.githubusercontent.com/XTheMasterX/Scripts/Main/PrisonLife'),true))()
		end)
	
		MiscSection:NewButton("Remove All Fences", "All Fences Will Be Removed!", function()
			for i,l in pairs(game.Workspace["Prison_Fences"]:GetChildren()) do
				if l.Name == "fence" then
					l:Destroy()
				end
			end
		end)
	
		MiscSection:NewButton("Remove All Gates", "All Fences Will Be Removed!", function()
			game.Workspace["Prison_Fences"]["Prison_Gate"]:Destroy()
			game.Workspace["Prison_Fences"]["gate"]:Destroy()
		end)
	
		Section44:NewButton("Outside of prison", "Teleports You outside of the prison!", function()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(451.6684265136719, 98.0399169921875, 2216.338134765625)
		end)
		Section44:NewButton("Prison Yard", "Teleports You to the Prison Yard", function()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(736.4671630859375, 97.99992370605469, 2517.583740234375)
		end)
		Section44:NewButton("Kitchen", "Teleports You to the Kitchen!", function()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(906.641845703125, 99.98993682861328, 2237.67333984375)
		end)
		Section44:NewButton("Prison Cells", "Teleports You to the Prison Cells!", function()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(919.5551147460938, 99.98998260498047, 2441.700927734375)
		end)
		Section44:NewButton("Surveilance Room", "Teleports You to the Surveilance Room!", function()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(795.251953125, 99.98998260498047, 2327.720703125)
		end)
		Section44:NewButton("Break Room", "Teleports You to the Break Room!", function()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(800.0896606445312, 99.98998260498047, 2266.71630859375)
		end)
		Section44:NewButton("Police Armory", "Teleports You to the Police Armory!", function()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(837.2889404296875, 99.98998260498047, 2270.99658203125)
		end)
		Section44:NewButton("Police Room", "Teleports to to the Police Room", function()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(836.5386352539062, 99.98998260498047, 2320.604248046875)
		end)
		Section44:NewButton("Cafeteria", "Teleports you to the Cafeteria!", function()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(918.994873046875, 99.98993682861328, 2325.73095703125)
		end)
		Section44:NewButton("Criminal Base Inside", "Teleports you to the Criminal Base Inside!", function()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-975.8451538085938, 109.32379150390625, 2053.11376953125)
		end)
		-- Commands
		Commands:NewLabel(":rank player — gives player commands")
		Commands:NewLabel(":kill player — kills player")
		Commands:NewLabel(":sa player — spam arrest player")
		Commands:NewLabel(":crim player — makes player criminal")
		Commands:NewLabel(":bring player — brings player")
		Commands:NewLabel(":goto player — makes you go to player")
		Commands:NewLabel(":void player — voids player")
		Commands:NewLabel(":key player — gives player keycard")
		Commands:NewLabel(":cuffs player — gives player handcuffs")
		Commands:NewLabel(":trap player — traps player")
		Commands:NewLabel(":yard player — brings player to yard")
		Commands:NewLabel(":base player — brings player to criminal base")
		Commands:NewLabel(":prison player — brings player to prison")
		Commands:NewLabel(":lk — loopkills player")
		Commands:NewLabel(":aura — gives player kill aura")
		Commands:NewLabel(":virus — makes anyone who touch player dies")
		Commands:NewLabel(":oof — kills everyone")
		Commands:NewLabel(":spike — lag spike")
		Commands:NewLabel(":bspike — big lag spike")
		Commands:NewLabel(":lag — lags the server")
		Commands:NewLabel(":crash — crashes the server")
		Commands:NewLabel(":tk player — teleport you to player and kills them")
		Commands:NewLabel(":ltk player — loops tpkill")
		Commands:NewLabel(":logs — prints all used cmds")
	
	
		CreditsSection:NewLabel("Scripts Made By: N1NJ4")
		CreditsSection:NewLabel("UI Library: Kavo UI Library")
		CreditsSection:NewLabel("UI Library Made by: xHeptc")
	
		Local:NewSlider("Walkspeed", "Changes Your Walking Speed!", 500, 16, function(S) -- 500 (MaxValue) | 0 (MinValue)
			game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = S
		end)
		Local:NewSlider("JumpPower", "Changes Your Walking Speed!", 500, 16, function(P) -- 500 (MaxValue) | 0 (MinValue)
			game.Players.LocalPlayer.Character.Humanoid.JumpPower = P
		end)
		Local:NewTextBox("NoClip Key", "Adds a key to ur no clip!", function(NoClip)
			print("key set to "..NoClip)
			local StealthMode = true -- If game has an anticheat that checks the logs
	
			local Indicator
	
			if not StealthMode then
				local ScreenGui = Instance.new("ScreenGui", game.CoreGui)
				print("NOCLIP: Press Q to Activate")
				Indicator = Instance.new("TextLabel", ScreenGui)
				Indicator.AnchorPoint = Vector2.new(0, 1)
				Indicator.Position = UDim2.new(0, 0, 1, 0)
				Indicator.Size = UDim2.new(0, 200, 0, 50)
				Indicator.BackgroundTransparency = 1
				Indicator.TextScaled = true
				Indicator.TextStrokeTransparency = 0
				Indicator.TextColor3 = Color3.new(0, 0, 0)
				Indicator.TextStrokeColor3 = Color3.new(1, 1, 1)
				Indicator.Text = "Noclip: Enabled"
			end
	
			local noclip = true
			local player = game.Players.LocalPlayer
			local character = player.Character or player.CharacterAdded:Wait()
	
			local mouse = player:GetMouse()
	
			mouse.KeyDown:Connect(function(key)
				if key == NoClip then
					noclip = not noclip
	
					if not StealthMode then
						Indicator.Text = "Noclip: " .. (noclip and "Enabled" or "Disabled")
					end
				end
			end)
	
			while true do
				player = game.Players.LocalPlayer
				character = player.Character
	
				if noclip then
					for _, v in pairs(character:GetDescendants()) do
						pcall(function()
							if v:IsA("BasePart") then
								v.CanCollide = false
							end
						end)
					end
				end
	
				game:GetService("RunService").Stepped:wait()
			end
		end)
	end)
end
coroutine.wrap(ERQTVH_fake_script)()
local function SIICX_fake_script() -- Synapse.LocalScript 
	local script = Instance.new('LocalScript', Synapse)

	script.Parent.MouseButton1Click:Connect(function()
		script.Parent.Parent.Parent.Parent:TweenPosition(UDim2.new(0.008, 0,-0.5, 0, "Linear"))
		wait(1)
	
	
		local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
		local Window = Library.CreateLib("Prison Life", "Synapse")
		local Tab = Window:NewTab("Combat")
		local Local2 = Window:NewTab("LocalPlayer")
		local Local = Local2:NewSection("LocalPlayer")
		local Misc = Window:NewTab("Miscellaneous")
		local MiscSection = Misc:NewSection("Miscellaneous")
		local Section = Tab:NewSection("Combat")
		local Section2 = Tab:NewSection("Gun Mods")
		local Others = Tab:NewSection("Others")
		local Teleports = Window:NewTab("Teleports")
		local Section44 = Teleports:NewSection("Teleports")
		local AdminCommands = Window:NewTab("Admin Commands")
		local Credits = Window:NewTab("Credits")
		local CreditsSection = Credits:NewSection("Credits")
		local AdminSection = AdminCommands:NewSection("Admin")
		local Commands = AdminCommands:NewSection("Commands:")
	
	
		--Guns For Gun Mods
	
	
	
		Section:NewButton("Gives You All Items(No Gamepasses)", "Grab All Items!", function()
			print("All Weapons Given!")
			workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["Remington 870"].ITEMPICKUP)
			workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver.M9.ITEMPICKUP)
			workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.single.Hammer.ITEMPICKUP)
			workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["AK-47"].ITEMPICKUP)
		end)
		Section:NewToggle("Invisible Guns", "Makes Your Guns Invisible(NOT FE)", function(state)
			if state then
	
				while wait() do
	
					for i,v in pairs(game.Players.LocalPlayer.Backpack["AK-47"].Model:GetChildren()) do
						if v.Name == "Part" then
							v.Transparency = 1
						end
					end
	
					local M9 = game.Players.LocalPlayer.Backpack["M9"].Part
	
					M9.Transparency = 1
	
					for i,a in pairs(game.Players.LocalPlayer.Backpack["Remington 870"].Model:GetChildren()) do
						if a.Name == "Part" then
							a.Transparency = 1
						end
					end
				end
			else
	
	
				while wait() do
					for i,v in pairs(game.Players.LocalPlayer.Backpack["AK-47"].Model:GetChildren()) do
						if v.Name == "Part" then
							v.Transparency = 0
						end
					end
	
					local M9 = game.Players.LocalPlayer.Backpack["M9"].Part
	
					M9.Transparency = 0
	
					for i,b in pairs(game.Players.LocalPlayer.Backpack["Remington 870"].Model:GetChildren()) do
						if b.Name == "Part" then
							b.Transparency = 0
						end
					end
				end
			end
		end)
		MiscSection:NewButton("Remove all Doors", "Removes Every Door!", function()
			for i,d in pairs(game.Workspace.Doors:GetChildren()) do
				if d.ClassName == "Model" then
					d:Destroy()
				end
			end
		end)
	
		Section2:NewButton("Auto Fire", "Turns On AutoFire!", function()
			while wait() do
				local Remington = require(game.Players.LocalPlayer.Backpack["Remington 870"].GunStates)
				local Pistol = require(game.Players.LocalPlayer.Backpack.M9.GunStates)
				local AK = require(game.Players.LocalPlayer.Backpack["AK-47"].GunStates)
				Remington["AutoFire"] = true
				Pistol["AutoFire"] = true
				AK["AutoFire"] = true
			end
		end)
		Section2:NewButton("Fire Rate", "Decreases Your Fire Rate!", function()
			while wait() do
				local Remington = require(game.Players.LocalPlayer.Backpack["Remington 870"].GunStates)
				local Pistol = require(game.Players.LocalPlayer.Backpack.M9.GunStates)
				local AK = require(game.Players.LocalPlayer.Backpack["AK-47"].GunStates)
				Remington["FireRate"] = 0.00001
				Pistol["FireRate"] = 0.00001
				AK["FireRate"] = 0.00001
			end
		end)
		Section2:NewButton("Spread", "Decreases Your Spread!", function()
			while wait() do
				local Remington = require(game.Players.LocalPlayer.Backpack["Remington 870"].GunStates)
				local Pistol = require(game.Players.LocalPlayer.Backpack.M9.GunStates)
				local AK = require(game.Players.LocalPlayer.Backpack["AK-47"].GunStates)
				Remington["Spread"] = 0
				Pistol["Spread"] = 0
				AK["Spread"] = 0
			end
		end)
		Section2:NewButton("Damage", "Adds More Damage To Other Players!", function()
			while wait() do
				local Remington = require(game.Players.LocalPlayer.Backpack["Remington 870"].GunStates)
				local Pistol = require(game.Players.LocalPlayer.Backpack.M9.GunStates)
				local AK = require(game.Players.LocalPlayer.Backpack["AK-47"].GunStates)
				Remington["Damage"] = 99999999999
				Pistol["Damage"] = 99999999999
				AK["Damage"] = 99999999999
			end
		end)
		Section2:NewButton("Store Ammo", "Adds More Stored ammo To your guns!", function()
			while wait() do
				local Remington = require(game.Players.LocalPlayer.Backpack["Remington 870"].GunStates)
				local Pistol = require(game.Players.LocalPlayer.Backpack.M9.GunStates)
				local AK = require(game.Players.LocalPlayer.Backpack["AK-47"].GunStates)
				Remington["StoredAmmo"] = 999999999999
				Pistol["StoredAmmo"] = 999999999999
				AK["StoredAmmo"] = 999999999999
			end
		end)
		Section2:NewButton("Current Ammo", "Adds Ammo!", function()
			while wait() do
				local Remington = require(game.Players.LocalPlayer.Backpack["Remington 870"].GunStates)
				local Pistol = require(game.Players.LocalPlayer.Backpack.M9.GunStates)
				local AK = require(game.Players.LocalPlayer.Backpack["AK-47"].GunStates)
				Remington["CurrentAmmo"] = 999999999999
				Pistol["CurrentAmmo"] = 999999999999
				AK["CurrentAmmo"] = 999999999999
			end
		end)
	
		Others:NewTextBox("Reload Time[BROKEN]", "Adds Less Reload Time!", function(txt)
			print(txt)
			while wait() do
				local Remington = require(game.Players.LocalPlayer.Backpack["Remington 870"].GunStates)
				local Pistol = require(game.Players.LocalPlayer.Backpack.M9.GunStates)
				local AK = require(game.Players.LocalPlayer.Backpack["AK-47"].GunStates)
				Remington["ReloadTime"] = txt
				Pistol["ReloadTime"] = txt
				AK["ReloadTime"] = txt
			end
		end)
	
		AdminSection:NewButton("Admin Commands", "Gives You Commands!", function()
			loadstring(game:HttpGet(('https://raw.githubusercontent.com/XTheMasterX/Scripts/Main/PrisonLife'),true))()
		end)
	
		MiscSection:NewButton("Remove All Fences", "All Fences Will Be Removed!", function()
			for i,l in pairs(game.Workspace["Prison_Fences"]:GetChildren()) do
				if l.Name == "fence" then
					l:Destroy()
				end
			end
		end)
	
		MiscSection:NewButton("Remove All Gates", "All Fences Will Be Removed!", function()
			game.Workspace["Prison_Fences"]["Prison_Gate"]:Destroy()
			game.Workspace["Prison_Fences"]["gate"]:Destroy()
		end)
	
		Section44:NewButton("Outside of prison", "Teleports You outside of the prison!", function()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(451.6684265136719, 98.0399169921875, 2216.338134765625)
		end)
		Section44:NewButton("Prison Yard", "Teleports You to the Prison Yard", function()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(736.4671630859375, 97.99992370605469, 2517.583740234375)
		end)
		Section44:NewButton("Kitchen", "Teleports You to the Kitchen!", function()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(906.641845703125, 99.98993682861328, 2237.67333984375)
		end)
		Section44:NewButton("Prison Cells", "Teleports You to the Prison Cells!", function()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(919.5551147460938, 99.98998260498047, 2441.700927734375)
		end)
		Section44:NewButton("Surveilance Room", "Teleports You to the Surveilance Room!", function()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(795.251953125, 99.98998260498047, 2327.720703125)
		end)
		Section44:NewButton("Break Room", "Teleports You to the Break Room!", function()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(800.0896606445312, 99.98998260498047, 2266.71630859375)
		end)
		Section44:NewButton("Police Armory", "Teleports You to the Police Armory!", function()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(837.2889404296875, 99.98998260498047, 2270.99658203125)
		end)
		Section44:NewButton("Police Room", "Teleports to to the Police Room", function()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(836.5386352539062, 99.98998260498047, 2320.604248046875)
		end)
		Section44:NewButton("Cafeteria", "Teleports you to the Cafeteria!", function()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(918.994873046875, 99.98993682861328, 2325.73095703125)
		end)
		Section44:NewButton("Criminal Base Inside", "Teleports you to the Criminal Base Inside!", function()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-975.8451538085938, 109.32379150390625, 2053.11376953125)
		end)
		-- Commands
		Commands:NewLabel(":rank player — gives player commands")
		Commands:NewLabel(":kill player — kills player")
		Commands:NewLabel(":sa player — spam arrest player")
		Commands:NewLabel(":crim player — makes player criminal")
		Commands:NewLabel(":bring player — brings player")
		Commands:NewLabel(":goto player — makes you go to player")
		Commands:NewLabel(":void player — voids player")
		Commands:NewLabel(":key player — gives player keycard")
		Commands:NewLabel(":cuffs player — gives player handcuffs")
		Commands:NewLabel(":trap player — traps player")
		Commands:NewLabel(":yard player — brings player to yard")
		Commands:NewLabel(":base player — brings player to criminal base")
		Commands:NewLabel(":prison player — brings player to prison")
		Commands:NewLabel(":lk — loopkills player")
		Commands:NewLabel(":aura — gives player kill aura")
		Commands:NewLabel(":virus — makes anyone who touch player dies")
		Commands:NewLabel(":oof — kills everyone")
		Commands:NewLabel(":spike — lag spike")
		Commands:NewLabel(":bspike — big lag spike")
		Commands:NewLabel(":lag — lags the server")
		Commands:NewLabel(":crash — crashes the server")
		Commands:NewLabel(":tk player — teleport you to player and kills them")
		Commands:NewLabel(":ltk player — loops tpkill")
		Commands:NewLabel(":logs — prints all used cmds")
	
	
		CreditsSection:NewLabel("Scripts Made By: N1NJ4")
		CreditsSection:NewLabel("UI Library: Kavo UI Library")
		CreditsSection:NewLabel("UI Library Made by: xHeptc")
	
		Local:NewSlider("Walkspeed", "Changes Your Walking Speed!", 500, 16, function(S) -- 500 (MaxValue) | 0 (MinValue)
			game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = S
		end)
		Local:NewSlider("JumpPower", "Changes Your Walking Speed!", 500, 16, function(P) -- 500 (MaxValue) | 0 (MinValue)
			game.Players.LocalPlayer.Character.Humanoid.JumpPower = P
		end)
		Local:NewTextBox("NoClip Key", "Adds a key to ur no clip!", function(NoClip)
			print("key set to "..NoClip)
			local StealthMode = true -- If game has an anticheat that checks the logs
	
			local Indicator
	
			if not StealthMode then
				local ScreenGui = Instance.new("ScreenGui", game.CoreGui)
				print("NOCLIP: Press Q to Activate")
				Indicator = Instance.new("TextLabel", ScreenGui)
				Indicator.AnchorPoint = Vector2.new(0, 1)
				Indicator.Position = UDim2.new(0, 0, 1, 0)
				Indicator.Size = UDim2.new(0, 200, 0, 50)
				Indicator.BackgroundTransparency = 1
				Indicator.TextScaled = true
				Indicator.TextStrokeTransparency = 0
				Indicator.TextColor3 = Color3.new(0, 0, 0)
				Indicator.TextStrokeColor3 = Color3.new(1, 1, 1)
				Indicator.Text = "Noclip: Enabled"
			end
	
			local noclip = true
			local player = game.Players.LocalPlayer
			local character = player.Character or player.CharacterAdded:Wait()
	
			local mouse = player:GetMouse()
	
			mouse.KeyDown:Connect(function(key)
				if key == NoClip then
					noclip = not noclip
	
					if not StealthMode then
						Indicator.Text = "Noclip: " .. (noclip and "Enabled" or "Disabled")
					end
				end
			end)
	
			while true do
				player = game.Players.LocalPlayer
				character = player.Character
	
				if noclip then
					for _, v in pairs(character:GetDescendants()) do
						pcall(function()
							if v:IsA("BasePart") then
								v.CanCollide = false
							end
						end)
					end
				end
	
				game:GetService("RunService").Stepped:wait()
			end
		end)
	end)
end
coroutine.wrap(SIICX_fake_script)()
local function DYNCH_fake_script() -- Sentinel.LocalScript 
	local script = Instance.new('LocalScript', Sentinel)

	script.Parent.MouseButton1Click:Connect(function()
		script.Parent.Parent.Parent.Parent:TweenPosition(UDim2.new(0.008, 0,-0.5, 0, "Linear"))
		wait(1)
	
	
		local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
		local Window = Library.CreateLib("Prison Life", "Sentinel")
		local Tab = Window:NewTab("Combat")
		local Local2 = Window:NewTab("LocalPlayer")
		local Local = Local2:NewSection("LocalPlayer")
		local Misc = Window:NewTab("Miscellaneous")
		local MiscSection = Misc:NewSection("Miscellaneous")
		local Section = Tab:NewSection("Combat")
		local Section2 = Tab:NewSection("Gun Mods")
		local Others = Tab:NewSection("Others")
		local Teleports = Window:NewTab("Teleports")
		local Section44 = Teleports:NewSection("Teleports")
		local AdminCommands = Window:NewTab("Admin Commands")
		local Credits = Window:NewTab("Credits")
		local CreditsSection = Credits:NewSection("Credits")
		local AdminSection = AdminCommands:NewSection("Admin")
		local Commands = AdminCommands:NewSection("Commands:")
	
	
		--Guns For Gun Mods
	
	
	
		Section:NewButton("Gives You All Items(No Gamepasses)", "Grab All Items!", function()
			print("All Weapons Given!")
			workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["Remington 870"].ITEMPICKUP)
			workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver.M9.ITEMPICKUP)
			workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.single.Hammer.ITEMPICKUP)
			workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["AK-47"].ITEMPICKUP)
		end)
		Section:NewToggle("Invisible Guns", "Makes Your Guns Invisible(NOT FE)", function(state)
			if state then
	
				while wait() do
	
					for i,v in pairs(game.Players.LocalPlayer.Backpack["AK-47"].Model:GetChildren()) do
						if v.Name == "Part" then
							v.Transparency = 1
						end
					end
	
					local M9 = game.Players.LocalPlayer.Backpack["M9"].Part
	
					M9.Transparency = 1
	
					for i,a in pairs(game.Players.LocalPlayer.Backpack["Remington 870"].Model:GetChildren()) do
						if a.Name == "Part" then
							a.Transparency = 1
						end
					end
				end
			else
	
	
				while wait() do
					for i,v in pairs(game.Players.LocalPlayer.Backpack["AK-47"].Model:GetChildren()) do
						if v.Name == "Part" then
							v.Transparency = 0
						end
					end
	
					local M9 = game.Players.LocalPlayer.Backpack["M9"].Part
	
					M9.Transparency = 0
	
					for i,b in pairs(game.Players.LocalPlayer.Backpack["Remington 870"].Model:GetChildren()) do
						if b.Name == "Part" then
							b.Transparency = 0
						end
					end
				end
			end
		end)
		MiscSection:NewButton("Remove all Doors", "Removes Every Door!", function()
			for i,d in pairs(game.Workspace.Doors:GetChildren()) do
				if d.ClassName == "Model" then
					d:Destroy()
				end
			end
		end)
	
		Section2:NewButton("Auto Fire", "Turns On AutoFire!", function()
			while wait() do
				local Remington = require(game.Players.LocalPlayer.Backpack["Remington 870"].GunStates)
				local Pistol = require(game.Players.LocalPlayer.Backpack.M9.GunStates)
				local AK = require(game.Players.LocalPlayer.Backpack["AK-47"].GunStates)
				Remington["AutoFire"] = true
				Pistol["AutoFire"] = true
				AK["AutoFire"] = true
			end
		end)
		Section2:NewButton("Fire Rate", "Decreases Your Fire Rate!", function()
			while wait() do
				local Remington = require(game.Players.LocalPlayer.Backpack["Remington 870"].GunStates)
				local Pistol = require(game.Players.LocalPlayer.Backpack.M9.GunStates)
				local AK = require(game.Players.LocalPlayer.Backpack["AK-47"].GunStates)
				Remington["FireRate"] = 0.00001
				Pistol["FireRate"] = 0.00001
				AK["FireRate"] = 0.00001
			end
		end)
		Section2:NewButton("Spread", "Decreases Your Spread!", function()
			while wait() do
				local Remington = require(game.Players.LocalPlayer.Backpack["Remington 870"].GunStates)
				local Pistol = require(game.Players.LocalPlayer.Backpack.M9.GunStates)
				local AK = require(game.Players.LocalPlayer.Backpack["AK-47"].GunStates)
				Remington["Spread"] = 0
				Pistol["Spread"] = 0
				AK["Spread"] = 0
			end
		end)
		Section2:NewButton("Damage", "Adds More Damage To Other Players!", function()
			while wait() do
				local Remington = require(game.Players.LocalPlayer.Backpack["Remington 870"].GunStates)
				local Pistol = require(game.Players.LocalPlayer.Backpack.M9.GunStates)
				local AK = require(game.Players.LocalPlayer.Backpack["AK-47"].GunStates)
				Remington["Damage"] = 99999999999
				Pistol["Damage"] = 99999999999
				AK["Damage"] = 99999999999
			end
		end)
		Section2:NewButton("Store Ammo", "Adds More Stored ammo To your guns!", function()
			while wait() do
				local Remington = require(game.Players.LocalPlayer.Backpack["Remington 870"].GunStates)
				local Pistol = require(game.Players.LocalPlayer.Backpack.M9.GunStates)
				local AK = require(game.Players.LocalPlayer.Backpack["AK-47"].GunStates)
				Remington["StoredAmmo"] = 999999999999
				Pistol["StoredAmmo"] = 999999999999
				AK["StoredAmmo"] = 999999999999
			end
		end)
		Section2:NewButton("Current Ammo", "Adds Ammo!", function()
			while wait() do
				local Remington = require(game.Players.LocalPlayer.Backpack["Remington 870"].GunStates)
				local Pistol = require(game.Players.LocalPlayer.Backpack.M9.GunStates)
				local AK = require(game.Players.LocalPlayer.Backpack["AK-47"].GunStates)
				Remington["CurrentAmmo"] = 999999999999
				Pistol["CurrentAmmo"] = 999999999999
				AK["CurrentAmmo"] = 999999999999
			end
		end)
	
		Others:NewTextBox("Reload Time[BROKEN]", "Adds Less Reload Time!", function(txt)
			print(txt)
			while wait() do
				local Remington = require(game.Players.LocalPlayer.Backpack["Remington 870"].GunStates)
				local Pistol = require(game.Players.LocalPlayer.Backpack.M9.GunStates)
				local AK = require(game.Players.LocalPlayer.Backpack["AK-47"].GunStates)
				Remington["ReloadTime"] = txt
				Pistol["ReloadTime"] = txt
				AK["ReloadTime"] = txt
			end
		end)
	
		AdminSection:NewButton("Admin Commands", "Gives You Commands!", function()
			loadstring(game:HttpGet(('https://raw.githubusercontent.com/XTheMasterX/Scripts/Main/PrisonLife'),true))()
		end)
	
		MiscSection:NewButton("Remove All Fences", "All Fences Will Be Removed!", function()
			for i,l in pairs(game.Workspace["Prison_Fences"]:GetChildren()) do
				if l.Name == "fence" then
					l:Destroy()
				end
			end
		end)
	
		MiscSection:NewButton("Remove All Gates", "All Fences Will Be Removed!", function()
			game.Workspace["Prison_Fences"]["Prison_Gate"]:Destroy()
			game.Workspace["Prison_Fences"]["gate"]:Destroy()
		end)
	
		Section44:NewButton("Outside of prison", "Teleports You outside of the prison!", function()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(451.6684265136719, 98.0399169921875, 2216.338134765625)
		end)
		Section44:NewButton("Prison Yard", "Teleports You to the Prison Yard", function()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(736.4671630859375, 97.99992370605469, 2517.583740234375)
		end)
		Section44:NewButton("Kitchen", "Teleports You to the Kitchen!", function()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(906.641845703125, 99.98993682861328, 2237.67333984375)
		end)
		Section44:NewButton("Prison Cells", "Teleports You to the Prison Cells!", function()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(919.5551147460938, 99.98998260498047, 2441.700927734375)
		end)
		Section44:NewButton("Surveilance Room", "Teleports You to the Surveilance Room!", function()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(795.251953125, 99.98998260498047, 2327.720703125)
		end)
		Section44:NewButton("Break Room", "Teleports You to the Break Room!", function()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(800.0896606445312, 99.98998260498047, 2266.71630859375)
		end)
		Section44:NewButton("Police Armory", "Teleports You to the Police Armory!", function()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(837.2889404296875, 99.98998260498047, 2270.99658203125)
		end)
		Section44:NewButton("Police Room", "Teleports to to the Police Room", function()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(836.5386352539062, 99.98998260498047, 2320.604248046875)
		end)
		Section44:NewButton("Cafeteria", "Teleports you to the Cafeteria!", function()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(918.994873046875, 99.98993682861328, 2325.73095703125)
		end)
		Section44:NewButton("Criminal Base Inside", "Teleports you to the Criminal Base Inside!", function()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-975.8451538085938, 109.32379150390625, 2053.11376953125)
		end)
		-- Commands
		Commands:NewLabel(":rank player — gives player commands")
		Commands:NewLabel(":kill player — kills player")
		Commands:NewLabel(":sa player — spam arrest player")
		Commands:NewLabel(":crim player — makes player criminal")
		Commands:NewLabel(":bring player — brings player")
		Commands:NewLabel(":goto player — makes you go to player")
		Commands:NewLabel(":void player — voids player")
		Commands:NewLabel(":key player — gives player keycard")
		Commands:NewLabel(":cuffs player — gives player handcuffs")
		Commands:NewLabel(":trap player — traps player")
		Commands:NewLabel(":yard player — brings player to yard")
		Commands:NewLabel(":base player — brings player to criminal base")
		Commands:NewLabel(":prison player — brings player to prison")
		Commands:NewLabel(":lk — loopkills player")
		Commands:NewLabel(":aura — gives player kill aura")
		Commands:NewLabel(":virus — makes anyone who touch player dies")
		Commands:NewLabel(":oof — kills everyone")
		Commands:NewLabel(":spike — lag spike")
		Commands:NewLabel(":bspike — big lag spike")
		Commands:NewLabel(":lag — lags the server")
		Commands:NewLabel(":crash — crashes the server")
		Commands:NewLabel(":tk player — teleport you to player and kills them")
		Commands:NewLabel(":ltk player — loops tpkill")
		Commands:NewLabel(":logs — prints all used cmds")
	
	
		CreditsSection:NewLabel("Scripts Made By: N1NJ4")
		CreditsSection:NewLabel("UI Library: Kavo UI Library")
		CreditsSection:NewLabel("UI Library Made by: xHeptc")
	
		Local:NewSlider("Walkspeed", "Changes Your Walking Speed!", 500, 16, function(S) -- 500 (MaxValue) | 0 (MinValue)
			game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = S
		end)
		Local:NewSlider("JumpPower", "Changes Your Walking Speed!", 500, 16, function(P) -- 500 (MaxValue) | 0 (MinValue)
			game.Players.LocalPlayer.Character.Humanoid.JumpPower = P
		end)
		Local:NewTextBox("NoClip Key", "Adds a key to ur no clip!", function(NoClip)
			print("key set to "..NoClip)
			local StealthMode = true -- If game has an anticheat that checks the logs
	
			local Indicator
	
			if not StealthMode then
				local ScreenGui = Instance.new("ScreenGui", game.CoreGui)
				print("NOCLIP: Press Q to Activate")
				Indicator = Instance.new("TextLabel", ScreenGui)
				Indicator.AnchorPoint = Vector2.new(0, 1)
				Indicator.Position = UDim2.new(0, 0, 1, 0)
				Indicator.Size = UDim2.new(0, 200, 0, 50)
				Indicator.BackgroundTransparency = 1
				Indicator.TextScaled = true
				Indicator.TextStrokeTransparency = 0
				Indicator.TextColor3 = Color3.new(0, 0, 0)
				Indicator.TextStrokeColor3 = Color3.new(1, 1, 1)
				Indicator.Text = "Noclip: Enabled"
			end
	
			local noclip = true
			local player = game.Players.LocalPlayer
			local character = player.Character or player.CharacterAdded:Wait()
	
			local mouse = player:GetMouse()
	
			mouse.KeyDown:Connect(function(key)
				if key == NoClip then
					noclip = not noclip
	
					if not StealthMode then
						Indicator.Text = "Noclip: " .. (noclip and "Enabled" or "Disabled")
					end
				end
			end)
	
			while true do
				player = game.Players.LocalPlayer
				character = player.Character
	
				if noclip then
					for _, v in pairs(character:GetDescendants()) do
						pcall(function()
							if v:IsA("BasePart") then
								v.CanCollide = false
							end
						end)
					end
				end
	
				game:GetService("RunService").Stepped:wait()
			end
		end)
	end)
end
coroutine.wrap(DYNCH_fake_script)()
local function IBUWQK_fake_script() -- Serpent.LocalScript 
	local script = Instance.new('LocalScript', Serpent)

	script.Parent.MouseButton1Click:Connect(function()
		script.Parent.Parent.Parent.Parent:TweenPosition(UDim2.new(0.008, 0,-0.5, 0, "Linear"))
		wait(1)
	
	
		local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
		local Window = Library.CreateLib("Prison Life", "Serpent")
		local Tab = Window:NewTab("Combat")
		local Local2 = Window:NewTab("LocalPlayer")
		local Local = Local2:NewSection("LocalPlayer")
		local Misc = Window:NewTab("Miscellaneous")
		local MiscSection = Misc:NewSection("Miscellaneous")
		local Section = Tab:NewSection("Combat")
		local Section2 = Tab:NewSection("Gun Mods")
		local Others = Tab:NewSection("Others")
		local Teleports = Window:NewTab("Teleports")
		local Section44 = Teleports:NewSection("Teleports")
		local AdminCommands = Window:NewTab("Admin Commands")
		local Credits = Window:NewTab("Credits")
		local CreditsSection = Credits:NewSection("Credits")
		local AdminSection = AdminCommands:NewSection("Admin")
		local Commands = AdminCommands:NewSection("Commands:")
	
	
		--Guns For Gun Mods
	
	
	
		Section:NewButton("Gives You All Items(No Gamepasses)", "Grab All Items!", function()
			print("All Weapons Given!")
			workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["Remington 870"].ITEMPICKUP)
			workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver.M9.ITEMPICKUP)
			workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.single.Hammer.ITEMPICKUP)
			workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["AK-47"].ITEMPICKUP)
		end)
		Section:NewToggle("Invisible Guns", "Makes Your Guns Invisible(NOT FE)", function(state)
			if state then
	
				while wait() do
	
					for i,v in pairs(game.Players.LocalPlayer.Backpack["AK-47"].Model:GetChildren()) do
						if v.Name == "Part" then
							v.Transparency = 1
						end
					end
	
					local M9 = game.Players.LocalPlayer.Backpack["M9"].Part
	
					M9.Transparency = 1
	
					for i,a in pairs(game.Players.LocalPlayer.Backpack["Remington 870"].Model:GetChildren()) do
						if a.Name == "Part" then
							a.Transparency = 1
						end
					end
				end
			else
	
	
				while wait() do
					for i,v in pairs(game.Players.LocalPlayer.Backpack["AK-47"].Model:GetChildren()) do
						if v.Name == "Part" then
							v.Transparency = 0
						end
					end
	
					local M9 = game.Players.LocalPlayer.Backpack["M9"].Part
	
					M9.Transparency = 0
	
					for i,b in pairs(game.Players.LocalPlayer.Backpack["Remington 870"].Model:GetChildren()) do
						if b.Name == "Part" then
							b.Transparency = 0
						end
					end
				end
			end
		end)
		MiscSection:NewButton("Remove all Doors", "Removes Every Door!", function()
			for i,d in pairs(game.Workspace.Doors:GetChildren()) do
				if d.ClassName == "Model" then
					d:Destroy()
				end
			end
		end)
	
		Section2:NewButton("Auto Fire", "Turns On AutoFire!", function()
			while wait() do
				local Remington = require(game.Players.LocalPlayer.Backpack["Remington 870"].GunStates)
				local Pistol = require(game.Players.LocalPlayer.Backpack.M9.GunStates)
				local AK = require(game.Players.LocalPlayer.Backpack["AK-47"].GunStates)
				Remington["AutoFire"] = true
				Pistol["AutoFire"] = true
				AK["AutoFire"] = true
			end
		end)
		Section2:NewButton("Fire Rate", "Decreases Your Fire Rate!", function()
			while wait() do
				local Remington = require(game.Players.LocalPlayer.Backpack["Remington 870"].GunStates)
				local Pistol = require(game.Players.LocalPlayer.Backpack.M9.GunStates)
				local AK = require(game.Players.LocalPlayer.Backpack["AK-47"].GunStates)
				Remington["FireRate"] = 0.00001
				Pistol["FireRate"] = 0.00001
				AK["FireRate"] = 0.00001
			end
		end)
		Section2:NewButton("Spread", "Decreases Your Spread!", function()
			while wait() do
				local Remington = require(game.Players.LocalPlayer.Backpack["Remington 870"].GunStates)
				local Pistol = require(game.Players.LocalPlayer.Backpack.M9.GunStates)
				local AK = require(game.Players.LocalPlayer.Backpack["AK-47"].GunStates)
				Remington["Spread"] = 0
				Pistol["Spread"] = 0
				AK["Spread"] = 0
			end
		end)
		Section2:NewButton("Damage", "Adds More Damage To Other Players!", function()
			while wait() do
				local Remington = require(game.Players.LocalPlayer.Backpack["Remington 870"].GunStates)
				local Pistol = require(game.Players.LocalPlayer.Backpack.M9.GunStates)
				local AK = require(game.Players.LocalPlayer.Backpack["AK-47"].GunStates)
				Remington["Damage"] = 99999999999
				Pistol["Damage"] = 99999999999
				AK["Damage"] = 99999999999
			end
		end)
		Section2:NewButton("Store Ammo", "Adds More Stored ammo To your guns!", function()
			while wait() do
				local Remington = require(game.Players.LocalPlayer.Backpack["Remington 870"].GunStates)
				local Pistol = require(game.Players.LocalPlayer.Backpack.M9.GunStates)
				local AK = require(game.Players.LocalPlayer.Backpack["AK-47"].GunStates)
				Remington["StoredAmmo"] = 999999999999
				Pistol["StoredAmmo"] = 999999999999
				AK["StoredAmmo"] = 999999999999
			end
		end)
		Section2:NewButton("Current Ammo", "Adds Ammo!", function()
			while wait() do
				local Remington = require(game.Players.LocalPlayer.Backpack["Remington 870"].GunStates)
				local Pistol = require(game.Players.LocalPlayer.Backpack.M9.GunStates)
				local AK = require(game.Players.LocalPlayer.Backpack["AK-47"].GunStates)
				Remington["CurrentAmmo"] = 999999999999
				Pistol["CurrentAmmo"] = 999999999999
				AK["CurrentAmmo"] = 999999999999
			end
		end)
	
		Others:NewTextBox("Reload Time[BROKEN]", "Adds Less Reload Time!", function(txt)
			print(txt)
			while wait() do
				local Remington = require(game.Players.LocalPlayer.Backpack["Remington 870"].GunStates)
				local Pistol = require(game.Players.LocalPlayer.Backpack.M9.GunStates)
				local AK = require(game.Players.LocalPlayer.Backpack["AK-47"].GunStates)
				Remington["ReloadTime"] = txt
				Pistol["ReloadTime"] = txt
				AK["ReloadTime"] = txt
			end
		end)
	
		AdminSection:NewButton("Admin Commands", "Gives You Commands!", function()
			loadstring(game:HttpGet(('https://raw.githubusercontent.com/XTheMasterX/Scripts/Main/PrisonLife'),true))()
		end)
	
		MiscSection:NewButton("Remove All Fences", "All Fences Will Be Removed!", function()
			for i,l in pairs(game.Workspace["Prison_Fences"]:GetChildren()) do
				if l.Name == "fence" then
					l:Destroy()
				end
			end
		end)
	
		MiscSection:NewButton("Remove All Gates", "All Fences Will Be Removed!", function()
			game.Workspace["Prison_Fences"]["Prison_Gate"]:Destroy()
			game.Workspace["Prison_Fences"]["gate"]:Destroy()
		end)
	
		Section44:NewButton("Outside of prison", "Teleports You outside of the prison!", function()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(451.6684265136719, 98.0399169921875, 2216.338134765625)
		end)
		Section44:NewButton("Prison Yard", "Teleports You to the Prison Yard", function()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(736.4671630859375, 97.99992370605469, 2517.583740234375)
		end)
		Section44:NewButton("Kitchen", "Teleports You to the Kitchen!", function()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(906.641845703125, 99.98993682861328, 2237.67333984375)
		end)
		Section44:NewButton("Prison Cells", "Teleports You to the Prison Cells!", function()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(919.5551147460938, 99.98998260498047, 2441.700927734375)
		end)
		Section44:NewButton("Surveilance Room", "Teleports You to the Surveilance Room!", function()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(795.251953125, 99.98998260498047, 2327.720703125)
		end)
		Section44:NewButton("Break Room", "Teleports You to the Break Room!", function()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(800.0896606445312, 99.98998260498047, 2266.71630859375)
		end)
		Section44:NewButton("Police Armory", "Teleports You to the Police Armory!", function()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(837.2889404296875, 99.98998260498047, 2270.99658203125)
		end)
		Section44:NewButton("Police Room", "Teleports to to the Police Room", function()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(836.5386352539062, 99.98998260498047, 2320.604248046875)
		end)
		Section44:NewButton("Cafeteria", "Teleports you to the Cafeteria!", function()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(918.994873046875, 99.98993682861328, 2325.73095703125)
		end)
		Section44:NewButton("Criminal Base Inside", "Teleports you to the Criminal Base Inside!", function()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-975.8451538085938, 109.32379150390625, 2053.11376953125)
		end)
		-- Commands
		Commands:NewLabel(":rank player — gives player commands")
		Commands:NewLabel(":kill player — kills player")
		Commands:NewLabel(":sa player — spam arrest player")
		Commands:NewLabel(":crim player — makes player criminal")
		Commands:NewLabel(":bring player — brings player")
		Commands:NewLabel(":goto player — makes you go to player")
		Commands:NewLabel(":void player — voids player")
		Commands:NewLabel(":key player — gives player keycard")
		Commands:NewLabel(":cuffs player — gives player handcuffs")
		Commands:NewLabel(":trap player — traps player")
		Commands:NewLabel(":yard player — brings player to yard")
		Commands:NewLabel(":base player — brings player to criminal base")
		Commands:NewLabel(":prison player — brings player to prison")
		Commands:NewLabel(":lk — loopkills player")
		Commands:NewLabel(":aura — gives player kill aura")
		Commands:NewLabel(":virus — makes anyone who touch player dies")
		Commands:NewLabel(":oof — kills everyone")
		Commands:NewLabel(":spike — lag spike")
		Commands:NewLabel(":bspike — big lag spike")
		Commands:NewLabel(":lag — lags the server")
		Commands:NewLabel(":crash — crashes the server")
		Commands:NewLabel(":tk player — teleport you to player and kills them")
		Commands:NewLabel(":ltk player — loops tpkill")
		Commands:NewLabel(":logs — prints all used cmds")
	
	
		CreditsSection:NewLabel("Scripts Made By: N1NJ4")
		CreditsSection:NewLabel("UI Library: Kavo UI Library")
		CreditsSection:NewLabel("UI Library Made by: xHeptc")
	
		Local:NewSlider("Walkspeed", "Changes Your Walking Speed!", 500, 16, function(S) -- 500 (MaxValue) | 0 (MinValue)
			game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = S
		end)
		Local:NewSlider("JumpPower", "Changes Your Walking Speed!", 500, 16, function(P) -- 500 (MaxValue) | 0 (MinValue)
			game.Players.LocalPlayer.Character.Humanoid.JumpPower = P
		end)
		Local:NewTextBox("NoClip Key", "Adds a key to ur no clip!", function(NoClip)
			print("key set to "..NoClip)
			local StealthMode = true -- If game has an anticheat that checks the logs
	
			local Indicator
	
			if not StealthMode then
				local ScreenGui = Instance.new("ScreenGui", game.CoreGui)
				print("NOCLIP: Press Q to Activate")
				Indicator = Instance.new("TextLabel", ScreenGui)
				Indicator.AnchorPoint = Vector2.new(0, 1)
				Indicator.Position = UDim2.new(0, 0, 1, 0)
				Indicator.Size = UDim2.new(0, 200, 0, 50)
				Indicator.BackgroundTransparency = 1
				Indicator.TextScaled = true
				Indicator.TextStrokeTransparency = 0
				Indicator.TextColor3 = Color3.new(0, 0, 0)
				Indicator.TextStrokeColor3 = Color3.new(1, 1, 1)
				Indicator.Text = "Noclip: Enabled"
			end
	
			local noclip = true
			local player = game.Players.LocalPlayer
			local character = player.Character or player.CharacterAdded:Wait()
	
			local mouse = player:GetMouse()
	
			mouse.KeyDown:Connect(function(key)
				if key == NoClip then
					noclip = not noclip
	
					if not StealthMode then
						Indicator.Text = "Noclip: " .. (noclip and "Enabled" or "Disabled")
					end
				end
			end)
	
			while true do
				player = game.Players.LocalPlayer
				character = player.Character
	
				if noclip then
					for _, v in pairs(character:GetDescendants()) do
						pcall(function()
							if v:IsA("BasePart") then
								v.CanCollide = false
							end
						end)
					end
				end
	
				game:GetService("RunService").Stepped:wait()
			end
		end)
	end)
end
coroutine.wrap(IBUWQK_fake_script)()
local function LHEIFNC_fake_script() -- Ocean.LocalScript 
	local script = Instance.new('LocalScript', Ocean)

	script.Parent.MouseButton1Click:Connect(function()
		script.Parent.Parent.Parent.Parent:TweenPosition(UDim2.new(0.008, 0,-0.5, 0, "Linear"))
		wait(1)
	
	
		local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
		local Window = Library.CreateLib("Prison Life", "Ocean")
		local Tab = Window:NewTab("Combat")
		local Local2 = Window:NewTab("LocalPlayer")
		local Local = Local2:NewSection("LocalPlayer")
		local Misc = Window:NewTab("Miscellaneous")
		local MiscSection = Misc:NewSection("Miscellaneous")
		local Section = Tab:NewSection("Combat")
		local Section2 = Tab:NewSection("Gun Mods")
		local Others = Tab:NewSection("Others")
		local Teleports = Window:NewTab("Teleports")
		local Section44 = Teleports:NewSection("Teleports")
		local AdminCommands = Window:NewTab("Admin Commands")
		local Credits = Window:NewTab("Credits")
		local CreditsSection = Credits:NewSection("Credits")
		local AdminSection = AdminCommands:NewSection("Admin")
		local Commands = AdminCommands:NewSection("Commands:")
	
	
		--Guns For Gun Mods
	
	
	
		Section:NewButton("Gives You All Items(No Gamepasses)", "Grab All Items!", function()
			print("All Weapons Given!")
			workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["Remington 870"].ITEMPICKUP)
			workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver.M9.ITEMPICKUP)
			workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.single.Hammer.ITEMPICKUP)
			workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["AK-47"].ITEMPICKUP)
		end)
		Section:NewToggle("Invisible Guns", "Makes Your Guns Invisible(NOT FE)", function(state)
			if state then
	
				while wait() do
	
					for i,v in pairs(game.Players.LocalPlayer.Backpack["AK-47"].Model:GetChildren()) do
						if v.Name == "Part" then
							v.Transparency = 1
						end
					end
	
					local M9 = game.Players.LocalPlayer.Backpack["M9"].Part
	
					M9.Transparency = 1
	
					for i,a in pairs(game.Players.LocalPlayer.Backpack["Remington 870"].Model:GetChildren()) do
						if a.Name == "Part" then
							a.Transparency = 1
						end
					end
				end
			else
	
	
				while wait() do
					for i,v in pairs(game.Players.LocalPlayer.Backpack["AK-47"].Model:GetChildren()) do
						if v.Name == "Part" then
							v.Transparency = 0
						end
					end
	
					local M9 = game.Players.LocalPlayer.Backpack["M9"].Part
	
					M9.Transparency = 0
	
					for i,b in pairs(game.Players.LocalPlayer.Backpack["Remington 870"].Model:GetChildren()) do
						if b.Name == "Part" then
							b.Transparency = 0
						end
					end
				end
			end
		end)
		MiscSection:NewButton("Remove all Doors", "Removes Every Door!", function()
			for i,d in pairs(game.Workspace.Doors:GetChildren()) do
				if d.ClassName == "Model" then
					d:Destroy()
				end
			end
		end)
	
		Section2:NewButton("Auto Fire", "Turns On AutoFire!", function()
			while wait() do
				local Remington = require(game.Players.LocalPlayer.Backpack["Remington 870"].GunStates)
				local Pistol = require(game.Players.LocalPlayer.Backpack.M9.GunStates)
				local AK = require(game.Players.LocalPlayer.Backpack["AK-47"].GunStates)
				Remington["AutoFire"] = true
				Pistol["AutoFire"] = true
				AK["AutoFire"] = true
			end
		end)
		Section2:NewButton("Fire Rate", "Decreases Your Fire Rate!", function()
			while wait() do
				local Remington = require(game.Players.LocalPlayer.Backpack["Remington 870"].GunStates)
				local Pistol = require(game.Players.LocalPlayer.Backpack.M9.GunStates)
				local AK = require(game.Players.LocalPlayer.Backpack["AK-47"].GunStates)
				Remington["FireRate"] = 0.00001
				Pistol["FireRate"] = 0.00001
				AK["FireRate"] = 0.00001
			end
		end)
		Section2:NewButton("Spread", "Decreases Your Spread!", function()
			while wait() do
				local Remington = require(game.Players.LocalPlayer.Backpack["Remington 870"].GunStates)
				local Pistol = require(game.Players.LocalPlayer.Backpack.M9.GunStates)
				local AK = require(game.Players.LocalPlayer.Backpack["AK-47"].GunStates)
				Remington["Spread"] = 0
				Pistol["Spread"] = 0
				AK["Spread"] = 0
			end
		end)
		Section2:NewButton("Damage", "Adds More Damage To Other Players!", function()
			while wait() do
				local Remington = require(game.Players.LocalPlayer.Backpack["Remington 870"].GunStates)
				local Pistol = require(game.Players.LocalPlayer.Backpack.M9.GunStates)
				local AK = require(game.Players.LocalPlayer.Backpack["AK-47"].GunStates)
				Remington["Damage"] = 99999999999
				Pistol["Damage"] = 99999999999
				AK["Damage"] = 99999999999
			end
		end)
		Section2:NewButton("Store Ammo", "Adds More Stored ammo To your guns!", function()
			while wait() do
				local Remington = require(game.Players.LocalPlayer.Backpack["Remington 870"].GunStates)
				local Pistol = require(game.Players.LocalPlayer.Backpack.M9.GunStates)
				local AK = require(game.Players.LocalPlayer.Backpack["AK-47"].GunStates)
				Remington["StoredAmmo"] = 999999999999
				Pistol["StoredAmmo"] = 999999999999
				AK["StoredAmmo"] = 999999999999
			end
		end)
		Section2:NewButton("Current Ammo", "Adds Ammo!", function()
			while wait() do
				local Remington = require(game.Players.LocalPlayer.Backpack["Remington 870"].GunStates)
				local Pistol = require(game.Players.LocalPlayer.Backpack.M9.GunStates)
				local AK = require(game.Players.LocalPlayer.Backpack["AK-47"].GunStates)
				Remington["CurrentAmmo"] = 999999999999
				Pistol["CurrentAmmo"] = 999999999999
				AK["CurrentAmmo"] = 999999999999
			end
		end)
	
		Others:NewTextBox("Reload Time[BROKEN]", "Adds Less Reload Time!", function(txt)
			print(txt)
			while wait() do
				local Remington = require(game.Players.LocalPlayer.Backpack["Remington 870"].GunStates)
				local Pistol = require(game.Players.LocalPlayer.Backpack.M9.GunStates)
				local AK = require(game.Players.LocalPlayer.Backpack["AK-47"].GunStates)
				Remington["ReloadTime"] = txt
				Pistol["ReloadTime"] = txt
				AK["ReloadTime"] = txt
			end
		end)
	
		AdminSection:NewButton("Admin Commands", "Gives You Commands!", function()
			loadstring(game:HttpGet(('https://raw.githubusercontent.com/XTheMasterX/Scripts/Main/PrisonLife'),true))()
		end)
	
		MiscSection:NewButton("Remove All Fences", "All Fences Will Be Removed!", function()
			for i,l in pairs(game.Workspace["Prison_Fences"]:GetChildren()) do
				if l.Name == "fence" then
					l:Destroy()
				end
			end
		end)
	
		MiscSection:NewButton("Remove All Gates", "All Fences Will Be Removed!", function()
			game.Workspace["Prison_Fences"]["Prison_Gate"]:Destroy()
			game.Workspace["Prison_Fences"]["gate"]:Destroy()
		end)
	
		Section44:NewButton("Outside of prison", "Teleports You outside of the prison!", function()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(451.6684265136719, 98.0399169921875, 2216.338134765625)
		end)
		Section44:NewButton("Prison Yard", "Teleports You to the Prison Yard", function()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(736.4671630859375, 97.99992370605469, 2517.583740234375)
		end)
		Section44:NewButton("Kitchen", "Teleports You to the Kitchen!", function()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(906.641845703125, 99.98993682861328, 2237.67333984375)
		end)
		Section44:NewButton("Prison Cells", "Teleports You to the Prison Cells!", function()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(919.5551147460938, 99.98998260498047, 2441.700927734375)
		end)
		Section44:NewButton("Surveilance Room", "Teleports You to the Surveilance Room!", function()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(795.251953125, 99.98998260498047, 2327.720703125)
		end)
		Section44:NewButton("Break Room", "Teleports You to the Break Room!", function()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(800.0896606445312, 99.98998260498047, 2266.71630859375)
		end)
		Section44:NewButton("Police Armory", "Teleports You to the Police Armory!", function()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(837.2889404296875, 99.98998260498047, 2270.99658203125)
		end)
		Section44:NewButton("Police Room", "Teleports to to the Police Room", function()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(836.5386352539062, 99.98998260498047, 2320.604248046875)
		end)
		Section44:NewButton("Cafeteria", "Teleports you to the Cafeteria!", function()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(918.994873046875, 99.98993682861328, 2325.73095703125)
		end)
		Section44:NewButton("Criminal Base Inside", "Teleports you to the Criminal Base Inside!", function()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-975.8451538085938, 109.32379150390625, 2053.11376953125)
		end)
		-- Commands
		Commands:NewLabel(":rank player — gives player commands")
		Commands:NewLabel(":kill player — kills player")
		Commands:NewLabel(":sa player — spam arrest player")
		Commands:NewLabel(":crim player — makes player criminal")
		Commands:NewLabel(":bring player — brings player")
		Commands:NewLabel(":goto player — makes you go to player")
		Commands:NewLabel(":void player — voids player")
		Commands:NewLabel(":key player — gives player keycard")
		Commands:NewLabel(":cuffs player — gives player handcuffs")
		Commands:NewLabel(":trap player — traps player")
		Commands:NewLabel(":yard player — brings player to yard")
		Commands:NewLabel(":base player — brings player to criminal base")
		Commands:NewLabel(":prison player — brings player to prison")
		Commands:NewLabel(":lk — loopkills player")
		Commands:NewLabel(":aura — gives player kill aura")
		Commands:NewLabel(":virus — makes anyone who touch player dies")
		Commands:NewLabel(":oof — kills everyone")
		Commands:NewLabel(":spike — lag spike")
		Commands:NewLabel(":bspike — big lag spike")
		Commands:NewLabel(":lag — lags the server")
		Commands:NewLabel(":crash — crashes the server")
		Commands:NewLabel(":tk player — teleport you to player and kills them")
		Commands:NewLabel(":ltk player — loops tpkill")
		Commands:NewLabel(":logs — prints all used cmds")
	
	
		CreditsSection:NewLabel("Scripts Made By: N1NJ4")
		CreditsSection:NewLabel("UI Library: Kavo UI Library")
		CreditsSection:NewLabel("UI Library Made by: xHeptc")
	
		Local:NewSlider("Walkspeed", "Changes Your Walking Speed!", 500, 16, function(S) -- 500 (MaxValue) | 0 (MinValue)
			game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = S
		end)
		Local:NewSlider("JumpPower", "Changes Your Walking Speed!", 500, 16, function(P) -- 500 (MaxValue) | 0 (MinValue)
			game.Players.LocalPlayer.Character.Humanoid.JumpPower = P
		end)
		Local:NewTextBox("NoClip Key", "Adds a key to ur no clip!", function(NoClip)
			print("key set to "..NoClip)
			local StealthMode = true -- If game has an anticheat that checks the logs
	
			local Indicator
	
			if not StealthMode then
				local ScreenGui = Instance.new("ScreenGui", game.CoreGui)
				print("NOCLIP: Press Q to Activate")
				Indicator = Instance.new("TextLabel", ScreenGui)
				Indicator.AnchorPoint = Vector2.new(0, 1)
				Indicator.Position = UDim2.new(0, 0, 1, 0)
				Indicator.Size = UDim2.new(0, 200, 0, 50)
				Indicator.BackgroundTransparency = 1
				Indicator.TextScaled = true
				Indicator.TextStrokeTransparency = 0
				Indicator.TextColor3 = Color3.new(0, 0, 0)
				Indicator.TextStrokeColor3 = Color3.new(1, 1, 1)
				Indicator.Text = "Noclip: Enabled"
			end
	
			local noclip = true
			local player = game.Players.LocalPlayer
			local character = player.Character or player.CharacterAdded:Wait()
	
			local mouse = player:GetMouse()
	
			mouse.KeyDown:Connect(function(key)
				if key == NoClip then
					noclip = not noclip
	
					if not StealthMode then
						Indicator.Text = "Noclip: " .. (noclip and "Enabled" or "Disabled")
					end
				end
			end)
	
			while true do
				player = game.Players.LocalPlayer
				character = player.Character
	
				if noclip then
					for _, v in pairs(character:GetDescendants()) do
						pcall(function()
							if v:IsA("BasePart") then
								v.CanCollide = false
							end
						end)
					end
				end
	
				game:GetService("RunService").Stepped:wait()
			end
		end)
	end)
end
coroutine.wrap(LHEIFNC_fake_script)()
local function QIATSHN_fake_script() -- Main.LocalScript 
	local script = Instance.new('LocalScript', Main)

	wait(0.233)
	script.Parent:TweenPosition(UDim2.new(0.008, 0,0.393, 0, "Linear"))
end
coroutine.wrap(QIATSHN_fake_script)()
local function UVUZD_fake_script() -- Themes.LocalScript 
	local script = Instance.new('LocalScript', Themes)

	--Positions
	--Normal: 0.008, 0,-0.5, 0
	--When Animated: 0.008, 0,0.393, 0
end
coroutine.wrap(UVUZD_fake_script)()

else
	game.Players.LocalPlayer:kick("Go To Prison Life!")
end