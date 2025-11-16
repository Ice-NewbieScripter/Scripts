local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/Xenon-UI-coder/Ui/main/Orion-Source')))()
local Window = OrionLib:MakeWindow({Name = "??? hub / .gg/zeJ32NF6rZ", HidePremium = false, IntroText = "??? hub" , SaveConfig = true, ConfigFolder = "OrionTest"})

local Tab = Window:MakeTab({
Name = "Items",
Icon = "rbxassetid://4483345998",
PremiumOnly = false
})

Tab:AddButton({
Name = "Urine jar",
Callback = function()
      print("Executed Star Jug")
 loadstring(game:HttpGet("https://raw.githubusercontent.com/notpoiu/Scripts/refs/heads/main/StarJug.lua"))()
  end    
})

Tab:AddButton({
Name = "Spawn of Pandenion",
Callback = function()
      print("Spawn")
loadstring(game:HttpGet("https://raw.githubusercontent.com/DripCapybara/Doors-Mode-Remakes/refs/heads/main/PandemoniumProtected.lua"))()
   end    
})

Tab:AddButton({
      Name = "Size Stick",
      Callback = function()
        loadstring(game:HttpGet('https://gist.githubusercontent.com/IdkMyNameLoll/f0178af2301ca90c09895f10f3e7bd4b/raw/46899ccc3626f3485d85f990012f7ef37ae52e5e/resizerDoorsRemake'))() 
      end,
   })

Tab:AddButton({
Name = "Gold Shakelight",
Callback = function()
      print("Executed Star Jug")
 loadstring(game:HttpGet(("https://raw.githubusercontent.com/aadyian9000/the-thing/main/GoldenGummyFlashlight.lua"),true))()
  end    
})

Tab:AddButton({
Name = "Water jar",
Callback = function()
      print("Executed Star Jug")
 loadstring(game:HttpGet('https://gist.githubusercontent.com/IdkMyNameLoll/04d7dd5e02688624b958b8c2604b924c/raw/9e86b34249f44ed2dd433176e67daaf3db30cde8/MoonBottle'))() 
  end
})

Tab:AddButton({
Name = "Seek Gun",
Callback = function()
      print("Executed Star Jug")
loadstring(game:HttpGet("https://raw.githubusercontent.com/notpoiu/Scripts/main/seekgun.lua"))()
  end    
})

Tab:AddButton({
Name = "Bomb rocket 2007",
Callback = function()
      print("Executed Star Jug")
 loadstring(game:HttpGet("https://raw.githubusercontent.com/notpoiu/Scripts/main/rocketLauncher.lua"))()
  end    
})

Tab:AddButton({
Name = "Seek Morph",
Callback = function()
      print("Executed Star Jug")
 loadstring(game:HttpGet("https://api.hugebonus.xyz/scripts/TrollFaceSpawner.lua"))()
  end    
})

local Section = Tab:AddSection({
Name = "Cheats"
})


Tab:AddButton({
Name = "Morphs",
Callback = function()
      print("Executed Star Jug")
 loadstring(game:HttpGet("https://raw.githubusercontent.com/ChronoAccelerator/Public-Scripts/main/Morphing/MorphScript.lua"))(); 
  end    
})

Tab:AddButton({
      Name = "Infinite Vitamins",
      Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/MrNeRD0/Doors-Hack/refs/heads/main/Inf_Vitamins.lua"))()
      end,
   })

Tab:AddButton({
      Name = "Crucifix On Anything",
      Callback = function()
        _G.Uses = 99999999999
   _G.Range = 999
   _G.OnAnything = true
   _G.Fail = false
   loadstring(game:HttpGet('https://raw.githubusercontent.com/PenguinManiack/Crucifix/main/Crucifix.lua'))() --no deivid-- --execute this instead--
      end,
   })

Tab:AddButton({
      Name = "Mischievous Crucifix",
      Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Teilsthebfdifan/Modhub-assets/refs/heads/main/MischievousV2Test.lua"))()
      end,
   })

local Section = Tab:AddSection({
Name = "Mods"
})

Tab:AddButton({
Name = "Creepy mod",
Callback = function()
      print("Executed Star Jug")
 loadstring(game:HttpGet('https://raw.githubusercontent.com/Anzor5458/Mode/refs/heads/main/Creepy%20mode'))() 
  end    
})

Tab:AddButton({
Name = "хаос",
Callback = function()
      print("Executed Star Jug")
 loadstring(game:HttpGet("https://raw.githubusercontent.com/t1hub2/Chaos/3adc3d35de10eb716d85cef84b18f29c2a0b3278/README.lua"))() 
  end    
})