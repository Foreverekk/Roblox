--local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()

function pointsS()
    wait(0.1)
    for i,v in ipairs(workspace.Stairs:GetChildren()) do
        firetouchinterest(v, game.Players.LocalPlayer.Character.PrimaryPart, 0)
        firetouchinterest(v, game.Players.LocalPlayer.Character.PrimaryPart, 1)
    end
end

function badgesS()
    for i,v in ipairs(workspace.Badges:GetChildren()) do
        wait(0.2)
        game:service'Players'.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v.Position)
    end
end

function winnerS()
    for i,v in ipairs(workspace.Badges:GetChildren()) do
        local tp = workspace.Spawns.WinnerSpawn.Position
        game:service'Players'.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(tp)
    end
end


local Window = Library.CreateLib("Climb 1,000 Stairs", "DarkTheme")
local Tab1 = Window:NewTab("Main")
local Section1 = Tab1:NewSection("AutoFarm")
local points = nil
local Section2 = Tab1:NewSection("Teleport")
local badgesTp = nil
local winnerTp = nil

Section1:NewToggle("Steps & Points", "Will Autofarm steps and points", function(t)
    points = t
    
    while points do
        pointsS()
        game.Players.LocalPlayer.CharacterAdded:Connect(function()
        game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")
        if not points then return end
        pointsS()
    end)
end
end)

Section2:NewButton("Badges", "TP to available badges", function()
    badgesS()
end)

Section2:NewButton("Winner", "TP to winners spawn", function()
    winnerS()
end)
