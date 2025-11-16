targetUsername = "roaecv"

players = game:GetService("Players")
targetPlayer = players:FindFirstChild(targetUsername)
players.LocalPlayer.Character:MoveTo(targetPlayer.Character.HumanoidRootPart.Position)