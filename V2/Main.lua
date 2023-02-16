game.StarterGui:SetCore("SendNotification", {
    Title = "Loading..";
    Text = "by Corpa Industries";
    Duration = 1;
})

mainRaw = "https://raw.githubusercontent.com/Foreverekk/Roblox/main/V2/"
loadingRaw = loadstring(game:HttpGet(mainRaw.."Loading.lua"))

local Library = loadstring(game:HttpGet(mainRaw.."Library.lua", true))()

loadstring(game:HttpGet(mainRaw.."Loading.lua"))()

function bench(func)
    start = tick()
    func()
    a = tick() - start
    return tostring(a)
end

loaded = false

local f = pcall(function()
    game:HttpGet(mainRaw.."Games/"..game.PlaceId..".lua")
end)

local Window = Library:CreateWindow("FRV Hub V2")

local Game = Window:AddFolder("Game")

local Global = Window:AddFolder("Global")
Global:AddLabel({ text = "[Global] Player" })
Global:AddSlider({ text = "WalkSpeed", flag = "sliderWalkSpeed", value = game.Players.LocalPlayer.Character.Humanoid.WalkSpeed, min = 0, max = 500, float = 0.5, callback = function(a) game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = a end })
Global:AddSlider({ text = "JumpPower", flag = "sliderJumpPower", value = game.Players.LocalPlayer.Character.Humanoid.JumpPower, min = 0, max = 1000, float = 0.5, callback = function(a) game.Players.LocalPlayer.Character.Humanoid.JumpPower = a end })
Global:AddList({ text = "Camera Mode", flag = "listCameraMode", value = "Classic", values = {"Classic", "LockFirstPerson"}, callback = function(a)
    if a == "Classic" then
        game:GetService("Players")["LocalPlayer"].CameraMode = Enum.CameraMode.Classic
    elseif a == "LockFirstPerson" then
        game:GetService("Players")["LocalPlayer"].CameraMode = Enum.CameraMode.LockFirstPerson
    end
end })
Global:AddBox({ text = "Display Name", flag = "boxDisplayName", value = game.Players.LocalPlayer.DisplayName, callback = function(a)
    game.Players.LocalPlayer.DisplayName = a
end })

Global:AddLabel({ text = "[Global] Toggles" })
Global:AddButton({ text = "AutoScaling", flag = "buttonAutomaticScalingEnabled", callback = function() 
    if game:GetService("Players")["LocalPlayer"].Character.Humanoid.AutomaticScalingEnabled == true then
        game:GetService("Players")["LocalPlayer"].Character.Humanoid.AutomaticScalingEnabled = false
    else
        game:GetService("Players")["LocalPlayer"].Character.Humanoid.AutomaticScalingEnabled = true
    end

end })
Global:AddButton({ text = "AutoRotate", flag = "buttonAutoRotate", callback = function() 
    if game:GetService("Players")["LocalPlayer"].Character.Humanoid.AutoRotate == true then
        game:GetService("Players")["LocalPlayer"].Character.Humanoid.AutoRotate = false
    else
        game:GetService("Players")["LocalPlayer"].Character.Humanoid.AutoRotate = true
    end

end })
Global:AddButton({ text = "Ragdoll (PlatformStand)", flag = "buttonPlatformStand", callback = function() 
    if game:GetService("Players")["LocalPlayer"].Character.Humanoid.PlatformStand == true then
        game:GetService("Players")["LocalPlayer"].Character.Humanoid.PlatformStand = false
    else
        game:GetService("Players")["LocalPlayer"].Character.Humanoid.PlatformStand = true
    end

end })
Global:AddButton({ text = "Sit", flag = "buttonSit", callback = function() 
    if game:GetService("Players")["LocalPlayer"].Character.Humanoid.Sit == true then
        game:GetService("Players")["LocalPlayer"].Character.Humanoid.Sit = false
    else
        game:GetService("Players")["LocalPlayer"].Character.Humanoid.Sit = true
    end

end })
Global:AddToggle({ text = "Neutral (Team)", flag = "toggleNeutral", state = false, callback = function(a) 
    if a == true then
        game:GetService("Players")["LocalPlayer"].Neutral = true
    else
        game:GetService("Players")["LocalPlayer"].Neutral = false
    end
    
end })
Global:AddToggle({ text = "AutoJump", flag = "toggleAutoJumpEnabled", state = false, callback = function(a) 
    if a == true then
        game:GetService("Players")["LocalPlayer"].AutoJumpEnabled = true
    else
        game:GetService("Players")["LocalPlayer"].AutoJumpEnabled = false
    end

end })

Global:AddLabel({ text = "[Global] Experimental" })
Global:AddSlider({ text = "Hitbox Height", flag = "sliderHipHeight", value = 2.72, min = 2.72, max = 100, float = 0.1, callback = function(a) game.Players.LocalPlayer.Character.Humanoid.HipHeight = a end })

local Settings = Window:AddFolder("Settings")
Settings:AddLabel({ text = "[Settings] Bind" })
Settings:AddBind({ text = "Bind", flag = "bind", key = "MouseButton1", callback = function() print("pressed") end }) -- key can also be Enum.UserInputType.MouseButton1, instead of the name/string
Settings:AddBind({ text = "Bind", flag = "bind", hold = true, key = "E" , callback = function(a) if a then print("let go") else print("holding") end end })
Settings:AddBind({ text = "Toggle UI", key = "PageUp", callback = function() library:Close() end })

local Info = Window:AddFolder("Info")
Info:AddLabel({ text = "[Info] Player" })
Info:AddButton({ text = "Name: "..game.Players.LocalPlayer.Name, flag = "buttonCopy0", callback = function() setclipboard(game.Players.LocalPlayer.Name) end })
Info:AddButton({ text = "ID: "..game.Players.LocalPlayer.UserId, flag = "buttonCopy1", callback = function() setclipboard(game.Players.LocalPlayer.UserId) end })
Info:AddButton({ text = "Age: "..game.Players.LocalPlayer.AccountAge.." days", flag = "buttonCopy2", callback = function() setclipboard(game.Players.LocalPlayer.AccountAge.." days") end })
Info:AddColor({ text = "Color", flag = "color", color = Color3.fromRGB(255, 65, 65), callback = function(a) print(a) end })
Info:AddColor({ text = "Color", flag = "color", color = {1, 0.2, 0.2}, callback = function(a) print(a) end })

local Premium = Window:AddFolder("Premium")

local Credits = Window:AddFolder("Credits")
Credits:AddLabel({ text = "[Scripts] Foreverekk.#0007" })
Credits:AddLabel({ text = "[UI] alixjaffar" })

Library:Init()
 
wait(5)
print("Toggle is currently:", Library.flags["toggle"])
print("Second toggle is currently:", Library.flags["toggle1"])

--[[
if _G.KeyInput == _G.Key or _G.KeyInput == _G.KeyP then
    wait(1)
    if f == true then
        wait(1)
        loadstring(d)()
        loadstring(game:HttpGet(mainRaw.."Library.lua"))()
    
    else
        game.StarterGui:SetCore("SendNotification", {
            Title = "Error!";
            Text = "Probably the wrong game/place";
            Duration = 10;
        })
        wait(1)
        loadstring(game:HttpGet(mainRaw.."Library.lua"))()
    end
else
    loadstring(game:HttpGet(mainRaw.."Games/Key.lua"))()
    loadstring(game:HttpGet(mainRaw.."KeyChange.lua"))()

end
--]]
