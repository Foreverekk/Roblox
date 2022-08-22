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

function secretS()
    game:service'Players'.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-606.352, 32.4091, -319.299)
end

function dripS()
    game:service'Players'.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-10.985, 32.7016, -123.783)
    wait(0.1)
    game:service'Players'.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(20.1501, 32.7016, -123.224)
    wait(0.1)
    game:service'Players'.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(53.8174, 32.7016, -124.59)
    wait(0.1)
    game:service'Players'.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(83.9498, 32.7016, -123.256)
    wait(0.1)
    game:service'Players'.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(114.966, 32.7016, -124.226)
    wait(0.1)
    game:service'Players'.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(142.838, 32.7016, -125.987)
    wait(0.1)
    game:service'Players'.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(145.606, 32.7016, -81.7512)
    wait(0.1)
    game:service'Players'.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(174.715, 32.7016, -82.2747)
    wait(0.1)
    game:service'Players'.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(201.63, 32.7016, -80.9125)
    wait(0.1)
    game:service'Players'.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(166.713, 32.7016, -102.411)
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

S2:NewButton("Drip Drops", "TP to drip drops place", function()
    dripS()
end)

--175.040497, 32.7016182, -80.9629517, -0.982906997, -7.73639319e-10, 0.184102759, -7.55290053e-09, 1, -3.61219961e-08, -0.184102759, -3.68950737e-08, -0.982906997