-- comando para uso de emoji em windows
os.execute("chcp 65001")
-- limpar tela windows / clear em linux
os.execute("cls")

-- criatura
local creatureName = "BRUXA"
local description = "São hostis e atacam jogadores à vista."
local skills = "⚗️  Poções infinitas."
local favoriteFamiliar = "🐈 Gato."

-- atributos
local attackAttribute = 6
local healAttribute = 2
local defenseAttribute = 3
local lifeAttribute = 7
local speedAttribute = 5
local inteligenceAttribute = 10

-- Função para retornar barra de progresso ao receber atributo
local function getProgressBar(attribute)
  local fullChar = "🟪"
  local emptyChar = "⬛"

  local result = ""
  for i = 1, 10, 1 do
    if i <= attribute then
      result = result .. fullChar
    else
      result = result .. emptyChar
    end
  end
  return result
end

-- Cartão frente
print("|------------------------------------------|")
print("|                                          |")
print("| "..creatureName.."                                    |")
print("| "..description.."   |")
print("|                                          |")
print("| Habilidades: " .. skills.."        |")
print("| Familiar favorito: " .. favoriteFamiliar.."              |")
print("|                                          |")
print("| Ataque:       " .. getProgressBar(attackAttribute).."       |")
print("| Defesa:       " .. getProgressBar(defenseAttribute).."       |")
print("| Cura:         " .. getProgressBar(healAttribute).."       |")
print("| Vida:         " .. getProgressBar(lifeAttribute).."       |")
print("| Velocidade:   " .. getProgressBar(speedAttribute).."       |")
print("| Inteligência: " .. getProgressBar(inteligenceAttribute).."       |")
print("|                                          |")
print("|------------------------------------------|")

-- Variável de entrada, para enter
local n

print()
print("Tecle enter para ver o verso")
n = io.read()
os.execute("cls")

-- Características
local bodyAppearance = "Pele pálida, possuí um grande nariz com uma verruga."
local clothingAppearance = "Suas vestes são escuras e usa um chapéu preto pontudo."
local placeSpawn = "Podem ser encontradas em cabanas de bruxa nos pântanos."
local threatLevel = 0.50 -- de 0 a 1, porcentagem


-- Função que retorna lvl de ameaça

local function getThreatBar(attribute)

  local fullChar = "❗"
  local emptyChar = "❕"

  local result = ""

  for i = 0.25, 1, 0.25 do
    if i <= attribute then
      result = result .. fullChar
    else
      result = result .. emptyChar
    end
  end
  return result
end


-- cartão verso
print()
print("|---------------------------------------------------------|")
print("|                                                         |")
print("| Nível de ameaça: ".. getThreatBar(threatLevel).."                               |")
print("|                                                         |")
print("| CARACTERÍSTICAS:                                         |")
print("| "..bodyAppearance.."    |")
print("| "..clothingAppearance.."  |")
print("|                                                         |")
print("| ONDE VIVEM:                                             |")
print("| "..placeSpawn.." |")
print("|                                                         |")
print("|---------------------------------------------------------|")
print()
