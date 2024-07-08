-- arsenal xit

local Lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/7yhx/kwargs_Ui_Library/main/source.lua"))()

local UI = Lib:Create{
   Theme = "Dark", -- or any other theme
   Size = UDim2.new(0, 555, 0, 400) -- default
}

local Main = UI:Tab{
   Name = "Main"
}

local Divider = Main:Divider{
   Name = "Main shit"
}

local QuitDivider = Main:Divider{
   Name = "Quit"
}
-- Script para Arsenal (Roblox) em Lua

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local TeamColorInimigo = BrickColor.new("Bright red")
local TeamColorMinhaEquipe = BrickColor.new("Bright green")
local FOV = 100 -- Ângulo de visão (em graus)

local function IsInimigo(player)
    return player.Team ~= LocalPlayer.Team
end

local function MarcarInimigo(player)
    local arrow = Instance.new("TextLabel")
    arrow.Text = "→"
    arrow.TextColor3 = Color3.new(1, 1, 1)
    arrow.Size = UDim2.new(0, 20, 0, 20)
    arrow.Position = UDim2.new(0.5, 0, 0.5, 0)
    arrow.Parent = player.Character.Head
end

local function AtualizarMarcadores()
    for _, player in pairs(Players:GetPlayers()) do
        if player ~= LocalPlayer and IsInimigo(player) then
            MarcarInimigo(player)
        end
    end
end

LocalPlayer.Changed:Connect(function(property)
    if property == "Team" then
        AtualizarMarcadores()
    end
end)

AtualizarMarcadores()

-- Para ativar/desativar o script, você pode usar uma tecla ou um botão na GUI
-- Lembre-se de adicionar essa funcionalidade!

print("Script carregado! Inimigos marcados com setas.")
