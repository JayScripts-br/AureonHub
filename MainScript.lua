local Player = game.Players.LocalPlayer
local LocalizationService = game:GetService("LocalizationService")
local result, code = pcall(LocalizationService.GetCountryRegionForPlayerAsync, LocalizationService, Player)

if game.PlaceId == 16732694052 then
 if result and code == "BR" then
 loadstring(game:HttpGet("https://raw.githubusercontent.com/JayScripts-br/AureonHub/refs/heads/main/Scripts/FischBR.lua"))()
 else
 loadstring(game:HttpGet("https://raw.githubusercontent.com/JayScripts-br/AureonHub/refs/heads/main/Scripts/Fisch.lua"))()
 end
end
