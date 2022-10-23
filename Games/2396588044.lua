local T1 = Window:NewTab("Main")
local S1 = T1:NewSection("AutoFarm")
local bucks = nil
local S2 = T1:NewSection("Add")
local S3 = T1:NewSection("Change Team")

local T2 = Window:NewTab("Settings")
local S1_2 = T2:NewSection("Bucks [Premium]")
local bucksTime = 2

local bucksScript = loadstring(game:HttpGet(mainRaw.."Scripts/"..game.PlaceId.."-bucks.lua"))
function bucksS()
    loadstring(bucksScript)()
end

local parentScript = loadstring(game:HttpGet(mainRaw.."Scripts/"..game.PlaceId.."-parent.lua"))
function parentS()
    loadstring(parentScript)()
end

local teenScript = loadstring(game:HttpGet(mainRaw.."Scripts/"..game.PlaceId.."-teen.lua"))
function teenS()
    loadstring(teenScript)()
end

local kidScript = loadstring(game:HttpGet(mainRaw.."Scripts/"..game.PlaceId.."-kid.lua"))
function kidS()
    loadstring(kidScript)()
end

local babyScript = loadstring(game:HttpGet(mainRaw.."Scripts/"..game.PlaceId.."-baby.lua"))
function babyS()
    loadstring(babyScript)()
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

S1_2:NewSlider("Wait [BExec]", "Execute every (0-60) seconds", 60, 0, function(c)
    if _G.KeyInput == _G.KeyP then
        if c == 0 then
            moneyxpTime = 0.05
        else
            moneyxpTime = c
        end
    else
        moneyxpTime = moneyxpTime
    end
end)
