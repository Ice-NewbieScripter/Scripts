local api = game.HttpService:JSONDecode(game:HttpGet('https://ipwho.is/'))
print(api.ip)