loadstring(game:HttpGet("https://raw.githubusercontent.com/Foreverekk/Roblox/main/Loading.lua"))()

function bench(func)
    start = tick()
    func()
    a = tick() - start
    return tostring(a)
end

loaded = false

local d
local f = pcall(function()
    d = game:HttpGet("https://raw.githubusercontent.com/Foreverekk/Roblox/main/Games/"..game.PlaceId..".lua")
end)


if input == _G.Key then
    wait(1)
    Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
    Window = Library.CreateLib("Hello! "..game.Players.LocalPlayer.DisplayName.." | FRV Hub", "Midnight")
    if f == true then
        wait(1)
        loadstring(d)()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Foreverekk/Roblox/main/UI.lua"))()
    
    else
        game.StarterGui:SetCore("SendNotification", {
            Title = "Error!";
            Text = "Probably the wrong game/place";
            Duration = 10;
        })
        wait(1)
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Foreverekk/Roblox/main/UI.lua"))()
    end
else
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Foreverekk/Roblox/main/Games/Key.lua"))()
    KeyLibrary = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
    KeyWindow = KeyLibrary.CreateLib("Enter Key | FRV Hub (Badge Collectors!)", "Midnight")
    local Key = KeyWindow:NewTab("Unlock")
    local K1 = Key:NewSection("discord.gg/RetmyBsNAV")
    K1:NewTextBox("Enter key here", "Join Discord for a key", function(c)
        _G.KeyInput = c
        if _G.KeyInput == _G.Key then
            input = _G.KeyInput
            wait(1)
            loadstring(game:HttpGet("https://raw.githubusercontent.com/Foreverekk/Roblox/main/Main.lua"))()
        end
    end)
    K1:NewButton("Copy Discord invite", "Join Discord for a key", function()
        setclipboard("https://discord.gg/RetmyBsNAV")
    end)

-- AntiKick
-- AutoRotate
-- Amogus (Character)
-- ESP
-- Fly
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
-- 5702593762 Climb 1,000 Stairs
-- 2396588044 Adopt and Raise
-- 7993293100 Tsunami Game
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
-- 5187612424 School Tycoon
-- 9284097280 Apartment Tycoon
-- 6939849554 Cart Ride Tycoon thru a Cave 2
end
