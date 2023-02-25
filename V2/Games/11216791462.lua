_G.gameVer = 3438

if _G.KeyInput == _G.Key or _G.KeyInput == _G.KeyP then
    local Window = Library:CreateWindow("FRV Hub V2 (Game)")

    local Game = Window:AddFolder("Hungry Pig")
    
    Game:AddLabel({ text = "    [Money]" })
    Game:AddButton({ text = "+5", flag = "button5Money", callback = function()
        game:GetService("ReplicatedStorage").PurchasePet:FireServer{
            ["Description"] = "This will light up a path infront of you.",
            ["ImageID"] = "rbxassetid://11864692764",
            ["Name"] = "FlashLight",
            ["Cost"] = -5
        }
    end })
    Game:AddButton({ text = "+10", flag = "button10Money", callback = function()
        game:GetService("ReplicatedStorage").PurchasePet:FireServer{
            ["Description"] = "This will light up a path infront of you.",
            ["ImageID"] = "rbxassetid://11864692764",
            ["Name"] = "FlashLight",
            ["Cost"] = -10
        }
    end })
    Game:AddButton({ text = "+25", flag = "button25Money", callback = function()
        game:GetService("ReplicatedStorage").PurchasePet:FireServer{
            ["Description"] = "This will light up a path infront of you.",
            ["ImageID"] = "rbxassetid://11864692764",
            ["Name"] = "FlashLight",
            ["Cost"] = -25
        }
    end })
    Game:AddButton({ text = "Infinity", flag = "buttonInfinityMoney", callback = function()
        game:GetService("ReplicatedStorage").PurchasePet:FireServer{
            ["Description"] = "This will light up a path infront of you.",
            ["ImageID"] = "rbxassetid://11864692764",
            ["Name"] = "FlashLight",
            ["Cost"] = -9999999999e9999999999
        }
    end })
    
    Game:AddLabel({ text = " " })

    Game:AddLabel({ text = "Note: Rejoin if not work" })

    Game:AddLabel({ text = " " })
    
    Window:AddLabel({ text = "by Foreverekk.#0007" })
    
    Library:Init()

else
    print("Invalid key!")
    return
end
