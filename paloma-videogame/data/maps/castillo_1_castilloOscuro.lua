-- Lua script of map castillo_1_castilloOscuro.
-- This script is executed every time the hero enters this map.

-- Feel free to modify the code below.
-- You can add more events and remove the ones you don't need.

-- See the Solarus Lua API documentation:
-- http://www.solarus-games.org/doc/latest

local map = ...
local game = map:get_game()

-- Event called at initialization time, as soon as this map becomes is loaded.
function map:on_started()

local function random_walk(npc)

  local m = sol.movement.create("random_path")
  m:set_speed(32)
  m:start(npc)
end

  -- initialize NPCs
  random_walk(soldado_muralla_1)
  random_walk(soldado_muralla_2)

end

function soldado_muralla_1:on_interaction()
    game:start_dialog("castillo_1.soldados.soldado_muralla_1")
end

function soldado_muralla_2:on_interaction()
    game:start_dialog("castillo_1.soldados.soldado_muralla_2")
end

  -- You can initialize the movement and sprites of various
  -- map entities here.

-- Event called after the opening transition effect of the map,
-- that is, when the player takes control of the hero.
function map:on_opening_transition_finished()

end
