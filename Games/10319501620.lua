local args = {
    [1] = "(x:-370.17205810546875, y:31.68347930908203, z:-484.21160888671875)"
}

function coinsS()
    while wait() do
        game:GetService("ReplicatedStorage").RemoteEvents.RewardCurrencyPickup:FireServer(unpack(args))
    end
end

function secretS()
    game:service'Players'.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-606.352, 32.4091, -319.299)
end

function codeS()
    game:service'Players'.LocalPlayer.PlayerGui.Windows.PromoCodeUI.EntryPage.PromoCodeEntry.Text = "1K Likes"
    game:service'Players'.LocalPlayer.PlayerGui.Windows.PromoCodeUI.EntryPage.RedeemButton:FireMouse1Button()
    game:service'Players'.LocalPlayer.PlayerGui.Windows.PromoCodeUI.EntryPage.PromoCodeEntry.Text = "5K Likes"
    game:service'Players'.LocalPlayer.PlayerGui.Windows.PromoCodeUI.EntryPage.RedeemButton:FireMouse1Button()
end

local T1 = Window:NewTab("Main")
local S1 = T1:NewSection("AutoFarm")
local coins = nil
local S2 = T1:NewSection("Teleport")

S1:NewToggle("Coins", "Autofarm coins", function(t)
    coins = t
    
    while coins do
        coinsS()
        game.Players.LocalPlayer.CharacterAdded:Connect(function()
        game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")
        if not coins then return end
        coinsS()
    end)
end
end)

S2:NewButton("Secret Hideout", "TP to secret hideout", function()
    secretS()
end)

S1:NewButton("Promo Codes", "Redeem available promo codes", function()
    codeS()
end)
