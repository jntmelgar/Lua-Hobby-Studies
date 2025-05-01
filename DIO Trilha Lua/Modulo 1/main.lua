local MOSNTER <const> = "Creeper"  -- SCREAMING SNAKE CASE
local health = 20 -- snake case
local maxHealth = 20 -- CamelCase

for i = 0, 10, 1 do
    print(i)  
end



--[[
repeat 
    health = health - 2
    local isHealthFull = health == maxHealth
    local healthPercentage = health / maxHealth * 100
    local isHealthCritical = healthPercentage <= 20
    print("Porcetagem da Vida: ", healthPercentage, "A vida esta critica ? ", isHealthCritical)
until health <= 0 ]]


--[[
while health > 0 do 
    health = health - 2
    local isHealthFull = health == maxHealth
    local healthPercentage = health / maxHealth * 100
    local isHealthCritical = healthPercentage <= 0.25
    print("Porcetagem da Vida: ", healthPercentage, "A vida esta critica ? ", isHealthCritical)
end
]]