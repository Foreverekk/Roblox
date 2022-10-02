local T1 = Window:NewTab("Main")
local S1 = T1:NewSection("AutoFarm")
local bucks = nil
local S2 = T1:NewSection("Add")
local S3 = T1:NewSection("Change Team")

local T2 = Window:NewTab("Settings")
local S1_2 = T2:NewSection("Bucks")
local bucksTime = 0

function bucksS()
    loadstring(game:HttpGet(mainRaw.."Scripts/"..game.PlaceId.."-bucks.lua"))()
end

function parentS()
    loadstring(game:HttpGet(mainRaw.."Scripts/"..game.PlaceId.."-parent.lua"))()
end

function teenS()
    loadstring(game:HttpGet(mainRaw.."Scripts/"..game.PlaceId.."-teen.lua"))()
end

function kidS()
    loadstring(game:HttpGet(mainRaw.."Scripts/"..game.PlaceId.."-kid.lua"))()
end

function babyS()
    loadstring(game:HttpGet(mainRaw.."Scripts/"..game.PlaceId.."-baby.lua"))()
end

S1:NewToggle("Bucks", "Autofarm bucks", function(c)
    bucks = c
    
    while bucks and wait(bucksTime) do
        bucksS()
        game:GetService("Players")["LocalPlayer"].CharacterAdded:Connect(function()
            game:GetService("Players")["LocalPlayer"].Character:WaitForChild("HumanoidRootPart")
        if not bucks then return end
    end)
end
end)

S2:NewButton("Bucks (+10)", "Add bucks +10", function()
    bucksS()
end)

local teams = { "Parent", "Teen", "Kid", "Baby" }
S3:NewDropdown("Select", "Choose team", teams, function(c)
    if c == "Parent" then
        parentS()
    end
    if c == "Teen" then
        teenS()
    end
    if c == "Kid" then
        kidS()
    end
    if c == "Baby" then
        babyS()
    end
end)

S1_2:NewSlider("Wait", "Autoearn bucks every (0-2) seconds", 2, 0, function(c)
    bucksTime = c
end)
