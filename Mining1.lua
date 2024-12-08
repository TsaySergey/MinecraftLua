local x = 50

function pooPoo()
    for k = 1, 16, 1
    do
        turtle.select(k)
        if (turtle.getItemDetail() == nil)
        then 
            print("No item to place")

        elseif (turtle.getItemDetail().name == "ironchest:iron_shulker_box_purple") then
            turtle.placeDown()
            for k1 = 1, 16, 1 
            do
                turtle.select(k1)
                if (turtle.getItemDetail() == nil) then
                    print("null")
                elseif (turtle.getItemDetail().name == "minecraft:torch") then 
                    print("Torches don't go in the chest")
                elseif (turtle.getItemDetail().name == "minecraft:coal_block") then 
                    print("Coal blocks don't go in the chest")
                else
                    turtle.dropDown(64)
                end
            end
            turtle.digDown()
            break
        else 
            print("no chest in the inventory")
        end
        
    end 
end

function inventoryOptimization()
    for u = 1, 16, 1
    do 
        for u1 = u, 16, 1
        do 
            if(turtle.getItemCount(u1) > 0) then
                turtle.select(u1)
                turtle.transferTo(u, 64)
            end
        end
    end
end

function placeTorch()
    turtle.select(2)
    if (turtle.getItemDetail() == nil) then
        print("null")
    elseif (turtle.getItemDetail().name == "minecraft:torch") then
        print("torch has been placed")
        turtle.placeDown(torch)
    else 
        print("it is not a torch")
    end
end

function sortingAlgorithm()
    theData = turtle.getItemDetail()
    if (theData == nil) then 
        print("null")
    else
        if (theData.name == "forestry:resources") then
            print(theData.name)
        elseif (theData.name == "forestly:apalite") then
            print(theData.name)
        elseif (theData.name == "mekanism:oreblock") then
            print(theData.name)
        elseif (theData.name == "thermalfoundation:ore") then
            print(theData.name)
        elseif (theData.name == "thermalfoundation:material") then
            print(theData.name)
        elseif (theData.name == "draconicevolution:draconium_dust") then
            print(theData.name)
        elseif (theData.name == "appliedenergistics2:material") then
            print(theData.name)
        elseif (theData.name == "minecraft:gold_ore") then
            print(theData.name)
        elseif (theData.name == "minecraft:coal") then
            print(theData.name)
        elseif (theData.name == "minecraft:dye") then
            print(theData.name)
        elseif (theData.name == "minecraft:iron_ore") then
            print(theData.name)
        elseif (theData.name == "minecraft:emerald") then 
            print(theData.name)
        elseif (theData.name == "minecraft:diamond") then
            print(theData.name)
        elseif (theData.name == "minecraft:gold_ore") then
            print(theData.name)
        elseif (theData.name == "minecraft:coal_block") then
            print(theData.name)
        elseif (theData.name == "bigreactors:oreyellorite") then
            print(theData.name)
        elseif (theData.name == "minecraft:torch") then
            print(theData.name)
        elseif (theData.name == "minecraft:redstone") then 
            print(theData.name)
        elseif (theData.name == "ironchest:iron_shulker_box_purple") then
            print(theData.name)
        else 
            turtle.dropDown()
        end
    end 
end

function megaRefuel()
    refuelNumber = turtle.getFuelLevel()
    if (refuelNumber <= 8)
    then
        turtle.select(1)
        turtle.refuel(1)
    else 
        print(refuelNumber, "is enough")
    end
end

function digForward()
    turtle.dig()       
    if(turtle.forward() == true)
    then
    else
        while(turtle.forward() == false)
        do
            turtle.dig()
            if(turtle.getFuelLevel() == 0)
            then 
                print("Low on fuel")
            else
                print("Obstacle")
            end
        end
    end
    turtle.digUp()
    turtle.digDown()
end

function walkForward()
    turtle.dig()       
    if(turtle.forward() == true)
    then
    else
        while(turtle.forward() == false)
        do
            turtle.dig()
            if(turtle.getFuelLevel() == 0)
            then 
                print("Low on fuel")
            else
                print("Obstacle")
            end
        end
    end
end


function digL()
    digForward()
    turtle.turnLeft()
    digForward()
    turtle.turnLeft()
    digForward()
end

function digR()
    digForward()
    turtle.turnRight()
    digForward()
    turtle.turnRight()
    digForward()
end 
-------------------------------------
megaRefuel()
digForward()
for i = 1, x, 1
do
    
    -- Sorting 
    for i2 = 1, 16, 1 
    do 
        turtle.select(i2)
        sortingAlgorithm()
    end
    inventoryOptimization()
    pooPoo()
    -- Digging cycle
    for i3 = 1, x, 1 
    do
        megaRefuel()
        digForward()
        --Torch placement
        if(i % 6 == 0 or i == 1)
        then
            if(i3 % 6 == 0)
            then
                placeTorch()
            end
        end
    end
    
    -- turn left and right
    if(i % 2 == 0)
    then
        if(i % 6 == 0 or i == 1)
        then 
            placeTorch()
        end
        digR()
        
    else 
        if(i % 6 == 0 or i == 1)
        then 
            placeTorch()
        end
        digL()
    end

    megaRefuel()
  
end 


turtle.turnLeft()
turtle.turnLeft()
walkForward()

if (x % 2 == 0)
then
    turtle.turnLeft()
    megaRefuel()

    for i = 1, x, 1
    do
        walkForward()
        megaRefuel()
    end

else 
    turtle.turnRight()
    for i = 1, x, 1
    do 
        walkForward()
        megaRefuel()
    end 
    turtle.turnRight()
    for i2 = 1, x, 1
    do 
        walkForward()
        megaRefuel()
    end
end 
    
megaRefuel()

