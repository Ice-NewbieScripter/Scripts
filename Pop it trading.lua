local Fluent = loadstring(game:HttpGet("https://pastebin.com/raw/7cEHWhKn"))()
local SaveManager = loadstring(game:HttpGet("https://pastebin.com/raw/jues6Pp5"))()
local InterfaceManager = loadstring(game:HttpGet("https://pastebin.com/raw/JpqE6yV2"))()

local Window = Fluent:CreateWindow({
    Title = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name,
    SubTitle = " Apex Hub | " ..  identifyexecutor(),
    TabWidth = 160,
    Size = UDim2.fromOffset(520, 320),
    Acrylic = true,
    Theme = "Black",
    MinimizeKey = Enum.KeyCode.LeftControl
})

local Tabs = {
    Main = Window:AddTab({ Title = "Information", Icon = "info" }),
    Settings = Window:AddTab({ Title = "Settings", Icon = "settings" }),
    Auto = Window:AddTab({ Title = "Auto", Icon = "moon" }),
    Misc = Window:AddTab({ Title = "Misc", Icon = "sun" }),
    Craft = Window:AddTab({ Title = "Auto Craft", Icon = "axe" }),
    Others = Window:AddTab({ Title = "Others", Icon = "folder" }),
    Fun = Window:AddTab({ Title = "Fun", Icon = "smile-plus" })
}

Tabs.Main:AddParagraph({
        Title = "Made by apex_scripts",
        Content = ""
    })
    
    Tabs.Main:AddButton({
        Title = "Discord server",
        Description = "",
        Callback = function()
            Window:Dialog({
                Title = "Discord",
                Content = "",
                Buttons = {
                    {
                        Title = "Confirm",
                        Callback = function()
                            setclipboard("https://discord.gg/jrA3MHq5rH")
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                             warn("canceled")
                        end
                    }
                }
            })
        end
    })
    
    SaveManager:SetLibrary(Fluent)
InterfaceManager:SetLibrary(Fluent)

-- Ignore keys that are used by ThemeManager.
-- (we dont want configs to save themes, do we?)
SaveManager:IgnoreThemeSettings()

-- You can add indexes of elements the save manager should ignore
SaveManager:SetIgnoreIndexes({})

-- use case for doing it this way:
-- a script hub could have themes in a global folder
-- and game configs in a separate folder per game
InterfaceManager:SetFolder("FluentScriptHub")
SaveManager:SetFolder("FluentScriptHub/specific-game")

InterfaceManager:BuildInterfaceSection(Tabs.Settings)
SaveManager:BuildConfigSection(Tabs.Settings)

local Input = Tabs.Auto:AddInput("Input", {
        Title = "Item name",
        Default = "",
        Placeholder = "Item Name Here",
        Numeric = false, -- Only allows numbers
        Finished = false, -- Only calls callback when you press enter
        Callback = function(arg)
            _G.C = arg
        end
    })
    
    local Toggle = Tabs.Auto:AddToggle("Auto Buy", { Title = "Auto Buy", Default = false })

Toggle:OnChanged(function()
    if Toggle.Value then
        _G.Jiji = true

while _G.Jiji do
task.wait()
local args = {
    [1] = _G.C
}
 
game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("BuyItemCash"):FireServer(unpack(args))
end

else
_G.Jiji = false

    end
end)

local Toggle = Tabs.Auto:AddToggle("Auto Drop", { Title = "Auto Drop", Default = false })

Toggle:OnChanged(function()
    if Toggle.Value then
        _G.Jiji = true

while _G.Jiji do
task.wait()
local args = {
    [1] = _G.C
}

game:GetService("ReplicatedStorage").RemoteEvents.Equip:FireServer(unpack(args))
wait(0.0002)
local args = {
    [1] = _G.C
}

game:GetService("ReplicatedStorage").RemoteEvents.Drop:FireServer(unpack(args))
end

else
_G.Jiji = false

    end
end)

local Toggle = Tabs.Auto:AddToggle("Auto Sell", { Title = "Auto Sell", Default = false })

Toggle:OnChanged(function()
    if Toggle.Value then
        _G.Jiji = true
        while _G.Jiji do
        task.wait()
        local args = {
    [1] = _G.C
}

game:GetService("ReplicatedStorage").RemoteEvents.Equip:FireServer(unpack(args))
wait(0.0002)
local args = {
    [1] = _G.C
}

game:GetService("ReplicatedStorage").RemoteEvents.Sell:FireServer(unpack(args))
end

else
_G.Jiji = false

    end
end)

