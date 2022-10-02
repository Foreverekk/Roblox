KeyLibrary = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
KeyWindow = KeyLibrary.CreateLib("Enter Key | FRV Hub (Badge Collectors!)", "Midnight")
local Key = KeyWindow:NewTab("Unlock")
local K1 = Key:NewSection("discord.gg/RetmyBsNAV")
K1:NewTextBox("Enter key here", "Join Discord for a key", function(c)
    _G.KeyInput = c
    if _G.KeyInput == _G.Key then
        writefile("FRV/key.txt", _G.KeyInput)
        wait(1)
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Foreverekk/Roblox/main/Main.lua"))()
    end
end)
K1:NewButton("Copy Discord invite", "Join Discord for a key", function()
    setclipboard("https://discord.gg/RetmyBsNAV")
end)
local K2 = Key:NewSection("Re-entering key is not needed until it is changed !!")
