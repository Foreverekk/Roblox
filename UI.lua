game.StarterGui:SetCore("SendNotification", {
    Title = "Loaded!";
    Text = "Made by Foreverekk.#0007";
    Duration = 5;
})

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