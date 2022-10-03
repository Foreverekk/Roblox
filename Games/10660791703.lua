local T1 = Window:NewTab("Main")
local S1 = T1:NewSection("Teleport")
local tpPlaces = { "Spawn", "Checkpoint", "Winner" }
local S2 = T1:NewSection("Badges")

local T2 = Window:NewTab("Settings")
local S1_2 = T2:NewSection("Teleport")
local tpMethods = { "Teleport", "Tween" }
local tpMethod = "Teleport"

function badgesS()
    loadstring(game:HttpGet(mainRaw.."Scripts/"..game.PlaceId.."-badges.lua"))()
end

S1:NewDropdown("Teleport to", "Choose place", tpPlaces, function(c)
    if c == "Spawn" then
        if tpMethod == "Teleport" then
            game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart.CFrame = game:GetService("Workspace"):FindFirstChild("SpawnLocation").CFrame
        end
        if tpMethod == "Tween" then
            tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(1, Enum.EasingStyle.Linear)
            local Tween1 = nil
            Tween1 = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = game:GetService("Workspace"):FindFirstChild("SpawnLocation").CFrame})
            Tween1:Play()
            Tween1.Completed:Wait()
        end
    end
    if c == "Checkpoint" then
        if tpMethod == "Teleport" then
            game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart.CFrame = game:GetService("Workspace"):FindFirstChild("CheckpointSpawnLocation").CFrame
        end
        if tpMethod == "Tween" then
            tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(1, Enum.EasingStyle.Linear)
            local Tween1 = nil
            Tween1 = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = game:GetService("Workspace"):FindFirstChild("CheckpointSpawnLocation").CFrame})
            Tween1:Play()
            Tween1.Completed:Wait()
        end
    end
    if c == "Winner" then
        if tpMethod == "Teleport" then
            game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart.CFrame = game:GetService("Workspace"):FindFirstChild("WinnerSpawnLocation").CFrame
        end
        if tpMethod == "Tween" then
            tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(1, Enum.EasingStyle.Linear)
            local Tween1 = nil
            Tween1 = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = game:GetService("Workspace"):FindFirstChild("WinnerSpawnLocation").CFrame})
            Tween1:Play()
            Tween1.Completed:Wait()
        end
    end
end)

S2:NewButton("Collect", "Collect all available badges", function()
    badgesS()
end)

if _G.KeyInput == _G.KeyP then
    S1_2:NewDropdown("Select method", "Choose the method we will use", tpMethods, function(c)
        tpMethod = c
    end)
else
    S1_2:NewDropdown("Premium", "You need a premium for this", tpMethods, function(c)
        tpMethod = tpMethod
    end)
end
