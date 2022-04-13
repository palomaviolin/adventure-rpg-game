-- Lua script of map castillo_1_interior_PISO1.
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
  random_walk(caballo_1)
  random_walk(caballo_5)
  random_walk(galeno_ayudante)
  random_walk(aldeana_letrinas)
  random_walk(invernadero_regador)
  random_walk(aldeano_opinador_invernadero)

end

function caballo_1:on_interaction()
    game:start_dialog("castillo_1.soldados.relincho_caballo")
end

function caballo_5:on_interaction()
    game:start_dialog("castillo_1.soldados.relincho_caballo")
end

function aldeana_letrinas:on_interaction()
    game:start_dialog("castillo_1.aldeanos.letrinas_pestazo")
end

function galeno_ayudante:on_interaction()
    game:start_dialog("castillo_1.galeno.galeno_ayudante")
end

function invernadero_regador:on_interaction()
    game:start_dialog("castillo_1.invernadero.barril")
end

function aldeano_opinador_invernadero:on_interaction()
    game:start_dialog("castillo_1.aldeanos.opinion_invernadero")
end
