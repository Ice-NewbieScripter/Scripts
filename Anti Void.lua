task.spawn(function()
    local Players = game:GetService("Players")
    local LocalPlayer = Players.LocalPlayer
    local voidThreshold = -30

    while true do
        task.wait(0.5)

        local character = LocalPlayer.Character
        if not character then continue end

        local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
        local humanoid = character:FindFirstChild("Humanoid")
        if not (humanoidRootPart and humanoid) then continue end

        if humanoidRootPart.Position.Y < voidThreshold then
            local train = workspace:FindFirstChild("Train")
            local conductorSeat = train and train:FindFirstChild("TrainControls") and train.TrainControls:FindFirstChild("ConductorSeat")
            local vehicleSeat = conductorSeat and conductorSeat:FindFirstChild("VehicleSeat")

            if train and conductorSeat and vehicleSeat then
                local success, err = pcall(function()
                    local oldPos = vehicleSeat:GetPivot()
                    humanoidRootPart.CFrame = vehicleSeat.CFrame + Vector3.new(0, 2, 0)
                    humanoid:Sit()

                    local startTime = tick()
                    while tick() - startTime < 5 do
                        if vehicleSeat:FindFirstChild("SeatWeld") then
                            vehicleSeat:PivotTo(oldPos)
                            return
                        end
                        task.wait(0.05)
                    end
                end)
            end
        end
    end
end)