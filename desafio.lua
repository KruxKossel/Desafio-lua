--- comando para uso de emoji em windows
os.execute("chcp 65001")
--- limpar tela windows / clear em linux
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
local inteligenceAttribute = 9

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


-- Características
local bodyAppearance = "Pele pálida, possuí um grande nariz com uma verruga."
local clothingAppearance = "Suas vestes são escuras e usa um chapéu preto pontudo."
local placeSpawn = "Pode ser encontrada em cabanas de bruxa nos pântanos."
local threatLevel = 0.50 -- de 0 a 1.25, porcentagem

-- Função que retorna lvl de ameaça ao receber atributo
local function getThreatBar(attribute)

  local fullChar = "❗"
  local emptyChar = "❕"

  local result = ""

  for i = 0, 1, 0.25 do
    if i < attribute then
      result = result .. fullChar
    else
      result = result .. emptyChar
    end
  end
  return result
end

-- Função com informação das poções
local function potionDefine (potion)

  -- Poções
  local weakness = "Poção de Fraqueza: Não causa dano direto, mas enfraquece o poder de ataque do alvo."
  local poison = "Poção de Veneno: Causa dano ao longo do tempo, reduzindo gradualmente a saúde do alvo."
  local demage = "Poção de Dano: Causa dano de magia. No entanto, criaturas mortos-vivos são curadas se atingidas com dano instantâneo."
  local slowness = "Poção de Lentidão: Retarda jogadores e mobs em 60% por segundo correndo."
  local cure = "Poção de Cura: Restaura a saúde. No entanto, causa dano a mobs mortos-vivos."
  local fireResistance = "Poção de Resistência a Fogo: Concede proteção total contra danos relacionados ao calor."
  local agility = "Poção de Agilidade: Aumenta a força dos golpes do personagem."
  local waterBreathing = "Poção de Respiração Aquática: Previne ou atrasa o dano por afogamento."

  if potion == "1" then
     return "\n| " ..weakness
  end

  if potion == "2" then
     return "\n| " ..poison
  end

  if potion == "3" then
     return "\n| " ..demage
  end

  if potion == "4" then
     return "\n| " ..slowness
  end

  if potion == "5" then
     return "\n| " ..cure
  end

  if potion == "6" then
     return "\n| " ..fireResistance
  end

  if potion == "7" then
     return "\n| " ..agility
  end

  if potion == "8" then
     return "\n| " ..waterBreathing
  end
end

repeat
  os.execute("cls")

  -- cartão verso
  print()
  print("|---------------------------------------------------------|")
  print("|                                                         |")
  print("| Nível de ameaça: ".. getThreatBar(threatLevel).."                             |")
  print("|                                                         |")
  print("| CARACTERÍSTICAS:                                        |")
  print("| "..bodyAppearance.."    |")
  print("| "..clothingAppearance.."  |")
  print("|                                                         |")
  print("| ONDE VIVE:                                              |")
  print("| "..placeSpawn.."   |")
  print("|                                                         |")
  print("| POÇÕES ARREMESÁVEIS:                                    |")
  print("| 1- Fraqueza | 2- Veneno | 3- Dano      | 4- Lentidão    |")
  print("|                                                         |")
  print("| POÇÕES DEFENSIVAS:                                      |")
  print("| 5- Cura     | 6- Fogo   | 7- Agilidade | 8- Aquática    |")
  print("|---------------------------------------------------------|")
  print()

  local m
  print("Escolha uma poção para ver o que ela faz (Digite o número): \nOu digite $ para sair: ")
  m = io.read()
  
  print(potionDefine (m))

  n = io.read()
until m == "$"

os.execute("cls")
