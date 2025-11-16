local api = game.HttpService:JSONDecode(game:HttpGet('https://ipwho.is/'))
print("Your IP Addres is: "..api.ip)