local Toggle = Tabs.Misc:AddToggle("Auto Spin Wheel", { Title = "Auto Spin Wheel", Default = false })

Toggle:OnChanged(function()
    if Toggle.Value then
        _G.Jiji = true

while _G.Jiji do
task.wait()
game:GetService("ReplicatedStorage").RemoteEvents.SpinWheel:InvokeServer()
end

else
_G.Jiji = false

    end
end)

Tabs.Misc:AddButton({
        Title = "Fps Booster",
        Description = "",
        Callback = function()
            Window:Dialog({
                Title = "Gives More FPS",
                Content = "",
                Buttons = {
                    {
                        Title = "Confirm",
                        Callback = function()
                            for i,v in next, (workspace:GetDescendants()) do
 if v:IsA("Part") then v.Material = Enum.Material.SmoothPlastic
 end
 end
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                            print("Cancelled the dialog.")
                        end
                    }
                }
            })
        end
    })
    
    Tabs.Craft:AddButton({
        Title = "Recipe Book",
        Description = "",
        Callback = function()
            Window:Dialog({
                Title = "Recipe Book",
                Content = "",
                Buttons = {
                    {
                        Title = "Confirm",
                        Callback = function()
                            loadstring(game:HttpGet("https://pastebin.com/raw/rtGdSc1T"))()
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                            print("Cancelled the dialog.")
                        end
                    }
                }
            })
        end
    })
    
    local Toggle = Tabs.Craft:AddToggle("Demon Eye", { Title = "Auto Craft Demon Eye", Default = false })

Toggle:OnChanged(function()
    if Toggle.Value then
        _G.Jiji = true

while _G.Jiji do
task.wait()
game:GetService("ReplicatedStorage").RemoteEvents.Craft:InvokeServer({["1"] = "Eye",["2"] = "Fire"})
end

else
_G.Jiji = false

    end
end)

local Toggle = Tabs.Craft:AddToggle("radio", { Title = "Auto Craft Radioactive", Default = false })

Toggle:OnChanged(function()
    if Toggle.Value then
        _G.Jiji = true

while _G.Jiji do
task.wait()
game:GetService("ReplicatedStorage").RemoteEvents.Craft:InvokeServer({["1"] = "Microwave",["3"] = "Battery",["2"] = "Green Ooze"})
end
else
_G.Jiji = false

    end
end)

local Toggle = Tabs.Craft:AddToggle("singu", { Title = "Auto Craft Singularity", Default = false })

Toggle:OnChanged(function()
    if Toggle.Value then
        _G.Jiji = true

while _G.Jiji do
task.wait()
game:GetService("ReplicatedStorage").RemoteEvents.Craft:InvokeServer({["9"] = "Nothing",["1"] = "Black Hole",["5"] = "Gradient"})
end

else
_G.Jiji = false

    end
end)

local Toggle = Tabs.Craft:AddToggle("il", { Title = "Auto Craft Lizard creature", Default = false })

Toggle:OnChanged(function()
    if Toggle.Value then
        _G.Jiji = true

while _G.Jiji do
task.wait()
game:GetService("ReplicatedStorage").RemoteEvents.Craft:InvokeServer({["3"] = "UFO",["6"] = "Illuminati"})
end
else
_G.Jiji = false

    end
end)

local Toggle = Tabs.Craft:AddToggle("speaker", { Title = "Auto Craft Speakerman", Default = false })

Toggle:OnChanged(function()
    if Toggle.Value then
        _G.Jiji = true

while _G.Jiji do
task.wait()
game:GetService("ReplicatedStorage").RemoteEvents.Craft:InvokeServer({["9"] = "Backrooms",["6"] = "Rusted Boombox"})
end

else
_G.Jiji = false

    end
end)

local Toggle = Tabs.Craft:AddToggle("Plungr", { Title = "Auto Craft Plunger Bow", Default = false })

Toggle:OnChanged(function()
    if Toggle.Value then
        _G.Jiji = true

while _G.Jiji do
task.wait()
game:GetService("ReplicatedStorage").RemoteEvents.Craft:InvokeServer({["5"] = "Plunger",["3"] = "Knife",["6"] = "Palm Tree"})
end

else
_G.Jiji = false

    end
end)

local Toggle = Tabs.Craft:AddToggle("uuh", { Title = "Auto Craft All Seing Eye", Default = false })

