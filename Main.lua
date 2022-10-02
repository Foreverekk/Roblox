game.StarterGui:SetCore("SendNotification", {
    Title = "Loading..";
    Text = "Made by Foreverekk.#0007";
    Duration = 1;
})
mainRaw = "https://raw.githubusercontent.com/Foreverekk/Roblox/main/"
loadstring(game:HttpGet(mainRaw.."Loading.lua"))() -- "Main" won't work without it

function bench(func)
    start = tick()
    func()
    a = tick() - start
    return tostring(a)
end

loaded = false

local d
local f = pcall(function()
    d = game:HttpGet(mainRaw.."Games/"..game.PlaceId..".lua")
end)


if _G.KeyInput == _G.Key or _G.KeyInput == _G.KeyP then
    wait(1)
    Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
    Window = Library.CreateLib("Hello! "..game:GetService("Players")["LocalPlayer"].DisplayName.." | FRV Hub", "Midnight")
    if f == true then
        wait(1)
        loadstring(d)()
        loadstring(game:HttpGet(mainRaw.."UI.lua"))()
    
    else
        game.StarterGui:SetCore("SendNotification", {
            Title = "Error!";
            Text = "Probably the wrong game/place";
            Duration = 10;
        })
        wait(1)
        loadstring(game:HttpGet(mainRaw.."UI.lua"))()
    end
else
    loadstring(game:HttpGet(mainRaw.."Games/Key.lua"))()
    loadstring(game:HttpGet(mainRaw.."KeyChange.lua"))()

-- AntiKick
-- AutoRotate
-- Amogus (Character)
-- ESP
-- Better FPS
-- Headless (Client)
-- AK-47 (Client)
-- Shotgun (Client)
-- WalkSpeed
-- JumpPower
-- Sit

-- 28586816 Get Eaten!
-- 294790062 Roblox Titanic
-- 2185497593 Arcade Island X: Working Arcade
-- 10526921593 CHAIR RACING
-- 10319501620 School of Sport
-- 10536276198 The VMA Experience
-- 815405518 The Floor Is LAVA!
-- 8884433153 Collect All Pets!
-- 5702593762 Climb 1,000 Stairs
-- 2396588044 Adopt and Raise
-- 7993293100 Tsunami Game
-- 1001315107 RO-BOTS [BETA]
-- 3587619225 Mega Easy Obby
-- 6490641023 Mega Tower Obby
-- 7952502098 Impossible Glass Bridge Obby! (Squid Game)
-- 8003084678 oMega Obby Parkour
-- 7378813434 Cotton Obby!
-- 5166670285 Badge Walk
-- 148763243 Player Badges
-- 4760217946 Limited Badges
-- 7918824587 Limiteds Badge Walk
-- 7896264844 Find the Markers
-- 9268384900 Find The Anime
-- 8651851179 Find The Pandas
-- 8972280788 Find The Impostors!
-- 8919650008 Find The Pop Tarts
-- 9304358188 Find The Memes
-- 9296316690 Find the Milks
-- 9094061470 Find The Piggy Morphs
-- 8376378000 Find the Stickmen
-- 8621928057 Find The Pou!
-- 9247388724 Find The Cats!
-- 8891045283 Find The Bacons
-- 8850326889 Find The Slime Morphs!
-- 9567152264 Find The SCP
-- 8230381734 Find the Moai
-- 10573025341 [57] Monster Facility
-- 10534443549 Bloody Ragdolls
-- 6230718877 Pain
-- 10148047155 Car Mechanic Tycoon
-- 5187612424 School Tycoon
-- 9284097280 Apartment Tycoon
-- 6939849554 Cart Ride Tycoon thru a Cave 2
end
