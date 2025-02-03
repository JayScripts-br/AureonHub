local Player = game.Players.LocalPlayer
local LocalizationService = game:GetService("LocalizationService")
local result, code = pcall(LocalizationService.GetCountryRegionForPlayerAsync, LocalizationService, Player)
local function Notify(titulo, subtitulo, duracao)
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = titulo,
        Text = subtitulo,
        Icon = "rbxassetid://114664152093817",
        Duration = duracao
    })
end

if game.PlaceId == 16732694052 then
 if result and code == "BR" then
 Notify("Aureon Hub", "Detectamos que você está no Brasil.", 7)
 loadstring(game:HttpGet("https://raw.githubusercontent.com/JayScripts-br/AureonHub/refs/heads/main/Scripts/FischBR.lua"))()
 else
 loadstring(game:HttpGet("https://raw.githubusercontent.com/JayScripts-br/AureonHub/refs/heads/main/Scripts/Fisch.lua"))()
 end
end
