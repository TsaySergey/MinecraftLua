local x = 10

function megaRefuel()
    refuelNumber = turtle.getFuelLevel()
    if (refuelNumber <= 8)
    then
        turtle.refuel(1)
    else 
        print(refuelNumber, "is enough")
    end
end

function digForward()       
    turtle.dig()
    turtle.forward()
    turtle.digUp()
    turtle.digDown()
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

digForward()
for i = x, 0, -1
do
    for u = x, 0, -1
    do
      -- Refuel
        megaRefuel()
        digForward()
    end

    if(i % 2 == 0)
    then
        digR()
    else 
        digL()
    end

    megaRefuel()
  
end 

-- turn algorithm 

megaRefuel()

turtle.turnRight()

for i = x, 0, -1
do
    turtle.forward()
end