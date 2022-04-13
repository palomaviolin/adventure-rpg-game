-- Lua script of map arabe_1.



local map = ...
local game = map:get_game()

function map:on_started()

  local movement = sol.movement.create("random_path")
  movement:start(camello_1)
end

function desk:on_interaction()

end