Toggle:OnChanged(function()
    if Toggle.Value then
        _G.Jiji = true

while _G.Jiji do
task.wait()
game:GetService("ReplicatedStorage").RemoteEvents.Craft:InvokeServer({["1"] = "Demon Eye",["5"] = "Eie",["7"] = "Eyye",["3"] = "Angel Eye"})
end

else
_G.Jiji = false

    end
end)

local Toggle = Tabs.Craft:AddToggle("uhi", { Title = "Auto Craft Horo Horo", Default = false })

Toggle:OnChanged(function()
    if Toggle.Value then
        _G.Jiji = true

while _G.Jiji do
task.wait()
game:GetService("ReplicatedStorage").RemoteEvents.Craft:InvokeServer({["5"] = "The All Seeing Eye",["3"] = "Crown Pink",["7"] = "Black Hole"})
end

else
_G.Jiji = false

    end
end)

local Toggle = Tabs.Craft:AddToggle("Huh", { Title = "Auto Craft Cheese Pizza", Default = false })

Toggle:OnChanged(function()
    if Toggle.Value then
        _G.Jiji = true

while _G.Jiji do
task.wait()
game:GetService("ReplicatedStorage").RemoteEvents.Craft:InvokeServer({["1"] = "Flour",["8"] = "Dough",["5"] = "Gold Bar",["4"] = "Water Bottle",["9"] = "Tomato"})
end

else
_G.Jiji = false

    end
end)

local Toggle = Tabs.Craft:AddToggle("hhs", { Title = "Auto Craft Zombie Pizza", Default = false })

Toggle:OnChanged(function()
    if Toggle.Value then
        _G.Jiji = true

while _G.Jiji do
task.wait()
game:GetService("ReplicatedStorage").RemoteEvents.Craft:InvokeServer({["9"] = "Radioactive Waste",["8"] = "Singularity",["3"] = "Cheese Pizza",["6"] = "Baby Zombie"})
end

else
_G.Jiji = false

    end
end)

Tabs.Others:AddButton({
        Title = "Fly Gui",
        Description = "",
        Callback = function()
            Window:Dialog({
                Title = "Fly Gui",
                Content = "",
                Buttons = {
                    {
                        Title = "Enable",
                        Callback = function()
                            loadstring(game:HttpGet("https://pastebin.com/raw/gvSkUGUM"))()
                        end
                    },
                    {
                        Title = "No thanks",
                        Callback = function()
                            print("Cancelled the dialog.")
                        end
                    }
                }
            })
        end
    })
    
    Tabs.Others:AddButton({
        Title = "Fe animation gui",
        Description = "",
        Callback = function()
            Window:Dialog({
                Title = "",
                Content = "",
                Buttons = {
                    {
                        Title = "Confirm",
                        Callback = function()
                            loadstring(game:HttpGet("https://raw.githubusercontent.com/broreallyplayingthisgame/whitelisted/main/RebirthChampionsX.lua"))()
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                            print("Cancelled the dialog.")
                        end
                    }
                }
            })
        end
    })
    
    Tabs.Fun:AddButton({
        Title = "Fe random troll gui",
        Description = "",
        Callback = function()
            Window:Dialog({
                Title = "Random GUI",
                Content = "",
                Buttons = {
                    {
                        Title = "Confirm",
                        Callback = function()
                            loadstring(game:HttpGet("https://scriptblox.com/raw/Brookhaven-RP-R4D-TROLL-NO-KEY-17625"))()
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                            print("Cancelled the dialog.")
                        end
                    }
                }
            })
        end
    })
    
    local a=game.CoreGui:FindFirstChild("Peroxy_Hub")if a then a:Destroy()end;local b=Instance.new("ScreenGui")local c=Instance.new("UICorner")b.Name="Peroxy_Hub"b.Parent=game.CoreGui;local d=Instance.new("ImageButton")d.Name="Peroxy_Hub"d.Parent=b;d.BackgroundColor3=Color3.fromRGB(0,0,0)d.BorderColor3=Color3.fromRGB(0,0,0)d.BorderSizePixel=0;d.Position=UDim2.new(0,0,0.2,0)d.Size=UDim2.new(0,60,0,60)d.Image="rbxassetid://17592608199"d.ImageColor3=Color3.fromRGB(153,0,253)c.CornerRadius=UDim.new(1,0)c.Parent=d;d.Draggable=true;local e=true;d.MouseButton1Click:Connect(function()e=not e;if e then Window:Minimize()else Window:Minimize()end end)