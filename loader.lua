local url = "https://raw.githubusercontent.com/oxiyscripts/hub/main/scripts"

local games = {
    [537413528] = "build a boat";
  }

for i,v in next, games do
    games[i] = table.concat(v:split(' '), '_')
end

local name = games[game.PlaceId] or games[game.GameId]

return loadstring(game:HttpGet(url.. "/"..(name or "Universal")..".lua"))()
