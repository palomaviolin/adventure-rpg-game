-- Lua script of map iglesia_1.
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
  random_walk(monje_1)
  random_walk(monje_2)
  random_walk(monje_3)
  random_walk(monje_comedor)
  random_walk(monje_vestibulo_scriptorium)

end

function monje_1:on_interaction()
    game:start_dialog("iglesia.monjes.dialogo_2")
end

function monje_2:on_interaction()
    game:start_dialog("iglesia.monjes.dialogo_3")
end

function monje_3:on_interaction()
    game:start_dialog("iglesia.monjes.dialogo_4")
end

function monje_comedor:on_interaction()
    game:start_dialog("iglesia.monjes.comedor")
end

function monje_vestibulo_scriptorium:on_interaction()
    game:start_dialog("iglesia.monjes.vestibulo_scriptorium")
end

-- Event called after the opening transition effect of the map,
-- that is, when the player takes control of the hero.
function map:on_opening_transition_finished()

end
