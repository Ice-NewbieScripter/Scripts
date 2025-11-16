-- // GUI TO LUA \\ --

-- // INSTANCES: 58 | SCRIPTS: 20 | MODULES: 0 \\ --

local UI = {}

-- // StarterGui.Meteor \\ --
UI["1"] = Instance.new("ScreenGui", game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"))
UI["1"]["IgnoreGuiInset"] = true
UI["1"]["ScreenInsets"] = Enum.ScreenInsets.DeviceSafeInsets
UI["1"]["Name"] = [[Meteor]]

-- // StarterGui.Meteor.Rat \\ --
UI["2"] = Instance.new("Frame", UI["1"])
UI["2"]["Visible"] = false
UI["2"]["BorderSizePixel"] = 0
UI["2"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0)
UI["2"]["AutomaticSize"] = Enum.AutomaticSize.X
UI["2"]["Size"] = UDim2.new(0, 93, 0, 304)
UI["2"]["Position"] = UDim2.new(0.2533, 0, 0.11379, 0)
UI["2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["2"]["Name"] = [[Rat]]
UI["2"]["BackgroundTransparency"] = 0.5

-- // StarterGui.Meteor.Rat.TextButton \\ --
UI["3"] = Instance.new("TextButton", UI["2"])
UI["3"]["BorderSizePixel"] = 0
UI["3"]["TextSize"] = 11
UI["3"]["TextColor3"] = Color3.fromRGB(255, 255, 255)
UI["3"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
UI["3"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
UI["3"]["Size"] = UDim2.new(0, 100, 0, 17)
UI["3"]["BackgroundTransparency"] = 1
UI["3"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["3"]["Text"] = [[Teleport Fort]]
UI["3"]["Position"] = UDim2.new(-0.0067, 0, 0.1024, 0)

-- // StarterGui.Meteor.Rat.TextButton.LocalScript \\ --
UI["4"] = Instance.new("LocalScript", UI["3"])


-- // StarterGui.Meteor.Rat.TextButton \\ --
UI["5"] = Instance.new("TextButton", UI["2"])
UI["5"]["BorderSizePixel"] = 0
UI["5"]["TextSize"] = 11
UI["5"]["TextColor3"] = Color3.fromRGB(255, 255, 255)
UI["5"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
UI["5"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
UI["5"]["Size"] = UDim2.new(0, 100, 0, 17)
UI["5"]["BackgroundTransparency"] = 1
UI["5"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["5"]["Text"] = [[Teleport Lab]]
UI["5"]["Position"] = UDim2.new(-0.0067, 0, 0.17806, 0)

-- // StarterGui.Meteor.Rat.TextButton.LocalScript \\ --
UI["6"] = Instance.new("LocalScript", UI["5"])


-- // StarterGui.Meteor.Rat.TextButton \\ --
UI["7"] = Instance.new("TextButton", UI["2"])
UI["7"]["BorderSizePixel"] = 0
UI["7"]["TextSize"] = 11
UI["7"]["TextColor3"] = Color3.fromRGB(255, 255, 255)
UI["7"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
UI["7"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
UI["7"]["Size"] = UDim2.new(0, 100, 0, 17)
UI["7"]["BackgroundTransparency"] = 1
UI["7"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["7"]["Text"] = [[Teleport Castle]]
UI["7"]["Position"] = UDim2.new(-0.0067, 0, 0.26687, 0)

-- // StarterGui.Meteor.Rat.TextButton.LocalScript \\ --
UI["8"] = Instance.new("LocalScript", UI["7"])


-- // StarterGui.Meteor.Rat.TextButton \\ --
UI["9"] = Instance.new("TextButton", UI["2"])
UI["9"]["BorderSizePixel"] = 0
UI["9"]["TextSize"] = 10
UI["9"]["TextColor3"] = Color3.fromRGB(255, 255, 255)
UI["9"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
UI["9"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
UI["9"]["Size"] = UDim2.new(0, 100, 0, 17)
UI["9"]["BackgroundTransparency"] = 1
UI["9"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["9"]["Text"] = [[Teleport Sterling]]
UI["9"]["Position"] = UDim2.new(-0.0067, 0, 0.34582, 0)

-- // StarterGui.Meteor.Rat.TextButton.LocalScript \\ --
UI["a"] = Instance.new("LocalScript", UI["9"])


-- // StarterGui.Meteor.Rat.Esp \\ --
UI["b"] = Instance.new("TextButton", UI["2"])
UI["b"]["BorderSizePixel"] = 0
UI["b"]["TextSize"] = 11
UI["b"]["TextColor3"] = Color3.fromRGB(255, 255, 255)
UI["b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
UI["b"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
UI["b"]["Size"] = UDim2.new(0, 100, 0, 17)
UI["b"]["BackgroundTransparency"] = 1
UI["b"]["Name"] = [[Esp]]
UI["b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["b"]["Text"] = [[Esp GoldenEgg]]
UI["b"]["Position"] = UDim2.new(-0.0067, 0, 0.42477, 0)

-- // StarterGui.Meteor.Rat.Esp.LocalScript \\ --
UI["c"] = Instance.new("LocalScript", UI["b"])


-- // StarterGui.Meteor.Rat.TextButton \\ --
UI["d"] = Instance.new("TextButton", UI["2"])
UI["d"]["BorderSizePixel"] = 0
UI["d"]["TextSize"] = 11
UI["d"]["TextColor3"] = Color3.fromRGB(255, 255, 255)
UI["d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
UI["d"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
UI["d"]["Size"] = UDim2.new(0, 100, 0, 17)
UI["d"]["BackgroundTransparency"] = 1
UI["d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["d"]["Text"] = [[Infinite yield]]
UI["d"]["Position"] = UDim2.new(-0.0067, 0, 0.50043, 0)

-- // StarterGui.Meteor.Rat.TextButton.LocalScript \\ --
UI["e"] = Instance.new("LocalScript", UI["d"])


-- // StarterGui.Meteor.Rat.TextButton \\ --
UI["f"] = Instance.new("TextButton", UI["2"])
UI["f"]["BorderSizePixel"] = 0
UI["f"]["TextSize"] = 11
UI["f"]["TextColor3"] = Color3.fromRGB(255, 255, 255)
UI["f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
UI["f"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
UI["f"]["Size"] = UDim2.new(0, 100, 0, 17)
UI["f"]["BackgroundTransparency"] = 1
UI["f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["f"]["Text"] = [[Auto Ammo]]
UI["f"]["Position"] = UDim2.new(-0.0067, 0, 0.58924, 0)

-- // StarterGui.Meteor.Rat.TextButton.LocalScript \\ --
UI["10"] = Instance.new("LocalScript", UI["f"])


-- // StarterGui.Meteor.Rat.TextButton \\ --
UI["11"] = Instance.new("TextButton", UI["2"])
UI["11"]["BorderSizePixel"] = 0
UI["11"]["TextSize"] = 10
UI["11"]["TextColor3"] = Color3.fromRGB(255, 255, 255)
UI["11"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
UI["11"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
UI["11"]["Size"] = UDim2.new(0, 100, 0, 17)
UI["11"]["BackgroundTransparency"] = 1
UI["11"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["11"]["Text"] = [[Teleport Train]]
UI["11"]["Position"] = UDim2.new(-0.0067, 0, 0.66819, 0)

-- // StarterGui.Meteor.Rat.TextButton.LocalScript \\ --
UI["12"] = Instance.new("LocalScript", UI["11"])


-- // StarterGui.Meteor.Rat.TextButton \\ --
UI["13"] = Instance.new("TextButton", UI["2"])
UI["13"]["BorderSizePixel"] = 0
UI["13"]["TextSize"] = 10
UI["13"]["TextColor3"] = Color3.fromRGB(255, 255, 255)
UI["13"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
UI["13"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
UI["13"]["Size"] = UDim2.new(0, 100, 0, 17)
UI["13"]["BackgroundTransparency"] = 1
UI["13"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["13"]["Text"] = [[Teleport Barn]]
UI["13"]["Position"] = UDim2.new(-0.0067, 0, 0.74056, 0)

-- // StarterGui.Meteor.Rat.TextButton.LocalScript \\ --
UI["14"] = Instance.new("LocalScript", UI["13"])


-- // StarterGui.Meteor.Rat.TextButton \\ --
UI["15"] = Instance.new("TextButton", UI["2"])
UI["15"]["BorderSizePixel"] = 0
UI["15"]["TextSize"] = 10
UI["15"]["TextColor3"] = Color3.fromRGB(255, 255, 255)
UI["15"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
UI["15"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
UI["15"]["Size"] = UDim2.new(0, 100, 0, 17)
UI["15"]["BackgroundTransparency"] = 1
UI["15"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["15"]["Text"] = [[Teleport Bank]]
UI["15"]["Position"] = UDim2.new(-0.0067, 0, 0.81621, 0)

-- // StarterGui.Meteor.Rat.TextButton.LocalScript \\ --
UI["16"] = Instance.new("LocalScript", UI["15"])


-- // StarterGui.Meteor.Rat.TextButton \\ --
UI["17"] = Instance.new("TextButton", UI["2"])
UI["17"]["BorderSizePixel"] = 0
UI["17"]["TextSize"] = 10
UI["17"]["TextColor3"] = Color3.fromRGB(255, 255, 255)
UI["17"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
UI["17"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
UI["17"]["Size"] = UDim2.new(0, 100, 0, 17)
UI["17"]["BackgroundTransparency"] = 1
UI["17"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["17"]["Text"] = [[Auto HorseClass]]
UI["17"]["Position"] = UDim2.new(-0.0067, 0, 0.89516, 0)

-- // StarterGui.Meteor.Rat.TextButton.LocalScript \\ --
UI["18"] = Instance.new("LocalScript", UI["17"])


-- // StarterGui.Meteor.Rat.Frame \\ --
UI["19"] = Instance.new("Frame", UI["2"])
UI["19"]["BorderSizePixel"] = 0
UI["19"]["BackgroundColor3"] = Color3.fromRGB(228, 67, 255)
UI["19"]["Size"] = UDim2.new(0, 100, 0, 19)
UI["19"]["Position"] = UDim2.new(-0, 0, -0.00329, 0)
UI["19"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)

-- // StarterGui.Meteor.Rat.TextLabel \\ --
UI["1a"] = Instance.new("TextLabel", UI["2"])
UI["1a"]["BorderSizePixel"] = 0
UI["1a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
UI["1a"]["TextSize"] = 12
UI["1a"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
UI["1a"]["TextColor3"] = Color3.fromRGB(255, 255, 255)
UI["1a"]["BackgroundTransparency"] = 1
UI["1a"]["Size"] = UDim2.new(0, 78, 0, 19)
UI["1a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["1a"]["Text"] = [[Main]]
UI["1a"]["Position"] = UDim2.new(0.10875, 0, 0, 0)

-- // StarterGui.Meteor.Rat.LocalScript \\ --
UI["1b"] = Instance.new("LocalScript", UI["2"])


-- // StarterGui.Meteor.Rat2 \\ --
UI["1c"] = Instance.new("Frame", UI["1"])
UI["1c"]["Visible"] = false
UI["1c"]["BorderSizePixel"] = 0
UI["1c"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0)
UI["1c"]["Size"] = UDim2.new(0, 100, 0, 181)
UI["1c"]["Position"] = UDim2.new(0.33648, 0, 0.11379, 0)
UI["1c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["1c"]["Name"] = [[Rat2]]
UI["1c"]["BackgroundTransparency"] = 0.5

-- // StarterGui.Meteor.Rat2.Frame \\ --
UI["1d"] = Instance.new("Frame", UI["1c"])
UI["1d"]["BorderSizePixel"] = 0
UI["1d"]["BackgroundColor3"] = Color3.fromRGB(228, 67, 255)
UI["1d"]["Size"] = UDim2.new(0, 100, 0, 20)
UI["1d"]["Position"] = UDim2.new(-0.001, 0, -0.00137, 0)
UI["1d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)

-- // StarterGui.Meteor.Rat2.TextLabel \\ --
UI["1e"] = Instance.new("TextLabel", UI["1c"])
UI["1e"]["BorderSizePixel"] = 0
UI["1e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
UI["1e"]["TextSize"] = 12
UI["1e"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
UI["1e"]["TextColor3"] = Color3.fromRGB(255, 255, 255)
UI["1e"]["BackgroundTransparency"] = 1
UI["1e"]["Size"] = UDim2.new(0, 78, 0, 19)
UI["1e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["1e"]["Text"] = [[Others]]
UI["1e"]["Position"] = UDim2.new(0.10875, 0, 0, 0)

-- // StarterGui.Meteor.Rat2.TextButton \\ --
UI["1f"] = Instance.new("TextButton", UI["1c"])
UI["1f"]["BorderSizePixel"] = 0
UI["1f"]["TextSize"] = 11
UI["1f"]["TextColor3"] = Color3.fromRGB(255, 255, 255)
UI["1f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
UI["1f"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
UI["1f"]["Size"] = UDim2.new(0, 100, 0, 17)
UI["1f"]["BackgroundTransparency"] = 1
UI["1f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["1f"]["Text"] = [[Esp Bond]]
UI["1f"]["Position"] = UDim2.new(-0.0067, 0, 0.1687, 0)

-- // StarterGui.Meteor.Rat2.TextButton.LocalScript \\ --
UI["20"] = Instance.new("LocalScript", UI["1f"])


-- // StarterGui.Meteor.Rat2.TextButton \\ --
UI["21"] = Instance.new("TextButton", UI["1c"])
UI["21"]["BorderSizePixel"] = 0
UI["21"]["TextSize"] = 11
UI["21"]["TextColor3"] = Color3.fromRGB(255, 255, 255)
UI["21"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
UI["21"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
UI["21"]["Size"] = UDim2.new(0, 100, 0, 17)
UI["21"]["BackgroundTransparency"] = 1
UI["21"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["21"]["Text"] = [[Loot]]
UI["21"]["Position"] = UDim2.new(-0.0067, 0, 0.29577, 0)

-- // StarterGui.Meteor.Rat2.TextButton.LocalScript \\ --
UI["22"] = Instance.new("LocalScript", UI["21"])


-- // StarterGui.Meteor.Rat2.TextButton \\ --
UI["23"] = Instance.new("TextButton", UI["1c"])
UI["23"]["BorderSizePixel"] = 0
UI["23"]["TextSize"] = 11
UI["23"]["TextColor3"] = Color3.fromRGB(255, 255, 255)
UI["23"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
UI["23"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
UI["23"]["Size"] = UDim2.new(0, 100, 0, 17)
UI["23"]["BackgroundTransparency"] = 1
UI["23"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["23"]["Text"] = [[Delete Tesla]]
UI["23"]["Position"] = UDim2.new(-0.0067, 0, 0.44494, 0)

-- // StarterGui.Meteor.Rat2.TextButton.LocalScript \\ --
UI["24"] = Instance.new("LocalScript", UI["23"])


-- // StarterGui.Meteor.Rat2.TextButton \\ --
UI["25"] = Instance.new("TextButton", UI["1c"])
UI["25"]["BorderSizePixel"] = 0
UI["25"]["TextSize"] = 11
UI["25"]["TextColor3"] = Color3.fromRGB(255, 255, 255)
UI["25"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
UI["25"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
UI["25"]["Size"] = UDim2.new(0, 100, 0, 17)
UI["25"]["BackgroundTransparency"] = 1
UI["25"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["25"]["Text"] = [[Anti Die]]
UI["25"]["Position"] = UDim2.new(-0.0067, 0, 0.57754, 0)

-- // StarterGui.Meteor.Rat2.TextButton.LocalScript \\ --
UI["26"] = Instance.new("LocalScript", UI["25"])


-- // StarterGui.Meteor.Rat2.TextButton \\ --
UI["27"] = Instance.new("TextButton", UI["1c"])
UI["27"]["BorderSizePixel"] = 0
UI["27"]["TextSize"] = 11
UI["27"]["TextColor3"] = Color3.fromRGB(255, 255, 255)
UI["27"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
UI["27"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
UI["27"]["Size"] = UDim2.new(0, 100, 0, 17)
UI["27"]["BackgroundTransparency"] = 1
UI["27"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["27"]["Text"] = [[Teleport End]]
UI["27"]["Position"] = UDim2.new(-0.0067, 0, 0.71013, 0)

-- // StarterGui.Meteor.Rat2.TextButton.LocalScript \\ --
UI["28"] = Instance.new("LocalScript", UI["27"])


-- // StarterGui.Meteor.Rat2.TextButton \\ --
UI["29"] = Instance.new("TextButton", UI["1c"])
UI["29"]["BorderSizePixel"] = 0
UI["29"]["TextSize"] = 11
UI["29"]["TextColor3"] = Color3.fromRGB(255, 255, 255)
UI["29"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
UI["29"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
UI["29"]["Size"] = UDim2.new(0, 100, 0, 17)
UI["29"]["BackgroundTransparency"] = 1
UI["29"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["29"]["Text"] = [[Pacifist]]
UI["29"]["Position"] = UDim2.new(-0.0067, 0, 0.83721, 0)

-- // StarterGui.Meteor.Rat2.TextButton.LocalScript \\ --
UI["2a"] = Instance.new("LocalScript", UI["29"])


-- // StarterGui.Meteor.Rat2.LocalScript \\ --
UI["2b"] = Instance.new("LocalScript", UI["1c"])


-- // StarterGui.Meteor.Frame \\ --
UI["2c"] = Instance.new("Frame", UI["1"])
UI["2c"]["BorderSizePixel"] = 0
UI["2c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
UI["2c"]["Size"] = UDim2.new(0, 270, 0, 100)
UI["2c"]["Position"] = UDim2.new(0.01874, 0, 0.80145, 0)
UI["2c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["2c"]["BackgroundTransparency"] = 1

-- // StarterGui.Meteor.Frame.ImageLabel \\ --
UI["2d"] = Instance.new("ImageLabel", UI["2c"])
UI["2d"]["BorderSizePixel"] = 0
UI["2d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
UI["2d"]["ImageTransparency"] = 0.9
UI["2d"]["ImageColor3"] = Color3.fromRGB(137, 68, 255)
UI["2d"]["Image"] = [[http://www.roblox.com/asset/?id=102607941232395]]
UI["2d"]["Size"] = UDim2.new(0, 48, 0, 53)
UI["2d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["2d"]["BackgroundTransparency"] = 1
UI["2d"]["Position"] = UDim2.new(0, 0, 0.47, 0)

-- // StarterGui.Meteor.Frame.ImageLabel \\ --
UI["2e"] = Instance.new("ImageLabel", UI["2c"])
UI["2e"]["BorderSizePixel"] = 0
UI["2e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
UI["2e"]["ImageTransparency"] = 0.9
UI["2e"]["ImageColor3"] = Color3.fromRGB(0, 0, 0)
UI["2e"]["Image"] = [[http://www.roblox.com/asset/?id=102607941232395]]
UI["2e"]["Size"] = UDim2.new(0, 48, 0, 53)
UI["2e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["2e"]["BackgroundTransparency"] = 1
UI["2e"]["Position"] = UDim2.new(0, 0, 0.47, 0)

-- // StarterGui.Meteor.Frame.ImageLabel \\ --
UI["2f"] = Instance.new("ImageLabel", UI["2c"])
UI["2f"]["BorderSizePixel"] = 0
UI["2f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
UI["2f"]["ImageTransparency"] = 0.7
UI["2f"]["ImageColor3"] = Color3.fromRGB(255, 168, 241)
UI["2f"]["Image"] = [[http://www.roblox.com/asset/?id=102607941232395]]
UI["2f"]["Size"] = UDim2.new(0, 48, 0, 53)
UI["2f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["2f"]["BackgroundTransparency"] = 1
UI["2f"]["Position"] = UDim2.new(0, 0, 0.47, 0)

-- // StarterGui.Meteor.Frame \\ --
UI["30"] = Instance.new("Frame", UI["1"])
UI["30"]["BorderSizePixel"] = 0
UI["30"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
UI["30"]["Size"] = UDim2.new(0, 169, 0, 283)
UI["30"]["Position"] = UDim2.new(0.81085, 0, 0.22922, 0)
UI["30"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["30"]["BackgroundTransparency"] = 1

-- // StarterGui.Meteor.Frame.TextLabel \\ --
UI["31"] = Instance.new("TextLabel", UI["30"])
UI["31"]["TextWrapped"] = true
UI["31"]["BorderSizePixel"] = 0
UI["31"]["TextXAlignment"] = Enum.TextXAlignment.Right
UI["31"]["TextTransparency"] = 0.6
UI["31"]["TextScaled"] = true
UI["31"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
UI["31"]["TextSize"] = 14
UI["31"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal)
UI["31"]["TextColor3"] = Color3.fromRGB(182, 55, 186)
UI["31"]["BackgroundTransparency"] = 1
UI["31"]["Size"] = UDim2.new(0, 200, 0, 50)
UI["31"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["31"]["Text"] = [[Meteor]]
UI["31"]["Position"] = UDim2.new(-0.18343, 0, 0.05654, 0)

-- // StarterGui.Meteor.Frame.TextLabel.UIGradient \\ --
UI["32"] = Instance.new("UIGradient", UI["31"])
UI["32"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 255, 255)),ColorSequenceKeypoint.new(0.466, Color3.fromRGB(78, 21, 73)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(255, 255, 255))}

-- // StarterGui.Meteor.Frame.TextLabel \\ --
UI["33"] = Instance.new("TextLabel", UI["30"])
UI["33"]["TextWrapped"] = true
UI["33"]["BorderSizePixel"] = 0
UI["33"]["TextXAlignment"] = Enum.TextXAlignment.Right
UI["33"]["TextTransparency"] = 0.6
UI["33"]["TextScaled"] = true
UI["33"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
UI["33"]["TextSize"] = 14
UI["33"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
UI["33"]["TextColor3"] = Color3.fromRGB(182, 55, 186)
UI["33"]["BackgroundTransparency"] = 1
UI["33"]["Size"] = UDim2.new(0, 200, 0, 17)
UI["33"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["33"]["Text"] = [[Press M To Toggle]]
UI["33"]["Position"] = UDim2.new(-0.18343, 0, 0.01106, 0)

-- // StarterGui.Meteor.Frame.TextLabel.UIGradient \\ --
UI["34"] = Instance.new("UIGradient", UI["33"])
UI["34"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 255, 255)),ColorSequenceKeypoint.new(0.466, Color3.fromRGB(78, 21, 73)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(255, 255, 255))}

-- // StarterGui.Meteor.Frame.TextLabel \\ --
UI["35"] = Instance.new("TextLabel", UI["30"])
UI["35"]["TextWrapped"] = true
UI["35"]["BorderSizePixel"] = 0
UI["35"]["TextXAlignment"] = Enum.TextXAlignment.Right
UI["35"]["TextTransparency"] = 0.6
UI["35"]["TextScaled"] = true
UI["35"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
UI["35"]["TextSize"] = 14
UI["35"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
UI["35"]["TextColor3"] = Color3.fromRGB(182, 55, 186)
UI["35"]["BackgroundTransparency"] = 1
UI["35"]["Size"] = UDim2.new(0, 200, 0, 18)
UI["35"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["35"]["Text"] = [[Bypass Anti-Cheat]]
UI["35"]["Position"] = UDim2.new(-0.18343, 0, 0.23367, 0)

-- // StarterGui.Meteor.Frame.TextLabel.UIGradient \\ --
UI["36"] = Instance.new("UIGradient", UI["35"])
UI["36"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 255, 255)),ColorSequenceKeypoint.new(0.466, Color3.fromRGB(78, 21, 73)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(255, 255, 255))}

-- // StarterGui.Meteor.LocalScript \\ --
UI["37"] = Instance.new("LocalScript", UI["1"])


-- // StarterGui.Meteor.TextLabel \\ --
UI["38"] = Instance.new("TextLabel", UI["1"])
UI["38"]["TextWrapped"] = true
UI["38"]["BorderSizePixel"] = 0
UI["38"]["TextTransparency"] = 0.5
UI["38"]["TextScaled"] = true
UI["38"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
UI["38"]["TextSize"] = 14
UI["38"]["FontFace"] = Font.new([[rbxasset://fonts/families/Michroma.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal)
UI["38"]["TextColor3"] = Color3.fromRGB(39, 39, 39)
UI["38"]["BackgroundTransparency"] = 1
UI["38"]["Size"] = UDim2.new(0, 967, 0, 50)
UI["38"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["38"]["Text"] = [[This script is Unnofficial this script is made by Tera Huge Credits To: Ringta,Tora for making these scripts]]
UI["38"]["Position"] = UDim2.new(0.16787, 0, 0.91689, 0)

-- // StarterGui.Meteor.TextLabel.UIAspectRatioConstraint \\ --
UI["39"] = Instance.new("UIAspectRatioConstraint", UI["38"])
UI["39"]["AspectRatio"] = 19.34

-- // StarterGui.Meteor.TextLabel.UITextSizeConstraint \\ --
UI["3a"] = Instance.new("UITextSizeConstraint", UI["38"])
UI["3a"]["MaxTextSize"] = 14

-- // StarterGui.Meteor.Rat.TextButton.LocalScript \\ --
local function SCRIPT_4()
local script = UI["4"]
	-- This script should be placed in a LocalScript under a TextButton.
	
	local button = script.Parent  -- Reference to the parent TextButton
	
	-- Function to execute when the button is clicked
	local function onButtonClicked()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/ringtaa/Tpfort.github.io/refs/heads/main/Tpfort.lua"))() -- Change this message as needed
	end
	
	-- Connect the function to the MouseButton1Down event
	button.MouseButton1Down:Connect(onButtonClicked)
end
task.spawn(SCRIPT_4)
-- // StarterGui.Meteor.Rat.TextButton.LocalScript \\ --
local function SCRIPT_6()
local script = UI["6"]
	-- This script should be placed in a LocalScript under a TextButton.
	
	local button = script.Parent  -- Reference to the parent TextButton
	
	-- Function to execute when the button is clicked
	local function onButtonClicked()
		loadstring(game:HttpGet('https://raw.githubusercontent.com/ringtaa/tptotesla.github.io/refs/heads/main/Tptotesla.lua'))() -- Change this message as needed
	end
	
	-- Connect the function to the MouseButton1Down event
	button.MouseButton1Down:Connect(onButtonClicked)
end
task.spawn(SCRIPT_6)
-- // StarterGui.Meteor.Rat.TextButton.LocalScript \\ --
local function SCRIPT_8()
local script = UI["8"]
	-- This script should be placed in a LocalScript under a TextButton.
	
	local button = script.Parent  -- Reference to the parent TextButton
	
	-- Function to execute when the button is clicked
	local function onButtonClicked()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/ringtaa/castletpfast.github.io/refs/heads/main/FASTCASTLE.lua"))() -- Change this message as needed
	end
	
	-- Connect the function to the MouseButton1Down event
	button.MouseButton1Down:Connect(onButtonClicked)
end
task.spawn(SCRIPT_8)
-- // StarterGui.Meteor.Rat.TextButton.LocalScript \\ --
local function SCRIPT_a()
local script = UI["a"]
	-- This script should be placed in a LocalScript under a TextButton.
	
	local button = script.Parent  -- Reference to the parent TextButton
	
	-- Function to execute when the button is clicked
	local function onButtonClicked()
		loadstring(game:HttpGet('https://raw.githubusercontent.com/ringtaa/sterlingnotifcation.github.io/refs/heads/main/Sterling.lua'))() -- Change this message as needed
	end
	
	-- Connect the function to the MouseButton1Down event
	button.MouseButton1Down:Connect(onButtonClicked)
end
task.spawn(SCRIPT_a)
-- // StarterGui.Meteor.Rat.Esp.LocalScript \\ --
local function SCRIPT_c()
local script = UI["c"]
	-- Reference to the TextButton (Ensure this path is set according to your GUI structure)
	local player = game.Players.LocalPlayer
	local gui = player:WaitForChild("PlayerGui"):WaitForChild("Meteor"):WaitForChild("Rat") -- Replace "YourGuiName" with the actual name of your GUI
	local textButton = gui:WaitForChild("Esp") -- Replace "YourTextButtonName" with the actual name of your TextButton
	
	-- Function to add Highlight to a GoldenEgg model
	local function addHighlightToGoldenEgg(egg)
		if egg:IsA("Model") and egg.Name == "GoldenEgg" then
			-- Check if a Highlight already exists to avoid duplicates
			if not egg:FindFirstChildOfClass("Highlight") then
				-- Create a new Highlight
				local highlight = Instance.new("Highlight")
				highlight.Adornee = egg -- Set the model to be highlighted
				highlight.FillColor = Color3.new(1, 1, 0) -- Yellow fill color
				highlight.OutlineColor = Color3.new(0, 0, 0) -- Black outline color
				highlight.Parent = egg -- Parent the Highlight to the GoldenEgg model
			end
		end
	end
	
	-- Function to highlight all GoldenEgg models in RuntimeItems
	local function highlightAllGoldenEggs()
		local runtimeItemsFolder = game.Workspace:FindFirstChild("RuntimeItems") -- Ensure RuntimeItems is found
	
		if runtimeItemsFolder then
			-- Loop through all children in RuntimeItems
			for _, item in ipairs(runtimeItemsFolder:GetChildren()) do
				addHighlightToGoldenEgg(item) -- Apply highlight to each GoldenEgg
			end
		else
			warn("RuntimeItems folder not found in Workspace!")
		end
	end
	
	-- Connect the MouseButton1Down event to the highlight function
	textButton.MouseButton1Down:Connect(highlightAllGoldenEggs)
end
task.spawn(SCRIPT_c)
-- // StarterGui.Meteor.Rat.TextButton.LocalScript \\ --
local function SCRIPT_e()
local script = UI["e"]
	-- This script should be placed in a LocalScript under a TextButton.
	
	local button = script.Parent  -- Reference to the parent TextButton
	
	-- Function to execute when the button is clicked
	local function onButtonClicked()
		loadstring(game:HttpGet(('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'),true))() -- Change this message as needed
	end
	
	-- Connect the function to the MouseButton1Down event
	button.MouseButton1Down:Connect(onButtonClicked)
end
task.spawn(SCRIPT_e)
-- // StarterGui.Meteor.Rat.TextButton.LocalScript \\ --
local function SCRIPT_10()
local script = UI["10"]
	-- This script should be placed in a LocalScript under a TextButton.
	
	local button = script.Parent  -- Reference to the parent TextButton
	
	-- Function to execute when the button is clicked
	local function onButtonClicked()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/gumanba/Scripts/main/DeadRails"))() -- Change this message as needed
	end
	
	-- Connect the function to the MouseButton1Down event
	button.MouseButton1Down:Connect(onButtonClicked)
end
task.spawn(SCRIPT_10)
-- // StarterGui.Meteor.Rat.TextButton.LocalScript \\ --
local function SCRIPT_12()
local script = UI["12"]
	-- This script should be placed in a LocalScript under a TextButton.
	
	local button = script.Parent  -- Reference to the parent TextButton
	
	-- Function to execute when the button is clicked
	local function onButtonClicked()
		loadstring(game:HttpGet('https://raw.githubusercontent.com/ringtaa/train.github.io/refs/heads/main/train.lua'))()-- Change this message as needed
	end
	
	-- Connect the function to the MouseButton1Down event
	button.MouseButton1Down:Connect(onButtonClicked)
end
task.spawn(SCRIPT_12)
-- // StarterGui.Meteor.Rat.TextButton.LocalScript \\ --
local function SCRIPT_14()
local script = UI["14"]
	-- This script should be placed in a LocalScript under a TextButton.
	
	local button = script.Parent  -- Reference to the parent TextButton
	
	-- Function to execute when the button is clicked
	local function onButtonClicked()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/ringtaa/tpfarm.github.io/refs/heads/main/tptofarm.lua"))()-- Change this message as needed
	end
	
	-- Connect the function to the MouseButton1Down event
	button.MouseButton1Down:Connect(onButtonClicked)
end
task.spawn(SCRIPT_14)
-- // StarterGui.Meteor.Rat.TextButton.LocalScript \\ --
local function SCRIPT_16()
local script = UI["16"]
	-- This script should be placed in a LocalScript under a TextButton.
	
	local button = script.Parent  -- Reference to the parent TextButton
	
	-- Function to execute when the button is clicked
	local function onButtonClicked()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/ringtaa/Tptobank.github.io/refs/heads/main/Banktp.lua"))()-- Change this message as needed
	end
	
	-- Connect the function to the MouseButton1Down event
	button.MouseButton1Down:Connect(onButtonClicked)
end
task.spawn(SCRIPT_16)
-- // StarterGui.Meteor.Rat.TextButton.LocalScript \\ --
local function SCRIPT_18()
local script = UI["18"]
	-- This script should be placed in a LocalScript under a TextButton.
	
	local button = script.Parent  -- Reference to the parent TextButton
	
	-- Function to execute when the button is clicked
	local function onButtonClicked()
		local args = {
			[1] = "Horse"
		}
	
		game:GetService("ReplicatedStorage"):WaitForChild("Shared"):WaitForChild("RemotePromise"):WaitForChild("Remotes"):WaitForChild("C_BuyClass"):FireServer(unpack(args))-- Change this message as needed
	end
	
	-- Connect the function to the MouseButton1Down event
	button.MouseButton1Down:Connect(onButtonClicked)
end
task.spawn(SCRIPT_18)
-- // StarterGui.Meteor.Rat.LocalScript \\ --
local function SCRIPT_1b()
local script = UI["1b"]
	local drag = script.Parent
	
	drag.Active = true
	drag.Draggable = true
end
task.spawn(SCRIPT_1b)
-- // StarterGui.Meteor.Rat2.TextButton.LocalScript \\ --
local function SCRIPT_20()
local script = UI["20"]
	-- This script should be placed in a LocalScript under a TextButton.
	
	local button = script.Parent  -- Reference to the parent TextButton
	
	-- Function to execute when the button is clicked
	local function onButtonClicked()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/gumanba/Scripts/main/DeadRails"))() -- Change this message as needed
	end
	
	-- Connect the function to the MouseButton1Down event
	button.MouseButton1Down:Connect(onButtonClicked)
end
task.spawn(SCRIPT_20)
-- // StarterGui.Meteor.Rat2.TextButton.LocalScript \\ --
local function SCRIPT_22()
local script = UI["22"]
	-- This script should be placed in a LocalScript under a TextButton.
	
	local button = script.Parent  -- Reference to the parent TextButton
	
	-- Function to execute when the button is clicked
	local function onButtonClicked()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/gumanba/Scripts/main/DeadRails"))() -- Change this message as needed
	end
	
	-- Connect the function to the MouseButton1Down event
	button.MouseButton1Down:Connect(onButtonClicked)
end
task.spawn(SCRIPT_22)
-- // StarterGui.Meteor.Rat2.TextButton.LocalScript \\ --
local function SCRIPT_24()
local script = UI["24"]
	-- This script should be placed in a LocalScript under a TextButton.
	
	local button = script.Parent  -- Reference to the parent TextButton
	local tesla = game.ReplicatedStorage.Animals.Tesla
	
	-- Function to execute when the button is clicked
	local function onButtonClicked() 
		tesla:destroy()
	end
	
	-- Connect the function to the MouseButton1Down event
	button.MouseButton1Down:Connect(onButtonClicked)
end
task.spawn(SCRIPT_24)
-- // StarterGui.Meteor.Rat2.TextButton.LocalScript \\ --
local function SCRIPT_26()
local script = UI["26"]
	-- This script should be placed in a LocalScript under a TextButton.
	
	local button = script.Parent  -- Reference to the parent TextButton
	local tesla = game.ReplicatedStorage.Animals.Tesla
	
	-- Function to execute when the button is clicked
	local function onButtonClicked() 
		print("JUST DONT DIE OR NOCLIP WHILE TELEPORTING")
	end
	
	-- Connect the function to the MouseButton1Down event
	button.MouseButton1Down:Connect(onButtonClicked)
end
task.spawn(SCRIPT_26)
-- // StarterGui.Meteor.Rat2.TextButton.LocalScript \\ --
local function SCRIPT_28()
local script = UI["28"]
	-- This script should be placed in a LocalScript under a TextButton.
	
	local button = script.Parent  -- Reference to the parent TextButton
	local tesla = game.ReplicatedStorage.Animals.Tesla
	
	-- Function to execute when the button is clicked
	local function onButtonClicked() 
		loadstring(game:HttpGet("https://raw.githubusercontent.com/ringtaa/newpacifisct/refs/heads/main/newpacifisct.lua"))()
	end
	
	-- Connect the function to the MouseButton1Down event
	button.MouseButton1Down:Connect(onButtonClicked)
end
task.spawn(SCRIPT_28)
-- // StarterGui.Meteor.Rat2.TextButton.LocalScript \\ --
local function SCRIPT_2a()
local script = UI["2a"]
	-- This script should be placed in a LocalScript under a TextButton.
	
	local button = script.Parent  -- Reference to the parent TextButton
	local tesla = game.ReplicatedStorage.Animals.Tesla
	
	-- Function to execute when the button is clicked
	local function onButtonClicked() 
		loadstring(game:HttpGet("https://raw.githubusercontent.com/ringtaa/newpacifisct/refs/heads/main/newpacifisct.lua"))()
	end
	
	-- Connect the function to the MouseButton1Down event
	button.MouseButton1Down:Connect(onButtonClicked)
end
task.spawn(SCRIPT_2a)
-- // StarterGui.Meteor.Rat2.LocalScript \\ --
local function SCRIPT_2b()
local script = UI["2b"]
	local drag = script.Parent
	
	drag.Active = true
	drag.Draggable = true
end
task.spawn(SCRIPT_2b)
-- // StarterGui.Meteor.LocalScript \\ --
local function SCRIPT_37()
local script = UI["37"]
	local Players = game:GetService("Players")
	local UserInputService = game:GetService("UserInputService")
	local Lighting = game:GetService("Lighting")
	
	-- Reference to the player and their PlayerGui
	local player = Players.LocalPlayer
	local playerGui = player:WaitForChild("PlayerGui")
	
	-- Reference to the ScreenGui and the Rat elements
	local screenGui = playerGui:WaitForChild("Meteor")  -- Replace with your ScreenGui name
	local rat = screenGui:WaitForChild("Rat")
	local rat2 = screenGui:WaitForChild("Rat2")
	
	-- Create and configure the BlurEffect
	local blurEffect = Instance.new("BlurEffect")
	blurEffect.Size = 0
	blurEffect.Parent = Lighting
	
	-- Variable to track the visibility state
	local areRatsVisible = false
	
	-- Function to toggle visibility of the rats and the blur effect
	local function toggleRats()
		areRatsVisible = not areRatsVisible
	
		if areRatsVisible then
			rat.Visible = true
			rat2.Visible = true
			blurEffect.Size = 24  -- You can change this to your desired blur size
		else
			rat.Visible = false
			rat2.Visible = false
			blurEffect.Size = 0
		end
	end
	
	-- Bind the toggleRats function to the M key press
	UserInputService.InputBegan:Connect(function(input, gameProcessed)
		if input.KeyCode == Enum.KeyCode.M and not gameProcessed then
			toggleRats()
		end
	end)
end
task.spawn(SCRIPT_37)

return UI["1"], require;