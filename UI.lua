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
    local me = game:GetService("Players").LocalPlayer.Character
    if me:FindFirstChild("Head") and me:FindFirstChild("Humanoid") then
        me.Head.MeshId = "rbxassetid://6686307858" or nil
    end
end
local fly = nil
loadstring(game:HttpGet("https://raw.githubusercontent.com/Foreverekk/Roblox/main/Fly.lua"))()
local M1 = Misc:NewSection("Player (Client)")
local M2 = Misc:NewSection("Player")
M1:NewToggle("Headless", "By lobox920", function(c)
    headless = c
    
    while headless and wait(0.5) do
        headlessS()
        game.Players.LocalPlayer.CharacterAdded:Connect(function()
        game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")
        if not headless then return end
        headlessS()
    end)
end
end)

M2:NewToggle("Fly", "By Nicuse", function(c)
    fly = c
    
    while fly and wait(0.2) do
        Fly(true)
    else
        Fly(false)
    end
end)

M2:NewSlider("WalkSpeed", "Changes player character walkspeed", 500, 16, function(c)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = c
end)

M2:NewSlider("JumpPower", "Changes player character jump power", 1000, 50, function(c)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = c
end)

M2:NewButton("AntiKick", "By Valco", function(c)
    if getgenv().Anti == true then
        getgenv().Anti = false
        game.StarterGui:SetCore("SendNotification", {
            Title = "AntiKick";
            Text = "Disabled!";
            Duration = 5;
        })        
    else
        getgenv().Anti = true
        game.StarterGui:SetCore("SendNotification", {
            Title = "AntiKick";
            Text = "Enabled!";
            Duration = 5;
        }) 
    end
end)

M2:NewButton("Sit", "Just sit", function(c)
    game.Players.LocalPlayer.Character.Humanoid.Sit = true
end)

M2:NewButton("AutoRotate (Character)", "Disable/Enable", function(c)
    local ar = game.Players.LocalPlayer.Character.Humanoid.AutoRotate
    if ar == true then
        game.Players.LocalPlayer.Character.Humanoid.AutoRotate = false
    else
        game.Players.LocalPlayer.Character.Humanoid.AutoRotate = true
    end
end)

local Anti-- By Valco
Anti = hookmetamethod(game, "__namecall", function(self, ...)
    if self == plr and getnamecallmethod():lower() == "kick" and getgenv().Anti then
        return warn("[ANTI-KICK] Client Tried To Call Kick Function On LocalPlayer")
    end
    return Anti(self, ...)
end)

loadstring(game:HttpGet("https://raw.githubusercontent.com/Foreverekk/Roblox/main/Loaded.lua"))()
