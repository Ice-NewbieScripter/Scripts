local ESP = loadstring(game:HttpGet("https://kiriot22.com/releases/ESP.lua"))()
ESP:Toggle(true)
ESP.Players = false
ESP.Boxes = true
ESP.Names = true
ESP.TeamColor = false
ESP.FaceCamera = true
ESP.Distance = 10000

function AddIfAliveUnicorn(model)
    if model:IsA("Model") and string.lower(model.Name):find("unicorn") then
        local humanoid = model:FindFirstChildWhichIsA("Humanoid")
        if humanoid and humanoid.Health > 0 then
            local part = model:FindFirstChild("HumanoidRootPart") or model:FindFirstChildWhichIsA("BasePart")
            if part then
                ESP:Add(model, {
                    Name = "Unicorn",
                    PrimaryPart = part,
                    Color = Color3.fromRGB(255, 182, 193),
                    IsEnabled = true
                })
            end
        end
    end
end

for _, obj in pairs(workspace:GetDescendants()) do
    AddIfAliveUnicorn(obj)
end

workspace.DescendantAdded:Connect(function(obj)
    wait(0.1)
    AddIfAliveUnicorn(obj)
end)