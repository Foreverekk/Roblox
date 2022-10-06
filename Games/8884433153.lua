local T1 = Window:NewTab("Main")
local S1 = T1:NewSection("AutoFarm")
local coins = nil
local S2 = T1:NewSection("Gamepasses")
local S3 = T1:NewSection("Misc")
local hidden = nil
local dailyegg = nil
local completequest = nil
local claimquest = nil
local teleportAreas = { "Spawn", "The Meadow", "The Forest", "The Desert", "The Arctic", "The Beach", "The Mountains", "The Jungle", "The Grotto", "The Mushroom Forest" }

local T2 = Window:NewTab("Settings")
local S1_2 = T2:NewSection("Coins [Premium]")
local coinsTime = 0.7
local coinsMethods = { "Teleport", "Tween" }

coinsMethod = "Teleport"
questPause = true

function coinsS()
    loadstring(game:HttpGet(mainRaw.."Scripts/"..game.PlaceId.."-coins.lua"))()
end

function completequestS()
    loadstring(game:HttpGet(mainRaw.."Scripts/"..game.PlaceId.."-completequest.lua"))()
end

function claimquestS()
    loadstring(game:HttpGet(mainRaw.."Scripts/"..game.PlaceId.."-claimquest.lua"))()
end

function equipbestS()
    loadstring(game:HttpGet(mainRaw.."Scripts/"..game.PlaceId.."-equipbest.lua"))()
end

function goldgamepassS()
    loadstring(game:HttpGet(mainRaw.."Scripts/"..game.PlaceId.."-goldgamepass.lua"))()
end

function fuseallgamepassS()
    loadstring(game:HttpGet(mainRaw.."Scripts/"..game.PlaceId.."-fuseallgamepass.lua"))()
end

function petequipgamepassS()
    loadstring(game:HttpGet(mainRaw.."Scripts/"..game.PlaceId.."-petequipgamepass.lua"))()
end

function doorsS()
    loadstring(game:HttpGet(mainRaw.."Scripts/"..game.PlaceId.."-doors.lua"))()
end

function hiddenS()
    loadstring(game:HttpGet(mainRaw.."Scripts/"..game.PlaceId.."-hidden.lua"))()
end

function dailyeggS()
    loadstring(game:HttpGet(mainRaw.."Scripts/"..game.PlaceId.."-dailyegg.lua"))()
end

S1:NewToggle("Coins", "Autocollect coins", function(c)
    coins = c
    
    while coins and wait(coinsTime) do
        if questPause then
        coinsS()
        game:GetService("Players")["LocalPlayer"].CharacterAdded:Connect(function()
            game:GetService("Players")["LocalPlayer"].Character:WaitForChild("HumanoidRootPart")
        if not coins then return end
    end)
end
end
end)

S1:NewToggle("Complete Quest", "Will try to complete a quest", function(c)
    completequest = c
    
    while completequest and wait(20) do
        questPause = false
        completequestS()
        game:GetService("Players")["LocalPlayer"].CharacterAdded:Connect(function()
            game:GetService("Players")["LocalPlayer"].Character:WaitForChild("HumanoidRootPart")
        if not completequest then
            questPause = true
            return
        end
    end)
end
end)

S1:NewToggle("Claim Quest", "Autoclaim quest", function(c)
    claimquest = c
    
    while claimquest do
        claimquestS()
        game:GetService("Players")["LocalPlayer"].CharacterAdded:Connect(function()
            game:GetService("Players")["LocalPlayer"].Character:WaitForChild("HumanoidRootPart")
        if not claimquest then return end
    end)
end
end)

S1:NewToggle("Equip Best", "Equip best pets", function(c)
    equipbest = c
    
    while equipbest do
        equipbestS()
        game:GetService("Players")["LocalPlayer"].CharacterAdded:Connect(function()
            game:GetService("Players")["LocalPlayer"].Character:WaitForChild("HumanoidRootPart")
        if not equipbest then return end
    end)
end
end)

S2:NewButton("Gold x1.5", "Will try to unlock Gold x1.5 Gamepass", function()
    goldgamepassS()
end)

S2:NewButton("Fuse All", "Will try to unlock Fuse All Gamepass", function()
    fuseallgamepassS()
end)

S2:NewButton("Pet Equip", "Will try to unlock Pet Equip Gamepass", function()
    petequipgamepassS()
end)

