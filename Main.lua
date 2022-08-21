loadstring(game:HttpGet("https://raw.githubusercontent.com/Foreverekk/Roblox/main/Loading.lua"))()

loaded = false

local d
local f = pcall(function()
    d = game:HttpGet("https://raw.githubusercontent.com/Foreverekk/Roblox/main/Games/"..game.PlaceId..".lua")
end)

wait(1)
if f == true then
    wait(1)
    Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
    Window = Library.CreateLib("Hello! "..game.Players.LocalPlayer.DisplayName.." | FRV Hub", "DarkTheme")

    loadstring(d)()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Foreverekk/Roblox/main/UI.lua"))()

else
    game.StarterGui:SetCore("SendNotification", {
        Title = "Error!";
        Text = "Probably the wrong game/place";
        Duration = 60;
    })
end

-- 10319501620 School of Sport -> AutoFarm
-- 10536276198 The VMA Experience -> AutoFarm
-- 815405518 The Floor Is LAVA! -> AutoFarm
-- 5702593762 Climb 1,000 Stairs -> AutoFarm
-- 7993293100 Tsunami Game -> AutoFarm
-- 3587619225 Mega Easy Obby -> AutoFarm
-- 7952502098 Impossible Glass Bridge Obby! (Squid Game) -> AutoFarm
-- 8003084678 oMega Obby Parkour -> AutoFarm
-- 7378813434 Cotton Obby! -> Complete
-- 5166670285 Badge Walk -> Collect
-- 148763243 Player Badges -> Collect
-- 4760217946 Limited Badges -> Collect
-- 7918824587 Limiteds Badge Walk -> Collect
-- 7896264844 Find the Markers -> Collect
-- 9268384900 Find The Anime -> Collect
-- 8651851179 Find The Pandas -> Collect
-- 8972280788 Find The Impostors! -> Collect
-- 8919650008 Find The Pop Tarts -> Collect
-- 9304358188 Find The Memes -> Collect
-- 9296316690 Find the Milks -> Collect/AutoFarm
-- 9094061470 Find The Piggy Morphs -> Collect
-- 8376378000 Find the Stickmen -> Collect
-- 8621928057 Find The Pou! -> Collect
-- 9247388724 Find The Cats! -> Collect
-- 8891045283 Find The Bacons -> Collect
-- 8850326889 Find The Slime Morphs! -> Collect
-- 9567152264 Find The SCP -> Collect
