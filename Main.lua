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
    Window = Library.CreateLib("Hello! "..game.Players.LocalPlayer.DisplayName.." | FRV Hub", "DarkTheme")

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

    local Misc = Window:NewTab("Misc")
    local headless = nil
    function headlessS()
        wait(1)
        local me = game:GetService("Players").LocalPlayer.Character
        if me:FindFirstChild("Head") and me:FindFirstChild("Humanoid") then
            me.Head.MeshId = "rbxassetid://6686307858" or nil
        end
    end
    local M1 = Misc:NewSection("Player (Client)")
    local M2 = Misc:NewSection("Player")
    M1:NewToggle("Headless", "By lobox920", function(t)
        headless = t
        
        while headless do
            headlessS()
            game.Players.LocalPlayer.CharacterAdded:Connect(function()
            game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")
            if not headless then return end
            headlessS()
        end)
    end
    end)

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
