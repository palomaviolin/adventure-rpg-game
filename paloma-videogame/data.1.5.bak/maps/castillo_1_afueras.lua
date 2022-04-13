-- Lua script of map castillo_1_afueras.
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

local function random_walk(npc)

  local m = sol.movement.create("random_path")
  m:set_speed(32)
  m:start(npc)
end

  -- initialize NPCs
  random_walk(soldado_1)
  random_walk(soldado_2)
  random_walk(soldado_3)
  random_walk(soldado_4)
  random_walk(aldeano_1)
  random_walk(aldeano_2)
  random_walk(aldeano_3)
  random_walk(aldeano_4)

end

function aldeano_1:on_interaction()
    game:start_dialog("castillo_1.aldeanos.aldeano_1")
end

function aldeano_2:on_interaction()
    game:start_dialog("castillo_1.aldeanos.aldeano_2")
end

function aldeano_3:on_interaction()
    game:start_dialog("castillo_1.aldeanos.aldeano_3")
end

function aldeano_4:on_interaction()
    game:start_dialog("castillo_1.aldeanos.aldeano_4")
end

-- Event called after the opening transition effect of the map,
-- that is, when the player takes control of the hero.
function map:on_opening_transition_finished()

end
