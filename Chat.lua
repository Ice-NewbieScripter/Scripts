local ReplicatedStorage = game:GetService("ReplicatedStorage")

-- Define the messages you want to send
local messages = {"Im gonna rip you in half now"} --can change words u need

-- Function to send messages to the chat
local function sendMessage(text)
    ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(text, "All")
end

-- Send each message one time with a 1-second delay
for _, message in ipairs(messages) do
    sendMessage(message)
    wait(0) -- Wait - second before sending the next message
end