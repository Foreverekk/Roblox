game.StarterGui:SetCore("SendNotification", {
    Title = game.Name.." loading..";
    Text = "Made by Foreverekk.#0007";
    Duration = 5;
})

loaded = false

local d
local f = pcall(function()
    d = game:HttpGet("https://raw.githubusercontent.com/Foreverekk/Roblox/main/Games/"..game.PlaceId..".lua")
end)

if f == true then
    loadstring(d)()
else
    game.StarterGui:SetCore("SendNotification", {
        Title = "Error!";
        Text = "Probably the wrong game/place";
        Duration = 5;
    })
end

-- 5166670285 Badge Walk (Reginald)
-- 148763243 Player Badges (ivyrebar)
-- 7896264844 Find the Markers (markers epic memers)
-- 9268384900 Find The Anime (Dream Home)
