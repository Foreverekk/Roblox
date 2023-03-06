local VirtualInputManager = game:GetService("VirtualInputManager")

VirtualInputManager:SendMouseButtonEvent(0, 10, 0, true, game, 1)
VirtualInputManager:SendMouseButtonEvent(0, 10, 0, false, game, 1)
wait(0.05)
