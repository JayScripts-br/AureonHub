local Player = game.Players.LocalPlayer
local LocalizationService = game:GetService("LocalizationService")
local result, code = pcall(LocalizationService.GetCountryRegionForPlayerAsync, LocalizationService, Player)
local function Notify(titulo, subtitulo, duracao)
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = titulo,
        Text = subtitulo,
        Duration = duracao
    })
end

if game.PlaceId == 16732694052 then
 if result and code == "BR" then
 Notify("Aureon Hub", "Detectamos que você está no Brasil, então, a versão brasileira foi executada.", 7)
 loadstring(game:HttpGet("https://raw.githubusercontent.com/JayScripts-br/AureonHub/refs/heads/main/Scripts/FischBR.lua"))()
 else
 loadstring(game:HttpGet("https://raw.githubusercontent.com/JayScripts-br/AureonHub/refs/heads/main/Scripts/Fisch.lua"))()
 end
end
