if not game.IsLoaded then
   game.Loaded:Wait()
end

repeat wait() until game.Players.LocalPlayer
repeat wait() until game.Players.LocalPlayer.Character

local Valid = false;
local V,IV = pcall(function()
    Script = game:HttpGet(("https://raw.githubusercontent.com/misanthropic2005/AutoExecution/main/Scripts/" .. tostring(game.PlaceId) .. ".lua"))
    
    loadstring(Script)()
    
    Valid = true
end)

if not V and not Valid then return end
if V and Valid then print("Valid game found!") end
