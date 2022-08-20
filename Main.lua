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
    wait(5)
    loadstring(d)()
else
    game.StarterGui:SetCore("SendNotification", {
        Title = "Error!";
        Text = "Probably the wrong game/place";
        Duration = 5;
    })
end

-- 10319501620 School of Sport (DICK'S Sporting Goods) -> AutoFarm
-- 10536276198 The VMA Experience (Paramount Game Studios) -> AutoFarm
-- 815405518 The Floor Is LAVA! (@TheLegendOfPyro) -> AutoFarm
-- 5166670285 Badge Walk (Reginald) -> Collect
-- 148763243 Player Badges (ivyrebar) -> Collect
-- 4760217946 Limited Badges (Shodsleet) -> Collect
-- 7918824587 Limiteds Badge Walk (The Development Productions) -> Collect
-- 3587619225 Mega Easy Obby (Authentic Creations) -> AutoFarm
-- 7952502098 Impossible Glass Bridge Obby! (Squid Game) -> AutoFarm
-- 8003084678 oMega Obby Parkour (@MonkrysGhost) -> AutoFarm
-- 7378813434 Cotton Obby! (River City Entertainment) -> Complete
-- 7896264844 Find the Markers (markers epic memers) -> Collect
-- 9268384900 Find The Anime (Dream Home) -> Collect
-- 8651851179 Find The Pandas (Zireael) -> Collect
-- 8972280788 Find The Impostors! (47Studio Extra) -> Collect
-- 8919650008 Find The Pop Tarts (perhapseb) -> Collect
-- 9304358188 Find The Memes (MARTENALT) -> Collect
-- 9296316690 Find the Milks (The BitSquid Fan Club) -> Collect
-- 9094061470 Find The Piggy Morphs (Crazay Studios) -> Collect
-- 8376378000 Find the Stickmen (Find the Badges!) -> Collect
-- 8621928057 Find The Pou! (@klaudinos1) -> Collect
-- 9247388724 Find The Cats! (Triple 6 Studio) -> Collect
