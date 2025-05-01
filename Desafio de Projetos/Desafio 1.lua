os.execute("chcp 65001")

local name = "Soram"
local level = 5
local maxHP = 4
local atkMin = 7
local atkMax = 9
local atkRate = 1
local defense = 5
local defRate = 9
local attackType = "Melee"  -- Tipo de ataque (ex: Melee, Range, Mágico)
local weakness = "Fogo"  -- Fraqueza do monstro (ex: Fogo, Gelo, etc.)
local location = "Arena de Fênix"  -- Localização onde o monstro pode ser encontrado
local dropItems = {"Armadura de Soram", "Espada do Caos", "Pocao de Vida"}  -- Itens que o monstro pode dropar

-- Função para gerar a barra de progresso
local function getProgressBar(attribute)
    local progress = ""
    for i = 1, 10 do
        if i <= attribute then
            progress = progress .. "█"  -- Caracter para representar a parte preenchida
        else
            progress = progress .. "░"  -- Caracter para representar a parte vazia
        end
    end
    return progress
end

-- Exibe as informações do monstro com barras de progresso
print("==========================================")
print("👹 Nome: " .. name)
print("📋 Detalhes do monstro:")
print("🔢 Nível: " .. getProgressBar(level))  -- Barra de progresso para o nível
print("❤️  HP Máximo: " .. getProgressBar(maxHP))  -- Barra de progresso para o HP
print("⚔️  Dano de Ataque: " .. getProgressBar((atkMin + atkMax) / 2))  -- Barra de progresso para o Dano de Ataque (média)
print("🎯 Taxa de Ataque: " .. getProgressBar(atkRate))  -- Barra de progresso para a Taxa de Ataque
print("🛡️  Defesa: " .. getProgressBar(defense))  -- Barra de progresso para a Defesa
print("🌀 Taxa de Defesa: " .. getProgressBar(defRate))  -- Barra de progresso para a Taxa de Defesa
print("🛡️  Tipo de Ataque: " .. attackType)  -- Tipo de Ataque
print("🔥 Fraqueza: " .. weakness)  -- Fraqueza do monstro
print("📍 Localização: " .. location)  -- Localização do monstro
print("🎁 Itens Dropeados: " .. table.concat(dropItems, ", "))  -- Itens que o monstro pode dropar
print("==========================================")
