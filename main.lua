-- Tutorial 1: Hamster Ball
-- Add an image to the game and move it around using 
-- the arrow keys.
-- compatible with lšve 0.6.0 and up

function love.load()
   hamster = love.graphics.newImage("hamster.png")
   position = {50 ,50}
   obstacleposition = {100, 200}
   xvelocity = 0
   yvelocity = 0
   speed = 10
end

function love.update(dt)
   if love.keyboard.isDown("right") then
      xvelocity = xvelocity + (speed * dt)
   elseif love.keyboard.isDown("left") then
      xvelocity = xvelocity - (speed * dt)
   end

   position[1] = position[1] + xvelocity
   xvelocity = xvelocity - xvelocity * 0.05

   if love.keyboard.isDown("down") then
      yvelocity = yvelocity + (speed * dt)
   elseif love.keyboard.isDown("up") then
      yvelocity = yvelocity - (speed * dt)
   end

   position[2] = position[2] + yvelocity
   yvelocity = yvelocity - yvelocity * 0.05
end

function love.draw()
   love.graphics.draw(hamster, position[1], position[2])
   love.graphics.circle("fill", obstacleposition[1], obstacleposition[2], 50)
end
