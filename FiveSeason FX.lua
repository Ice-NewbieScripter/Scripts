--FiveSeason FX
    local red4NEW = game.ReplicatedStorage.Resources.FiveSeasonsFX["CharFX"].ArmEnabled:Clone()
    red4NEW.Parent = game.Players.LocalPlayer.Character["Head"]
        for _, child in ipairs(red4NEW:GetChildren()) do
            if child:IsA("ParticleEmitter") then -- Check if the child is a ParticleEmitter
                child:Emit(1) -- Emit 20 particles
            end
            end

    local red4 = game.ReplicatedStorage.Resources.FiveSeasonsFX["CharFX"].ArmEnabled:Clone()
    red4.Parent = game.Players.LocalPlayer.Character["Left Arm"]
        for _, child in ipairs(red4:GetChildren()) do
            if child:IsA("ParticleEmitter") then -- Check if the child is a ParticleEmitter
                child:Emit(1) -- Emit 20 particles
            end
            end
    
    local red4NEW = game.ReplicatedStorage.Resources.FiveSeasonsFX["CharFX"].ArmEnabled:Clone()
    red4NEW.Parent = game.Players.LocalPlayer.Character["Right Arm"]
        for _, child in ipairs(red4NEW:GetChildren()) do
            if child:IsA("ParticleEmitter") then -- Check if the child is a ParticleEmitter
                child:Emit(1) -- Emit 20 particles
            end
            end

        local red4NEW = game.ReplicatedStorage.Resources.FiveSeasonsFX["CharFX"].ArmEnabled:Clone()
        red4NEW.Parent = game.Players.LocalPlayer.Character["Torso"]
            for _, child in ipairs(red4NEW:GetChildren()) do
                if child:IsA("ParticleEmitter") then -- Check if the child is a ParticleEmitter
                    child:Emit(1) -- Emit 20 particles
                end
                end

    local red4NEW = game.ReplicatedStorage.Resources.FiveSeasonsFX["CharFX"].ArmEnabled:Clone()
    red4NEW.Parent = game.Players.LocalPlayer.Character["Right Leg"]
        for _, child in ipairs(red4NEW:GetChildren()) do
            if child:IsA("ParticleEmitter") then -- Check if the child is a ParticleEmitter
                child:Emit(1) -- Emit 20 particles
            end
            end

        local red4NEW = game.ReplicatedStorage.Resources.FiveSeasonsFX["CharFX"].ArmEnabled:Clone()
        red4NEW.Parent = game.Players.LocalPlayer.Character["Left Leg"]
            for _, child in ipairs(red4NEW:GetChildren()) do
                if child:IsA("ParticleEmitter") then -- Check if the child is a ParticleEmitter
                    child:Emit(1) -- Emit 20 particles
                end
                end