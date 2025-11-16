function log() deadpos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame end

game.Players.LocalPlayer.Character.Humanoid.Died:Connect(log)
game.Players.LocalPlayer.CharacterAdded:Connect(function(char)
    char:WaitForChild("Humanoid", 2).Died:Connect(log)
    char:WaitForChild("HumanoidRootPart", 2).CFrame = deadpos
end)