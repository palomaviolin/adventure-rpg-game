-- Lua script of map PRUEBONCIAS.
-- This script is executed every time the hero enters this map.

-- Feel free to modify the code below.
-- You can add more events and remove the ones you don't need.

-- See the Solarus Lua API documentation:
-- http://www.solarus-games.org/doc/latest

local map = ...
local game = map:get_game()

-- Event called at initialization time, as soon as this map becomes is loaded.
function map:on_started()

  -- You can initialize the movement and sprites of various
  -- map entities here.
end

-- Event called after the opening transition effect of the map,
-- that is, when the player takes control of the hero.
function map:on_opening_transition_finished()

end

-- sensor_1_escalera sube al muñeco a layer1 para que pueda bajar la escalera.
function sensor_1_escalera:on_activated()

  local 32, 61, layer = hero:get_position()
  hero:set_position(32, 61, layer + 1)
end

-- sensor_2_escalera sube al muñeco a layer1 para que pueda subir la escalera.
function sensor_2_escalera:on_activated()

  local 32, 125, layer = hero:get_position()
  hero:set_position(32, 125, layer + 1)
end

-- sensor_3_escalera baja al muñeco a layer0 para que pueda volver a caminar por el suelo.
function sensor_3_escalera:on_activated()

  local 32, 141, layer = hero:get_position()
  hero:set_position(32, 141, layer - 1)
end

-- sensor_4_escalera baja al muñeco a layer0 para que pueda volver a caminar por el suelo.
function sensor_4_escalera:on_activated()

  local 32, 45, layer = hero:get_position()
  hero:set_position(32, 45, layer - 1)
end
