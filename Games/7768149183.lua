function tfS()
    for i,v in ipairs(workspace.Trolls:GetDescendants()) do
        if v.ClassName == "Part" or v.ClassName == "MeshPart" then
            firetouchinterest(game.Players.LocalPlayer.Character.Head, v, 0)
            firetouchinterest(game.Players.LocalPlayer.Character.Head, v, 1)
        end
    end
    game.StarterGui:SetCore("SendNotification", {
        Title = "Collected!";
        Text = "Made by Foreverekk.#0007";
        Duration = 60;
    })
end

function trollarsS()
    for i,v in ipairs(workspace.WorldTrollars:GetDescendants()) do
        if v.ClassName == "Part" and v.Exists == true then
            tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(1, Enum.EasingStyle.Linear)
            tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = v.CFrame}):Play()
            game:GetService("ReplicatedStorage").Events.CollectTrollar:FireServer(game:GetService("Workspace").WorldTrollars.Trollar)
            game:GetService("ReplicatedStorage").Events.AddTrollar:FireServer(game:GetService("Workspace").WorldTrollars.Trollar)
        end
    end
end

local T1 = Window:NewTab("Main")
local S1 = T1:NewSection("Trollfaces")
local S2 = T1:NewSection("AutoFarm")
local trollars = nil

S1:NewButton("Collect", "Collect all available trollfaces", function()
    tfS()
end)

S2:NewToggle("Trollars", "Autofarm trollars", function(c)
    trollars = c
    
    while trollars and wait(2) do
        trollarsS()
        game.Players.LocalPlayer.CharacterAdded:Connect(function()
        game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")
        if not trollars then return end
        trollarsS()
    end)
end
end)
