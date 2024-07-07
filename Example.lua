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

-- Configurações
local aimbotAtivado = false
local espAtivado = false
local corInimigos = Color3.new(1, 0, 0) -- Vermelho
local corAmigos = Color3.new(0, 0, 1) -- Azul

-- Função para alternar o aimbot
function alternarAimbot()
    aimbotAtivado = not aimbotAtivado
    print("Aimbot ativado: " .. tostring(aimbotAtivado))
end

-- Função para alternar o ESP
function alternarESP()
    espAtivado = not espAtivado
    print("ESP ativado: " .. tostring(espAtivado))
end

-- Função para desenhar o ESP
function desenharESP(jogador, cor)
    -- Lógica para desenhar o ESP (implemente conforme necessário)
    print("Desenhando ESP para " .. jogador.Name .. " na cor " .. tostring(cor))
end

-- Exemplo de uso
alternarAimbot()
alternarESP()

-- Simulação de detecção de inimigos e amigos
local inimigo = game.Players.LocalPlayer
local amigo = game.Players:GetPlayers()[1]

if aimbotAtivado then
    -- Lógica do aimbot (implemente conforme necessário)
    print("Aimbot mirando em " .. inimigo.Name)
end

if espAtivado then
    desenharESP(inimigo, corInimigos)
    desenharESP(amigo, corAmigos)
end
