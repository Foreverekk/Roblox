local args = {
    [1] = "(x:-370.17205810546875, y:31.68347930908203, z:-484.21160888671875)"
}

local redeem = {
    [1] = "1K Likes",
    [2] = "5K Likes",
    [3] = "10K Likes"
}

function coinsS()
    game:GetService("ReplicatedStorage").RemoteEvents.RewardCurrencyPickup:FireServer(unpack(args))
end

function coins2S()
    game:GetService("ReplicatedStorage").RemoteEvents.RewardCurrencyPickup:FireServer(unpack(args))
end

function secretS()
    game:service'Players'.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-606.352, 32.4091, -319.299)
end

function codeS()
    game.StarterGui:SetCore("SendNotification", {
        Title = "Codes:";
        Text = "1K Likes | 5K Likes | 10K Likes";
        Duration = 60;
    })
end

function stickersS()
    for i,v in ipairs(game.ReplicatedStorage.Stickers:GetDescendants()) do
        if v.ClassName == "Part" and v.Parent then
            game:service'Players'.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
        end
        wait(0.2)
    end
    game.StarterGui:SetCore("SendNotification", {
        Title = "Collected!";
        Text = "Made by Foreverekk.#0007";
        Duration = 60;
    })
end

local T1 = Window:NewTab("Main")
local S1 = T1:NewSection("AutoFarm")
local coins = nil
local coins2 = nil
local S2 = T1:NewSection("Teleport")

S1:NewToggle("Coins", "Autofarm coins", function(t)
    coins = t
    
    while coins and wait() do
        coinsS()
        game.Players.LocalPlayer.CharacterAdded:Connect(function()
        game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")
        if not coins then return end
        coinsS()
    end)
end
end)

S1:NewToggle("Coins x2", "Autofarm coins x2", function(t)
    coins2 = t
    
    while coins2 and wait() do
        coinsS()
        game.Players.LocalPlayer.CharacterAdded:Connect(function()
        game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")
        if not coins2 then return end
        coins2S()
    end)
end
end)

S1:NewButton("Promo Codes", "Send available promo codes", function()
    codeS()
end)

S2:NewButton("Stickers", "Collect available stickers", function()
    stickersS()
end)

S2:NewButton("Secret Hideout", "TP to secret hideout", function()
    secretS()
end)
