-- first we set these variables
local blocksSucceeded = 0
local blocksToMove = 3

-- then we initiate a 'for loop'. The for loop will execute the code in it's body multiple times, from 1 to 'blocksToMove' in this case, which we set to 3.
for attempt = 1, blocksToMove do
  local success, error = turtle.forward()
  if not success then -- what to do if the move failed
    break -- break will stop the 'for loop' from continuing
  else -- what to do if the move succeeded
    blocksSucceeded = blocksSucceeded + 1
  end
end

-- now we're going to print the results to screen.
if blocksToMove == blocksSucceeded then
  print("Sucessfully moved forward by", blocksToMove, "blocks!")
else
  print("Did not move the target of", blocksToMove, ", but moved", blocksSucceeded, "blocks instead!")
end