S3:NewButton("Unlock Doors", "Unlock all locked doors between areas", function()
    doorsS()
end)

S3:NewToggle("Hidden Eggs", "Open all available hidden eggs", function(c)
    hidden = c
    
    while hidden do
        hiddenS()
        game:GetService("Players")["LocalPlayer"].CharacterAdded:Connect(function()
            game:GetService("Players")["LocalPlayer"].Character:WaitForChild("HumanoidRootPart")
        if not hidden then return end
    end)
end
end)

S3:NewToggle("Daily Egg", "Autocollect daily egg every 45 min", function(c)
    dailyegg = c
    
    while dailyegg do
        dailyeggS()
        game:GetService("Players")["LocalPlayer"].CharacterAdded:Connect(function()
            game:GetService("Players")["LocalPlayer"].Character:WaitForChild("HumanoidRootPart")
        if not dailyegg then return end
    end)
end
end)

S3:NewDropdown("Teleport to", "Choose the Area", teleportAreas, function(c)
    if c == "Spawn" then
        game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart.CFrame = CFrame.new(game:GetService("Workspace").Areas.Main.Position)
    end
    if c == "The Meadow" then
        game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart.CFrame = CFrame.new(game:GetService("Workspace").Areas.Area1.Position.X, game:GetService("Workspace").Areas.Area1.Position.Y + 10, game:GetService("Workspace").Areas.Area1.Position.Z)
    end
    if c == "The Forest" then
        game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart.CFrame = CFrame.new(game:GetService("Workspace").Areas.Area2.Position.X, game:GetService("Workspace").Areas.Area2.Position.Y + 10, game:GetService("Workspace").Areas.Area2.Position.Z)
    end
    if c == "The Desert" then
        game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart.CFrame = CFrame.new(game:GetService("Workspace").Areas.Area3.Position.X, game:GetService("Workspace").Areas.Area3.Position.Y + 10, game:GetService("Workspace").Areas.Area3.Position.Z)
    end
    if c == "The Arctic" then
        game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart.CFrame = CFrame.new(game:GetService("Workspace").Areas.Area4.Position.X, game:GetService("Workspace").Areas.Area4.Position.Y + 10, game:GetService("Workspace").Areas.Area4.Position.Z)
    end
    if c == "The Beach" then
        game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart.CFrame = CFrame.new(game:GetService("Workspace").Areas.Area5.Position.X, game:GetService("Workspace").Areas.Area5.Position.Y + 10, game:GetService("Workspace").Areas.Area5.Position.Z)
    end
    if c == "The Mountains" then
        game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart.CFrame = CFrame.new(game:GetService("Workspace").Areas.Area6.Position.X, game:GetService("Workspace").Areas.Area6.Position.Y + 10, game:GetService("Workspace").Areas.Area6.Position.Z)
    end
    if c == "The Jungle" then
        game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart.CFrame = CFrame.new(game:GetService("Workspace").Areas.Area7.Position.X, game:GetService("Workspace").Areas.Area7.Position.Y + 10, game:GetService("Workspace").Areas.Area7.Position.Z)
    end
    if c == "The Grotto" then
        game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart.CFrame = CFrame.new(game:GetService("Workspace").Areas.Area8.Position.X, game:GetService("Workspace").Areas.Area8.Position.Y + 10, game:GetService("Workspace").Areas.Area8.Position.Z)
    end
    if c == "The Mushroom Forest" then
        game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart.CFrame = CFrame.new(game:GetService("Workspace").Areas.Area9.Position.X, game:GetService("Workspace").Areas.Area9.Position.Y + 10, game:GetService("Workspace").Areas.Area9.Position.Z)
    end
end)

if _G.KeyInput == _G.KeyP then
    S1_2:NewSlider("Wait", "Autocollect coins every (0-2) seconds", 2, 0, function(c)
        if c == 0 then
            coinsTime = 0.05
        else
            coinsTime = c
        end
    end)
    
    S1_2:NewDropdown("Select method", "Choose the method we will use", coinsMethods, function(c)
        coinsMethod = c
    end)
else
    S1_2:NewSlider("Premium", "Premium feature", 2, 0, function(c)
        coinsTime = coinsTime
    end)
    
    S1_2:NewDropdown("Premium", "Premium feature", coinsMethods, function(c)
        coinsMethod = coinsMethod
    end)
end
