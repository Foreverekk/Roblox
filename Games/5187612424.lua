function coins100mS()
    local A_1 = 100000000
    local A_2 = "o63cIPRq5Pjexevx"-- Randomly generated player code (RemoteSpy)
    local Event = game:GetService("ReplicatedStorage").Events.DropSell
    Event:FireServer(A_1, A_2)
    
end

function coins10mS()
    local A_1 = 10000000
    local A_2 = "o63cIPRq5Pjexevx"-- Randomly generated player code (RemoteSpy)
    local Event = game:GetService("ReplicatedStorage").Events.DropSell
    Event:FireServer(A_1, A_2)
    
end

function coins1mS()
    local A_1 = 1000000
    local A_2 = "o63cIPRq5Pjexevx"-- Randomly generated player code (RemoteSpy)
    local Event = game:GetService("ReplicatedStorage").Events.DropSell
    Event:FireServer(A_1, A_2)
    
end

function coins100kS()
    local A_1 = 100000
    local A_2 = "o63cIPRq5Pjexevx"-- Randomly generated player code (RemoteSpy)
    local Event = game:GetService("ReplicatedStorage").Events.DropSell
    Event:FireServer(A_1, A_2)
    
end

function coins10kS()
    local A_1 = 10000
    local A_2 = "o63cIPRq5Pjexevx"-- Randomly generated player code (RemoteSpy)
    local Event = game:GetService("ReplicatedStorage").Events.DropSell
    Event:FireServer(A_1, A_2)
    
end

function coins1kS()
    local A_1 = 1000
    local A_2 = "o63cIPRq5Pjexevx"-- Randomly generated player code (RemoteSpy)
    local Event = game:GetService("ReplicatedStorage").Events.DropSell
    Event:FireServer(A_1, A_2)
    
end

function collectS()
    for i,v in ipairs(workspace.DropHolder:GetDescendants()) do
        if v.Name == "ClickDetector" and v.Parent then
            fireclickdetector(v)
        end
    end
end

function rebirthS()
    local A_1 = 1
    local Event = game:GetService("ReplicatedStorage").Events.RebirthAdd
    Event:InvokeServer(A_1)

end

function saveS()
    local Event = game:GetService("ReplicatedStorage").Events.DataSave
    Event:FireServer()
    
end

local T1 = Window:NewTab("Main")
local S1 = T1:NewSection("Autofarm")
local coins = nil
local rebirth = nil
local S2 = T1:NewSection("Add")
local S3 = T1:NewSection("Misc")

S1:NewToggle("Coins (need to bypass)", "Autofarm coins", function(c)
    coins = c
    
    while coins and wait(0.1) do
        coins100mS()
        game.Players.LocalPlayer.CharacterAdded:Connect(function()
        game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")
        if not coins then return end
        coins100mS()
    end)
end
end)

S1:NewToggle("Collect Coins", "Autocollect coins", function(c)
    collect = c
    
    while collect and wait(1) do
        collectS()
        game.Players.LocalPlayer.CharacterAdded:Connect(function()
        game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")
        if not collect then return end
        collectS()
    end)
end
end)

S1:NewToggle("Rebirth", "Autofarm rebirths", function(c)
    rebirth = t
    
    while rebirth and wait(1) do
        rebirthS()
        game.Players.LocalPlayer.CharacterAdded:Connect(function()
        game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")
        if not rebirth then return end
        rebirthS()
    end)
end
end)

S2:NewButton("Coins (100M) (need to bypass)", "Add coins", function(c)
    coins100mS()
end)

S2:NewButton("Coins (10M) (need to bypass)", "Add coins", function(c)
    coins10mS()
end)

S2:NewButton("Coins (1M) (need to bypass)", "Add coins", function(c)
    coins1mS()
end)

S2:NewButton("Coins (100K) (need to bypass)", "Add coins", function(c)
    coins100kS()
end)

S2:NewButton("Coins (10K) (need to bypass)", "Add coins", function(c)
    coins10kS()
end)

S2:NewButton("Coins (1K) (need to bypass)", "Add coins", function(c)
    coins1kS()
end)

S3:NewButton("Save", "Force datasave", function(c)
    saveS()
end)