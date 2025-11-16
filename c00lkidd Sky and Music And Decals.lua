s = Instance.new("Sky")
s.Name = "SKY"
s.SkyboxBk = "http://www.roblox.com/asset/?id=158118263"
s.SkyboxDn = "http://www.roblox.com/asset/?id=158118263"
s.SkyboxFt = "http://www.roblox.com/asset/?id=158118263"
s.SkyboxLf = "http://www.roblox.com/asset/?id=158118263"
s.SkyboxRt = "http://www.roblox.com/asset/?id=158118263"
s.SkyboxUp = "http://www.roblox.com/asset/?id=158118263"
s.Parent = game.Lighting
Spooky = Instance.new("Sound", game.Workspace)
Spooky.Name = "Spooky"
Spooky.SoundId = "rbxassetid://104181508980428"
Spooky.Volume = 5
Spooky.Looped = true
Spooky.Pitch = 0.2
Spooky:Play()
local ID =158118263 --id here
function spamDecal(v)
    if v:IsA("Part") then
        for i=0, 5 do
            D = Instance.new("Decal")
            D.Name = "MYDECALHUE"
            D.Face = i
            D.Parent = v
            D.Texture = ("http://www.roblox.com/asset/?id="..Id)
        end
    else
        if v:IsA("Model") then
            for a,b in pairs(v:GetChildren()) do
                spamDecal(b)
            end
        end
    end
end
function decalspam(id) --use this function, not the one on top
    Id = id
    for i,v in pairs(game.Workspace:GetChildren()) do
        if v:IsA("Part") then
        for i=0, 5 do
            D = Instance.new("Decal")
            D.Name = "MYDECALHUE"
            D.Face = i
            D.Parent = v
            D.Texture = ("http://www.roblox.com/asset/?id="..id)
        end
    else
        if v:IsA("Model") then
            for a,b in pairs(v:GetChildren()) do
                spamDecal(b)
            end
        end
    end
end
end

decalspam(ID)