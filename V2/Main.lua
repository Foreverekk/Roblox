-- MAIN

game.StarterGui:SetCore("SendNotification", {
    Title = "Loading..";
    Text = "by Corpa Industries";
    Duration = 1;
})

HubVersion = "2.1.X"

mainRaw = "https://raw.githubusercontent.com/Foreverekk/Roblox/main/V2/"
loadingRaw = loadstring(game:HttpGet(mainRaw.."Loading.lua"))

Library = loadstring(game:HttpGet(mainRaw.."Library.lua", true))()

loadstring(game:HttpGet(mainRaw.."Loading.lua"))()

function bench(func)
    start = tick()
    func()
    a = tick() - start
    return tostring(a)
end

loaded = false

loadstring(game:HttpGet(mainRaw.."Loaded.lua"))()
