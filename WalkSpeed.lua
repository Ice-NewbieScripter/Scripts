local toggle = false
local player = game.Players.LocalPlayer


function onKeyPress(actionName, userInputState, inputObject)
    if userInputState == Enum.UserInputState.Begin then
        if toggle == false then
            toggle = true
            player.Character.Humanoid.WalkSpeed = 32
        else
            toggle = false
            player.Character.Humanoid.WalkSpeed = 16
        end
    end
end

game.ContextActionService:BindAction("keyPress", onKeyPress, false, Enum.KeyCode.LeftShift)