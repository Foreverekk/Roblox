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

local func = pcall(function()
    game:HttpGet(mainRaw.."Games/"..game.PlaceId..".lua")
end)

local Window = Library:CreateWindow("FRV Hub V2")

local Game = Window:AddFolder("Game")

local Global = Window:AddFolder("Global")
Global:AddToggle({ text = "Toggle", flag = "toggle", state = false, callback = function(a) print(a) end })
Global:AddToggle({ text = "Toggle1", flag = "toggle1", state = true, callback = function(a) print(a) end })

Global:AddToggle({ text = "Toggle2", flag = "toggle2", state = false, callback = function(a) print(a) end})
Global:AddToggle({ text = "Toggle3", flag = "toggle3", state = true, callback = function(a) print(a) end})

Global:AddList({ text = "List", flag = "list", value = "Value", values = {"Value1", "Value2", "Value3", "Value4"}, callback = function(a) print(a) end })
Global:AddList({ text = "List1", flag = "list1", value = "Value2", values = {"Value1", "Value2", "Value3", "Value4"}, callback = function(a) print(a) end })

Global:AddBox({ text = "Box", flag = "box", value = "Value", callback = function(a) print(a) end })
Global:AddBox({ text = "Box1", flag = "box1", value = "Value", callback = function(a) print(a) end })

Global:AddSlider({ text = "Slider", flag = "slider", value = 100, min = 20, max = 200, float = 0.3, callback = function(a) print(a) end })
Global:AddSlider({ text = "Slider", flag = "slider1", value = 0, min = -50, max = 100, callback = function(a) print(a) end })

Global:AddColor({ text = "Color", flag = "color", color = Color3.fromRGB(255, 65, 65), callback = function(a) print(a) end })
Global:AddColor({ text = "Color", flag = "color", color = {1, 0.2, 0.2}, callback = function(a) print(a) end })

local Settings = Window:AddFolder("Settings")
Settings:AddLabel({ text = "Bind" })
Settings:AddBind({ text = "Bind", flag = "bind", key = "MouseButton1", callback = function() print("pressed") end }) -- key can also be Enum.UserInputType.MouseButton1, instead of the name/string
Settings:AddBind({ text = "Bind", flag = "bind", hold = true, key = "E" , callback = function(a) if a then print("let go") else print("holding") end end })
Settings:AddBind({ text = "Toggle UI", key = Enum.UserInputService.PageUp, callback = function() library:Close() end })

local Info = Window:AddFolder("Info")
Info:AddLabel({ text = "Player" })
Info:AddButton({ text = "Name: "..game.Players.LocalPlayer.Name, flag = "buttonCopy0", callback = function() setclipboard(game.Players.LocalPlayer.Name) end })
Info:AddButton({ text = "ID: "..game.Players.LocalPlayer.UserId, flag = "buttonCopy1", callback = function() setclipboard(game.Players.LocalPlayer.UserId) end })
Info:AddButton({ text = "Age: "..game.Players.LocalPlayer.AccountAge.." days", flag = "buttonCopy2", callback = function() setclipboard(game.Players.LocalPlayer.AccountAge.." days") end })

local Premium = Window:AddFolder("Premium")

local Credits = Window:AddFolder("Credits")
Credits:AddLabel({ text = "Scripts: Foreverekk.#0007" })
Credits:AddLabel({ text = "UI: alixjaffar" })

Library:Init()
 
wait(5)
print("Toggle is currently:", Library.flags["toggle"])
print("Second toggle is currently:", Library.flags["toggle1"])

--[[if _G.KeyInput == _G.Key or _G.KeyInput == _G.KeyP then
    wait(1)
    Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
    Window = Library.CreateLib("Hello! "..game:GetService("Players")["LocalPlayer"].DisplayName.." | FRV Hub", "Midnight")
    if f == true then
        wait(1)
        loadstring(d)()
        loadstring(game:HttpGet(mainRaw.."UI.lua"))()
    
    else
        game.StarterGui:SetCore("SendNotification", {
            Title = "Error!";
            Text = "Probably the wrong game/place";
            Duration = 10;
        })
        wait(1)
        loadstring(game:HttpGet(mainRaw.."UI.lua"))()
    end
else
    loadstring(game:HttpGet(mainRaw.."Games/Key.lua"))()
    loadstring(game:HttpGet(mainRaw.."KeyChange.lua"))()

end
--]]
