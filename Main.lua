game.StarterGui:SetCore("SendNotification", {
    Title = "Loading..";
    Text = "Made by Foreverekk.#0007";
    Duration = 1;
})

loaded = false

local d
local f = pcall(function()
    d = game:HttpGet("https://raw.githubusercontent.com/Foreverekk/Roblox/main/Games/"..game.PlaceId..".lua")
end)

if f == true then
    game.StarterGui:SetCore("SendNotification", {
        Title = "Loaded!";
        Text = "Made by Foreverekk.#0007";
        Duration = 3;
    })
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
-- 10536276198 The VMA Experience (Paramount Game Studios)
-- 4760217946 Limited Badges (Shodsleet)
-- 7918824587 Limiteds Badge Walk (The Development Productions)
-- 8651851179 Find The Pandas (Zireael)
-- 8972280788 Find The Impostors! (47Studio Extra)
-- 8919650008 Find The Pop Tarts (perhapseb)
-- 9304358188 Find The Memes (MARTENALT)
-- 9296316690 Find the Milks (The BitSquid Fan Club)
-- 9094061470 Find The Piggy Morphs (Crazay Studios)
