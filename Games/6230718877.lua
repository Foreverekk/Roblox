local T1 = Window:NewTab("Main")
local S1 = T1:NewSection("Weapons")

function minigunS()
    loadstring(game:HttpGet(mainRaw.."Scripts/"..game.PlaceId.."-minigun.lua"))()
end

function rocketlauncherS()
    loadstring(game:HttpGet(mainRaw.."Scripts/"..game.PlaceId.."-rocketlauncher.lua"))()
end

S1:NewButton("Minigun", "Will try to give you a weapon (Gamepass)", function()
    minigunS()
end)

S1:NewButton("Rocket Launcher", "Will try to give you a weapon (Gamepass)", function()
    rocketlauncherS()
end)
