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

wait(1)
if f == true then
    game.StarterGui:SetCore("SendNotification", {
        Title = "Loaded!";
        Text = "Made by Foreverekk.#0007";
        Duration = 5;
    })
    wait(1)
    Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
    Window = Library.CreateLib("Hello "..game.Players.LocalPlayer.DisplayName.."! | FRV Hub", "DarkTheme")

    loadstring(d)()

    local Credits = Window:NewTab("Credits")
    local C1 = Credits:NewSection("Scripting:")
    C1:NewButton("Foreverekk.#0007", "Discord", function()
        setclipboard("Foreverekk.#0007")
    end)
    local C2 = Credits:NewSection("UI:")
    C2:NewButton("xHeptc", "GitHub", function()
        setclipboard("xHeptc")
    end)

    local Game = Window:NewTab("Game")
    local G1 = Game:NewSection("Place Version:")
    G1:NewButton(game.PlaceVersion, "Click to copy", function()
        setclipboard(game.PlaceVersion)
    end)
    local G2 = Game:NewSection("Place ID:")
    G2:NewButton(game.PlaceId, "Click to copy", function()
        setclipboard(game.PlaceId)
    end)
    local G3 = Game:NewSection("Game ID:")
    G3:NewButton(game.GameId, "Click to copy", function()
        setclipboard(game.GameId)
    end)
    local G4 = Game:NewSection("Job ID:")
    G4:NewButton(game.JobId, "Click to copy", function()
        setclipboard(game.JobId)
    end)

    local Player = Window:NewTab("Player")
    local P1 = Player:NewSection("User Name:")
    P1:NewButton(game.Players.LocalPlayer.Name, "Click to copy", function()
        setclipboard(game.Players.LocalPlayer.Name)
    end)
    local P2 = Player:NewSection("User ID:")
    P2:NewButton(game.Players.LocalPlayer.UserId, "Click to copy", function()
        setclipboard(game.Players.LocalPlayer.UserId)
    end)
    local P3 = Player:NewSection("Account Age:")
    P3:NewButton(game.Players.LocalPlayer.AccountAge.." days", "Click to copy", function()
        setclipboard(game.Players.LocalPlayer.AccountAge)
    end)

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
