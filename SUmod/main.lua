--- STEAMODDED HEADER
--- MOD_NAME: Steven Universe Mod
--- MOD_ID: SUMOD
--- MOD_AUTHOR: [Pink Focalors]
--- MOD_DESCRIPTION: Trying to add some Steven Universe themed jokers. Also cotains other mods as dependecies. ExampleMod, JellyJokers, Salt & Panasco, etc.
--- PREFIX: sbeven
--- PRIORITY: -100000
--- BADGE_COLOR: #FF00FF
--- BADGE_TEXT_COLOR: #DC143C

----------------------------------------------
------------MOD CODE -------------------------
-- At the top of your file, so you have access to the Steamodded API

-- main.lua

--- STEAMODDED HEADER
--- …  
function initSteamodded()

    -- ──── 1) Define & register your custom deck ────
    local loc_def = {
      name = "Fusion Deck",
      text = {
        [1] = "Start with 1 random",
        [2] = "Fusion Joker."
      }
    }
    local fusion_deck = SMODS.Deck:new("Fusion Deck", "b_fusion", {}, loc_def)
    fusion_deck.config = { b_fusion = true }
    fusion_deck:register()

    -- ──── 2) Your shop-population hooks go here ────
    SMODS.Event{
      event = "SHOPS_POPULATE_CONSUMABLES",
      id    = "no_consumables",
      func  = function(arg) arg.pool = {} end
    }

    SMODS.Event{
      event = "SHOPS_POPULATE_TAROT",
      id    = "no_tarot_cards",
      func  = function(arg) arg.pool = {} end
    }

    SMODS.Event{
      event = "SHOPS_POPULATE_PLANETS",
      id    = "no_planet_cards",
      func  = function(arg) arg.pool = {} end
    }

    -- ──── 3) Ensure base-game Jokers still appear ────
    SMODS.Event{
      event = "SHOPS_POPULATE_JOKERS",
      id    = "ensure_base_jokers",
      func  = function(arg)
        local seen = {}
        for _, j in ipairs(arg.pool) do seen[j.key] = true end
        for _, j in ipairs(G.jokers.cards) do
          if not (j.ability and j.ability.is_modded) and not seen[j.key] then
            table.insert(arg.pool, j)
          end
        end
      end
    }

    -- ──── 4) On run-start, give the Fusion Joker ────
    SMODS.Event{
      event = "BACKS_APPLY_TO_RUN",
      id    = "fusion_deck_add_fusion_joker",
      func  = function(arg)
        local cfg = arg.effect and arg.effect.config
        if cfg and cfg.b_fusion then
          local pool = {}
          for _, j in ipairs(G.jokers.cards) do
            if j.rarity == "sbeven_Fusion" then
              table.insert(pool, j)
            end
          end
          if #pool > 0 then
            local chosen = pool[math.random(#pool)]
            G.GAME.joker_buffer = G.GAME.joker_buffer + 1
            G.jokers:emplace(chosen)
          else
            print("[Fusion Deck] No jokers found with rarity 'sbeven_Fusion'")
          end
        end
      end
    }

end  -- initSteamodded()

local localize_ref = localize
function localize(args, misc_cat)
    local ret = localize_ref(args, misc_cat)
    -- Remove color codes from info_queue tooltip names
    if args and type(args) == 'table' and args.type == "name_text" then
        if string.len(ret) > 2 and string.sub(ret, string.len(ret) - 1, string.len(ret)) == "{}" then
            ret = string.sub(ret, 1, string.len(ret) - 2)
        end
        if string.sub(ret, 1, 3) == "{C:" then
            local _, _, _, real_name = string.find(ret, "{C:(.*)}(.*)")
            ret = real_name
        end
    end

    return ret
end

SMODS.Rarity{
    key = "Diamond", 
    loc_txt = { name = "Diamond" },
    badge_colour = HEX("FF69B4"),  -- pink background (hot pink)
    badge_text_colour = HEX("333333"),  -- text color
    pools = { ["Joker"] = false },
    default_weight = 0
}

SMODS.Rarity{
    key = "Gem", 
    loc_txt = { name = "Gem" },
    badge_colour = HEX("5dade2"),  -- background color 
    badge_text_colour = HEX("333333"),  -- text color
    pools = { ["Joker"] = true },
    default_weight = 1
}

SMODS.Rarity{
    key = "CGem", 
    loc_txt = { name = "Crystal Gem" },
    badge_colour = HEX("5dade2"),  -- background color 
    badge_text_colour = HEX("333333"),  -- text color
    pools = { ["Joker"] = true },
    default_weight = 1
}

SMODS.Rarity{
    key = "Hidden", 
    loc_txt = { name = "Crystal Gem" },
    badge_colour = HEX("5dade2"),  -- background color 
    badge_text_colour = HEX("333333"),  -- text color
    pools = { ["Joker"] = false },
    default_weight = 0
}

SMODS.Rarity{
    key = "PFusion", 
    loc_txt = { name = "Perfect Fusion" },
    badge_colour = HEX("FFD700"),  -- background color 
    badge_text_colour = HEX("333333"),  -- text color
    pools = { ["Joker"] = false },
    default_weight = 0
}

SMODS.Rarity{
    key = "Fusion", 
    loc_txt = { name = "Fusion" },
    badge_colour = HEX("40E0D0"),  -- background color 
    badge_text_colour = HEX("333333"),  -- text color
    pools = { ["Joker"] = false },
    default_weight = 0
}

SMODS.Rarity{
    key = "UFusion", 
    loc_txt = { name = "Unstable Fusion" },
    badge_colour = HEX("CCFF00"),  -- background color 
    badge_text_colour = HEX("333333"),  -- text color
    pools = { ["Joker"] = false },
    default_weight = 0
}

SMODS.Rarity{
    key = "Monster", 
    loc_txt = { name = "Corrupted" },
    badge_colour = HEX("CCFF00"),  -- background color 
    badge_text_colour = HEX("333333"),  -- text color
    pools = { ["Joker"] = false },
    default_weight = 0
}

SMODS.Rarity{ -- Just for Pale Rose
    key = "Unique", 
    loc_txt = { name = "Unique" },
    badge_colour = HEX("E8A2BE"),  -- background color 
    badge_text_colour = HEX("333333"),  -- text color
    pools = { ["Joker"] = true },
    default_weight = 0.75
}

SMODS.Rarity{
    key = "Human", 
    loc_txt = { name = "Human" },
    badge_colour = HEX("E8A2BE"),  -- background color 
    badge_text_colour = HEX("333333"),  -- text color
    pools = { ["Joker"] = true },
    default_weight = 1
}

SMODS.Atlas{ --- for Padparadscha only atm (she's not even in the game lol)
    key = 'Jokers', --atlas key
    path = 'Jokers.png', --atlas' path in (yourMod)/assets/1x or (yourMod)/assets/2x
    px = 71, --width of one card
    py = 95 -- height of one card
}

 SMODS.Atlas{ -- For corruption
    key = 'Consumables',
    path = 'Consumables.png', --atlas' path in (yourMod)/assets/1x or (yourMod)/assets/2x
    px = 71, --width of one card
    py = 95 -- height of one card
}

SMODS.Atlas{ --- for Stevonnie
    key = "Stevonnie", --atlas key
    path = "Stevonnie.png", --atlas' path in (yourMod)/assets/1x or (yourMod)/assets/2x
    px = 71, --width of one card
    py = 95 -- height of one card
}

SMODS.Atlas{ --- for Lapis
    key = "Lapis", --atlas key
    path = "Lapis.png", --atlas' path in (yourMod)/assets/1x or (yourMod)/assets/2x
    px = 71, --width of one card
    py = 95 -- height of one card
}

SMODS.Atlas{ --- for Bob
    key = "Bob", --atlas key
    path = "Bob.png", --atlas' path in (yourMod)/assets/1x or (yourMod)/assets/2x
    px = 71, --width of one card
    py = 95 -- height of one card
}

FusionJokers.fusions:add_fusion( -- Rose Quartz Fusion
'j_sbeven_pale_rose', --string, component joker's key
nil, --string, name of stat to carry into fusion
false, --boolean, is the carry stat in an "extra" table or not
'j_greedy_joker', -- same as 1, but for the other component joker
nil, -- same
false, -- same
'j_sbeven_rose', --result of fusion 
10 --cost to fuse
)

FusionJokers.fusions:add_fusion( -- Monster Steven Fusion
'j_sbeven_corruption', --string, component joker's key
nil, --string, name of stat to carry into fusion
false, --boolean, is the carry stat in an "extra" table or not
'j_sbeven_steven', -- same as 1, but for the other component joker
nil, -- same
false, -- same
'j_sbeven_monster', --result of fusion 
300 --cost to fuse
)

FusionJokers.fusions:add_fusion( -- Zebra Jasper Fusion
'j_sbeven_corruption', --string, component joker's key
nil, --string, name of stat to carry into fusion
false, --boolean, is the carry stat in an "extra" table or not
'j_sbeven_jasper', -- same as 1, but for the other component joker
nil, -- same
false, -- same
'j_sbeven_zebra', --result of fusion 
300 --cost to fuse
)

FusionJokers.fusions:add_fusion( -- White Diamond Fusion
'j_sbeven_pale_rose', --string, component joker's key
nil, --string, name of stat to carry into fusion
false, --boolean, is the carry stat in an "extra" table or not
'j_sbeven_pink', -- same as 1, but for the other component joker
nil, -- same
false, -- same
'j_sbeven_white', --result of fusion 
125 --cost to fuse
)

FusionJokers.fusions:add_fusion( -- Blue Diamond Fusion
'j_sbeven_lapis', --string, component joker's key
nil, --string, name of stat to carry into fusion
false, --boolean, is the carry stat in an "extra" table or not
'j_sbeven_pale_rose', -- same as 1, but for the other component joker
nil, -- same
false, -- same
'j_sbeven_blue', --result of fusion 
100 --cost to fuse
)

FusionJokers.fusions:add_fusion( -- Yellow Diamond Fusion
'j_sbeven_jasper', --string, component joker's key
nil, --string, name of stat to carry into fusion
false, --boolean, is the carry stat in an "extra" table or not
'j_sbeven_pale_rose', -- same as 1, but for the other component joker
nil, -- same
false, -- same
'j_sbeven_yellow', --result of fusion 
100 --cost to fuse
)

FusionJokers.fusions:add_fusion( -- Mega Pearl Fusion
'j_sbeven_pearl', --string, component joker's key
nil, --string, name of stat to carry into fusion
false, --boolean, is the carry stat in an "extra" table or not
'j_sbeven_volleyball', -- same as 1, but for the other component joker
nil, -- same
false, -- same
'j_sbeven_mega', --result of fusion 
20 --cost to fuse
)

FusionJokers.fusions:add_fusion( -- Stevonnie Fusion
'j_sbeven_steven', --string, component joker's key
nil, --string, name of stat to carry into fusion
false, --boolean, is the carry stat in an "extra" table or not
'j_sbeven_connie', -- same as 1, but for the other component joker
nil, -- same
false, -- same
'j_sbeven_stevonnie', --result of fusion 
20 --cost to fuse
)

FusionJokers.fusions:add_fusion( --Perkeo Fusion
'j_joker', --string, component joker's key
nil, --string, name of stat to carry into fusion
false, --boolean, is the carry stat in an "extra" table or not
'j_sbeven_pale_rose', -- same as 1, but for the other component joker
nil, -- same
false, -- same
'j_perkeo', --result of fusion 
20 --cost to fuse
)

FusionJokers.fusions:add_fusion( -- Healed Lapis Fusion
'j_sbeven_cracked_lapis', --string, component joker's key
nil, --string, name of stat to carry into fusion
false, --boolean, is the carry stat in an "extra" table or not
'j_sbeven_pale_rose', -- same as 1, but for the other component joker
nil, -- same
false, -- same
'j_sbeven_lapis', --result of fusion 
20 --cost to fuse
)

FusionJokers.fusions:add_fusion( -- Aventurine Fusion
'j_sbeven_lapis', --string, component joker's key
nil, --string, name of stat to carry into fusion
false, --boolean, is the carry stat in an "extra" table or not
'j_sbeven_peridot', -- same as 1, but for the other component joker
nil, -- same
false, -- same
'j_sbeven_aventurine', --result of fusion 
20 --cost to fuse
)

FusionJokers.fusions:add_fusion( -- Pink Diamond Fusion 1
'j_sbeven_rose', --string, component joker's key
nil, --string, name of stat to carry into fusion
false, --boolean, is the carry stat in an "extra" table or not
'j_sbeven_pale_rose', -- same as 1, but for the other component joker
nil, -- same
false, -- same
'j_sbeven_pink', --result of fusion 
20 --cost to fuse
)

FusionJokers.fusions:add_fusion( -- Pink Diamond Fusion 2
'j_sbeven_steven', --string, component joker's key
nil, --string, name of stat to carry into fusion
false, --boolean, is the carry stat in an "extra" table or not
'j_sbeven_rose', -- same as 1, but for the other component joker
nil, -- same
false, -- same
'j_sbeven_pink', --result of fusion 
20 --cost to fuse
)

FusionJokers.fusions:add_fusion( -- Pink Diamond Fusion 3
'j_sbeven_steven', --string, component joker's key
nil, --string, name of stat to carry into fusion
false, --boolean, is the carry stat in an "extra" table or not
'j_sbeven_pale_rose', -- same as 1, but for the other component joker
nil, -- same
false, -- same
'j_sbeven_pink', --result of fusion 
20 --cost to fuse
)

FusionJokers.fusions:add_fusion( -- Pink Diamond Fusion 4
'j_sbeven_volleyball', --string, component joker's key
nil, --string, name of stat to carry into fusion
false, --boolean, is the carry stat in an "extra" table or not
'j_sbeven_pale_rose', -- same as 1, but for the other component joker
nil, -- same
false, -- same
'j_sbeven_pink', --result of fusion 
20 --cost to fuse
)

FusionJokers.fusions:add_fusion( -- Malachite Fusion
'j_sbeven_lapis', --string, component joker's key
nil, --string, name of stat to carry into fusion
false, --boolean, is the carry stat in an "extra" table or not
'j_sbeven_jasper', -- same as 1, but for the other component joker
nil, -- same
false, -- same
'j_sbeven_malachite', --result of fusion 
20 --cost to fuse
)

-- Fusions for Obsidian

FusionJokers.fusions:add_fusion( -- Obisidian Fusion 1 (Alexandrite & Steven)
'j_sbeven_alex', --string, component joker's key
nil, --string, name of stat to carry into fusion
false, --boolean, is the carry stat in an "extra" table or not
'j_sbeven_steven', -- same as 1, but for the other component joker
nil, -- same
false, -- same
'j_sbeven_obsidian', --result of fusion 
150 --cost to fuse
)

FusionJokers.fusions:add_fusion( -- Obsidian Fusion 2 (Alexandrite & Rose)
'j_sbeven_alex', --string, component joker's key
nil, --string, name of stat to carry into fusion
false, --boolean, is the carry stat in an "extra" table or not
'j_sbeven_rose', -- same as 1, but for the other component joker
nil, -- same
false, -- same
'j_sbeven_obsidian', --result of fusion 
150 --cost to fuse
)

FusionJokers.fusions:add_fusion( -- Obsidian Fusion 3 (Opal & Sunstone)
'j_sbeven_opal', --string, component joker's key
nil, --string, name of stat to carry into fusion
false, --boolean, is the carry stat in an "extra" table or not
'j_sbeven_sunstone', -- same as 1, but for the other component joker
nil, -- same
false, -- same
'j_sbeven_obsidian', --result of fusion 
150 --cost to fuse
)

FusionJokers.fusions:add_fusion( -- Obsidian Fusion 4 (Rainbow & Sugilite)
'j_sbeven_rainbow', --string, component joker's key
nil, --string, name of stat to carry into fusion
false, --boolean, is the carry stat in an "extra" table or not
'j_sbeven_sugilite', -- same as 1, but for the other component joker
nil, -- same
false, -- same
'j_sbeven_obsidian', --result of fusion 
150 --cost to fuse
)

FusionJokers.fusions:add_fusion( -- Obsidian Fusion 5 (Rainbow 2.0 & Sugilite)
'j_sbeven_rainbow2', --string, component joker's key
nil, --string, name of stat to carry into fusion
false, --boolean, is the carry stat in an "extra" table or not
'j_sbeven_sugilite', -- same as 1, but for the other component joker
nil, -- same
false, -- same
'j_sbeven_obsidian', --result of fusion 
150 --cost to fuse
)

FusionJokers.fusions:add_fusion( -- Obsidian Fusion 6 (Sardonyx & Smokey)
'j_sbeven_smokey', --string, component joker's key
nil, --string, name of stat to carry into fusion
false, --boolean, is the carry stat in an "extra" table or not
'j_sbeven_sardonyx, ', -- same as 1, but for the other component joker
nil, -- same
false, -- same
'j_sbeven_obsidian', --result of fusion 
150 --cost to fuse
)

FusionJokers.fusions:add_fusion( -- Obsidian Fusion 7 (Stevonnie & Alexandrite)
'j_sbeven_stevonnie', --string, component joker's key
nil, --string, name of stat to carry into fusion
false, --boolean, is the carry stat in an "extra" table or not
'j_sbeven_alex', -- same as 1, but for the other component joker
nil, -- same
false, -- same
'j_sbeven_obsidian', --result of fusion 
150 --cost to fuse
)

FusionJokers.fusions:add_fusion( -- Opal Fusion
'j_sbeven_pearl', --string, component joker's key
nil, --string, name of stat to carry into fusion
false, --boolean, is the carry stat in an "extra" table or not
'j_sbeven_amethyst', -- same as 1, but for the other component joker
nil, -- same
false, -- same
'j_sbeven_opal', --result of fusion 
20 --cost to fuse
)

FusionJokers.fusions:add_fusion( -- Garnet Fusion
'j_sbeven_ruby', --string, component joker's key
nil, --string, name of stat to carry into fusion
false, --boolean, is the carry stat in an "extra" table or not
'j_sbeven_sapphire', -- same as 1, but for the other component joker
nil, -- same
false, -- same
'j_sbeven_garnet', --result of fusion 
20 --cost to fuse
)

FusionJokers.fusions:add_fusion( -- Rhodonite Fusion
'j_sbeven_ruby', --string, component joker's key
nil, --string, name of stat to carry into fusion
false, --boolean, is the carry stat in an "extra" table or not
'j_sbeven_pearl', -- same as 1, but for the other component joker
nil, -- same
false, -- same
'j_sbeven_rhodonite', --result of fusion 
20 --cost to fuse
)

FusionJokers.fusions:add_fusion( -- Rhodonite Fusion
'j_sbeven_ruby', --string, component joker's key
nil, --string, name of stat to carry into fusion
false, --boolean, is the carry stat in an "extra" table or not
'j_sbeven_volleyball', -- same as 1, but for the other component joker
nil, -- same
false, -- same
'j_sbeven_rhodonite', --result of fusion 
20 --cost to fuse
)

FusionJokers.fusions:add_fusion( -- Alexandrite Fusion (Sugilite & Pearl)
'j_sbeven_sugilite', --string, component joker's key
nil, --string, name of stat to carry into fusion
false, --boolean, is the carry stat in an "extra" table or not
'j_sbeven_pearl', -- same as 1, but for the other component joker
nil, -- same
false, -- same
'j_sbeven_alex', --result of fusion 
30 --cost to fuse
)

FusionJokers.fusions:add_fusion( -- Alexandrite Fusion 2 (Sardonyx & Amethyst)
'j_sbeven_sardonyx', --string, component joker's key
nil, --string, name of stat to carry into fusion
false, --boolean, is the carry stat in an "extra" table or not
'j_sbeven_amethyst', -- same as 1, but for the other component joker
nil, -- same
false, -- same
'j_sbeven_alex', --result of fusion 
30 --cost to fuse
)

FusionJokers.fusions:add_fusion( -- Alexandrite Fusion 3 (Opal & Garnet)
'j_sbeven_opal', --string, component joker's key
nil, --string, name of stat to carry into fusion
false, --boolean, is the carry stat in an "extra" table or not
'j_sbeven_garnet', -- same as 1, but for the other component joker
nil, -- same
false, -- same
'j_sbeven_alex', --result of fusion 
30 --cost to fuse
)

FusionJokers.fusions:add_fusion( -- Sardonyx Fusion 1 (Rhodonite & Sapphire)
'j_sbeven_rhodonite', --string, component joker's key
nil, --string, name of stat to carry into fusion
false, --boolean, is the carry stat in an "extra" table or not
'j_sbeven_sapphire', -- same as 1, but for the other component joker
nil, -- same
false, -- same
'j_sbeven_sardonyx', --result of fusion 
20 --cost to fuse
)

FusionJokers.fusions:add_fusion( -- Sardonyx Fusion 2 (Garnet & Pearl)
'j_sbeven_garnet', --string, component joker's key
nil, --string, name of stat to carry into fusion
false, --boolean, is the carry stat in an "extra" table or not
'j_sbeven_pearl', -- same as 1, but for the other component joker
nil, -- same
false, -- same
'j_sbeven_sardonyx', --result of fusion 
20 --cost to fuse
)

--FusionJokers.fusions:add_fusion( -- Sardonyx Fusion 3 (Ruby + Fusion of Pearl & Sapphire)
--[['j_sbeven_ruby', --string, component joker's key
nil, --string, name of stat to carry into fusion
false, --boolean, is the carry stat in an "extra" table or not
'j_sbeven_larimar', -- same as 1, but for the other component joker
nil, -- same
false, -- same
'j_sbeven_sardonyx', --result of fusion 
20 --cost to fuse
)]]

--FusionJokers.fusions:add_fusion( -- Larimar (Pearl & Sapphire)
--[['j_sbeven_sapphire', --string, component joker's key
nil, --string, name of stat to carry into fusion
false, --boolean, is the carry stat in an "extra" table or not
'j_sbeven_pearl', -- same as 1, but for the other component joker
nil, -- same
false, -- same
'j_sbeven_larimar', --result of fusion 
20 --cost to fuse
)]]

FusionJokers.fusions:add_fusion( -- Sugilite Fusion 1 (Garnet & Amethyst)
'j_sbeven_garnet', --string, component joker's key
nil, --string, name of stat to carry into fusion
false, --boolean, is the carry stat in an "extra" table or not
'j_sbeven_amethyst', -- same as 1, but for the other component joker
nil, -- same
false, -- same
'j_sbeven_sugilite', --result of fusion 
20 --cost to fuse
)

FusionJokers.fusions:add_fusion( -- Rainbow Quartz Fusion (Rose & Pearl)
'j_sbeven_rose', --string, component joker's key
nil, --string, name of stat to carry into fusion
false, --boolean, is the carry stat in an "extra" table or not
'j_sbeven_pearl', -- same as 1, but for the other component joker
nil, -- same
false, -- same
'j_sbeven_rainbow', --result of fusion 
20 --cost to fuse
)

FusionJokers.fusions:add_fusion( -- Rainbow Quartz Fusion (Rose & Volleyball)
'j_sbeven_rose', --string, component joker's key
nil, --string, name of stat to carry into fusion
false, --boolean, is the carry stat in an "extra" table or not
'j_sbeven_volleyball', -- same as 1, but for the other component joker
nil, -- same
false, -- same
'j_sbeven_rainbow', --result of fusion 
20 --cost to fuse
)

FusionJokers.fusions:add_fusion( -- Rainbow Quartz 2.0 Fusion (Steven & Pearl)
'j_sbeven_steven', --string, component joker's key
nil, --string, name of stat to carry into fusion
false, --boolean, is the carry stat in an "extra" table or not
'j_sbeven_pearl', -- same as 1, but for the other component joker
nil, -- same
false, -- same
'j_sbeven_rainbow2', --result of fusion 
20 --cost to fuse
)

FusionJokers.fusions:add_fusion( -- Rainbow Quartz 2.0 Fusion (Steven & Pearl)
'j_sbeven_steven', --string, component joker's key
nil, --string, name of stat to carry into fusion
false, --boolean, is the carry stat in an "extra" table or not
'j_sbeven_volleyball', -- same as 1, but for the other component joker
nil, -- same
false, -- same
'j_sbeven_rainbow2', --result of fusion 
20 --cost to fuse
)

FusionJokers.fusions:add_fusion( -- Smokey Quartz Fusion (Amethyst & Steven)
'j_sbeven_amethyst', --string, component joker's key
nil, --string, name of stat to carry into fusion
false, --boolean, is the carry stat in an "extra" table or not
'j_sbeven_steven', -- same as 1, but for the other component joker
nil, -- same
false, -- same
'j_sbeven_smokey', --result of fusion 
20 --cost to fuse
)

FusionJokers.fusions:add_fusion( -- Sunstone Fusion (Garnet & Steven)
'j_sbeven_garnet', --string, component joker's key
nil, --string, name of stat to carry into fusion
false, --boolean, is the carry stat in an "extra" table or not
'j_sbeven_steven', -- same as 1, but for the other component joker
nil, -- same
false, -- same
'j_sbeven_sunstone', --result of fusion 
20 --cost to fuse
)

FusionJokers.fusions:add_fusion( -- Sunstone Fusion (Garnet & Stevonnie)
'j_sbeven_garnet', --string, component joker's key
nil, --string, name of stat to carry into fusion
false, --boolean, is the carry stat in an "extra" table or not
'j_sbeven_stevonnie', -- same as 1, but for the other component joker
nil, -- same
false, -- same
'j_sbeven_sunstone', --result of fusion 
20 --cost to fuse
)

SMODS.Joker{ -- White Diamond
    key = 'white', --joker key
    loc_txt = { -- local text
        name = '{C:edition,s:1.75}White Diamond{}',
        text = {
          'Jokers with {C:edition}editions{}',
          'each give {X:mult,C:white}X#1#{} Mult.',
          'When {C:attention}Boss Blind{} is defeated,',
          'a random {C:attention}Joker{} without an {C:attention}edition{} becomes {C:dark_edition}negative{}.',
          '{C:inactive,C:edition,s:0.8}After all, I am every color of the light.{}',
          '{C:inactive,C:edition,s:0.8}But you\'re a part of me...{}',
          '{C:inactive,C:edition,s:0.8}The part I always have to repress.{}',
          '{C:inactive,s:0.7,C:legendary}- From \"Change Your Mind\"{}'
        },
        --[[unlock = {
            'Be {C:legendary}cool{}',
        }]]
    },
    atlas = 'Jokers', --atlas' key
    rarity = 'sbeven_Diamond', --rarity: 1 = Common, 2 = Uncommon, 3 = Rare, 4 = Legendary
    -- soul_pos = { x = 0, y = 2 },
    cost = 100, --cost
    unlocked = true, --where it is unlocked or not: if true, 
    discovered = true, --whether or not it starts discovered
    blueprint_compat = true, --can it be blueprinted/brainstormed/other
    eternal_compat = true, --can it be eternal
    perishable_compat = false, --can it be perishable
    pos = {x = 2, y = 3}, --position in atlas, starts at 0, scales by the atlas' card size (px and py): {x = 1, y = 0} would mean the sprite is 71 pixels to the right
    config = { 
      extra = {
        Xmult = 2.5 --configurable value
      }
    },
    loc_vars = function(self,info_queue,center)
        return {vars = {center.ability.extra.Xmult}} --#1# is replaced with card.ability.extra.Xmult

    end,
    check_for_unlock = function(self, args)
        if args.type == 'derek_loves_you' then --not a real type, just a joke
            unlock_card(self)
        end
        unlock_card(self) --unlocks the card if it isnt unlocked
    end,
    calculate = function(self,card,context)
        if context.other_joker and context.other_joker.edition then
		 if context.other_joker.edition.key == 'e_polychrome' or context.other_joker.edition.key == 'e_holo' or context.other_joker.edition.key == 'e_foil' or context.other_joker.edition.key == 'e_negative' then
			return {
				Xmult_mod = card.ability.extra.Xmult,
				card = other_joker,
				message = 'Hello, Starlight.',
				colour = G.C.EDITION,
				card:juice_up(0.5,0.5)
				}
				end
        end
        if context.end_of_round 
        and not context.repetition 
        and not context.individual 
        and not context.game_over then
            local blind = G.GAME.blind
            if blind.boss then
                local pool = {}
                for _, j in ipairs(G.jokers.cards) do
                    if not j.edition then
                        table.insert(pool, j)
                    end
                end
                if #pool > 0 then
                    local choice = pseudorandom_element(pool)
                    choice:set_edition('e_negative', true)
                    choice:juice_up(0.5, 0.5)
                end
            end
        end
    end,
    in_pool = function(self, current_shop_jokers, shop_level)
        -- Prevent this Joker from appearing in the shop if the player already owns one
        for _, owned in ipairs(G.jokers.cards) do
            if owned.key == self.key then
                return false
            end
        end
        return true
    end,    
    -- Add the "UNIVERSE" badge at the bottom of the card
    set_badges = function(self, card, badges)
        badges[#badges + 1] = create_badge(
            "Steven Universe",          -- Text displayed on the badge
            G.C.PURPLE,          -- Badge background color
            G.C.EDITION,           -- Text color
            1                    -- Scaling factor (default size)
        )
    end,
}


SMODS.Joker{ --- Blue Diamond
    key = 'blue', --joker key
    loc_txt = { -- local text
        name = '{C:clubs,s:1.4}Blue Diamond{}', --name of joker
        text = {
          'Each played {C:attention}Ace{} gives',
          '{X:mult,C:white}X#1#{} Mult when scored',
          '{C:inactive,C:clubs,s:0.8}It was a{} {C:inactive,C:clubs,s:1}SWORD!{}',
          '{C:inactive,s:0.7,C:legendary}- From \"The Trial\"{}'
        },
        --[[unlock = {
            'Be {C:legendary}cool{}',
        }]]
    },
    atlas = 'Jokers', --atlas' key
    rarity = 'sbeven_Diamond', --rarity: 1 = Common, 2 = Uncommon, 3 = Rare, 4 = Legendary
    --soul_pos = { x = 0, y = 0 },
    cost = 50, --cost
    unlocked = true, --where it is unlocked or not: if true, 
    discovered = true, --whether or not it starts discovered
    blueprint_compat = true, --can it be blueprinted/brainstormed/other
    eternal_compat = true, --can it be eternal
    perishable_compat = true, --can it be perishable
    pos = {x = 3, y = 0}, --position in atlas, starts at 0, scales by the atlas' card size (px and py): {x = 1, y = 0} would mean the sprite is 71 pixels to the right
    config = { 
      extra = {
        Xmult = 14 --configurable value
      }
    },
    loc_vars = function(self,info_queue,center)
        return {vars = {center.ability.extra.Xmult}} --#1# is replaced with card.ability.extra.Xmult
    end,
    check_for_unlock = function(self, args)
        if args.type == 'derek_loves_you' then --not a real type, just a joke
            unlock_card(self)
        end
        unlock_card(self) --unlocks the card if it isnt unlocked
    end,
    calculate = function(self,card,context)
        if context.individual and context.cardarea == G.play then
            if context.other_card:get_id() == 14 then
			return {
				Xmult_mod = card.ability.extra.Xmult,
				card = card,
				message = 'This is Pink\'s world!',
				}
			end
        end

        
    end,
    in_pool = function(self, current_shop_jokers, shop_level)
        -- Prevent this Joker from appearing in the shop if the player already owns one
        for _, owned in ipairs(G.jokers.cards) do
            if owned.key == self.key then
                return false
            end
        end
        return true
    end,    
    -- Add the "UNIVERSE" badge at the bottom of the card
    set_badges = function(self, card, badges)
        badges[#badges + 1] = create_badge(
            "Steven Universe",          -- Text displayed on the badge
            G.C.PURPLE,          -- Badge background color
            G.C.EDITION,           -- Text color
            1                    -- Scaling factor (default size)
        )
    end,
}


SMODS.Joker{ -- Yellow Diamond
    key = 'yellow', --joker key
    loc_txt = { -- local text
        collection = 'Universe', -- collection name
        name = '{C:gold,s:1.4}Yellow Diamond{}', --name of joker
        text = {
          'Played {C:attention}Aces{} are {C:diamonds}retriggered{}',
          '{C:dark_edition}#1#{} times',
          '{C:inactive,C:gold,s:0.8}What\'s the use of feeling,{} {C:clubs,s:1}Blue?{}',
          '{C:inactive,s:0.7,C:legendary}- From \"That Will Be All\"{}'
        },
        --[[unlock = {
            'Be {C:legendary}cool{}',
        }]]
    },
    atlas = 'Jokers', --atlas' key
    rarity = 'sbeven_Diamond', --rarity: 1 = Common, 2 = Uncommon, 3 = Rare, 4 = Legendary
    --soul_pos = { x = 0, y = 0 },
    cost = 50, --cost
    unlocked = true, --where it is unlocked or not: if true, 
    discovered = true, --whether or not it starts discovered
    blueprint_compat = true, --can it be blueprinted/brainstormed/other
    eternal_compat = true, --can it be eternal
    perishable_compat = true, --can it be perishable
    pos = {x = 3, y = 3}, --position in atlas, starts at 0, scales by the atlas' card size (px and py): {x = 1, y = 0} would mean the sprite is 71 pixels to the right
    config = { 
      extra = {
        repetitions = 14 --configurable value
      }
    },
    loc_vars = function(self,info_queue,center)
        return {vars = {center.ability.extra.repetitions}} --#1# is replaced with card.ability.extra.Xmult
    end,
    check_for_unlock = function(self, args)
        if args.type == 'derek_loves_you' then --not a real type, just a joke
            unlock_card(self)
        end
        unlock_card(self) --unlocks the card if it isnt unlocked
    end,
    calculate = function(self,card,context)
        if context.cardarea == G.play and context.repetition and not context.repetition_only then
			if (context.other_card:get_id() == 14) then
			return {
				message = 'That Will Be All!',
				repetitions = card.ability.extra.repetitions,
				card = context.other_card
				}
				end
				end
    end,
    in_pool = function(self, current_shop_jokers, shop_level)
        -- Prevent this Joker from appearing in the shop if the player already owns one
        for _, owned in ipairs(G.jokers.cards) do
            if owned.key == self.key then
                return false
            end
        end
        return true
    end,    
    -- Add the "UNIVERSE" badge at the bottom of the card
    set_badges = function(self, card, badges)
        badges[#badges + 1] = create_badge(
            "Steven Universe",          -- Text displayed on the badge
            G.C.PURPLE,          -- Badge background color
            G.C.EDITION,           -- Text color
            1                    -- Scaling factor (default size)
        )
    end,
}


SMODS.Joker{ -- Pink Diamond
    key = 'pink', --joker key
    loc_txt = { -- local text
        name = '{C:hearts,s:1.25}Pink Diamond{}', --name of joker
        text = {
            '{C:dark_edition}Retrigger{} all {C:attention}played cards{} {C:red}#1#{} times.', 
            '{C:inactive,C:hearts,s:0.8}No one can ever find out we did this. I never want to look back.{}',
            '{C:inactive,C:hearts,s:0.8}So, for my last order to you as a Diamond, please, let\'s never speak of this again.{}',
            '{C:inactive,C:hearts,s:0.8}No one can know.{}',
            '{C:inactive,s:0.7,C:legendary}- From \"A Single Pale Rose\"{}'
        } 
         --[[unlock = {
                'Be {C:legendary}cool{}',
          }]]
    },
    atlas = 'Jokers', --atlas' key
    rarity = 'sbeven_Diamond', --rarity: 1 = Common, 2 = Uncommon, 3 = Rare, 4 = Legendary
    --soul_pos = { x = 0, y = 0 },
    cost = 50, --cost
    unlocked = true, --where it is unlocked or not: if true,
    discovered = true, --whether or not it starts discovered
    blueprint_compat = true, --can it be blueprinted/brainstormed/other
    eternal_compat = true, --can it be eternal
    perishable_compat = false, --can it be perishable
    pos = {x = 7, y = 1}, --position in atlas, starts at 0, scales by the atlas' card size (px and py): {x = 1, y = 0} would mean the sprite is 71 pixels to the right
    config = { 
      extra = {
        repetitions = 3 --configurable value
      }
    },
    loc_vars = function(self,info_queue,center)
        return {vars = {center.ability.extra.repetitions}} --#1# is replaced with card.ability.extra.Xmult
    end,
    check_for_unlock = function(self, args)
        if args.type == 'derek_loves_you' then --not a real type, just a joke
            unlock_card(self)
        end
        unlock_card(self) --unlocks the card if it isnt unlocked
    end,
    calculate = function(self,card,context)
        if context.cardarea == G.play and context.repetition and not context.repetition_only then
            return {
                message = 'Again, Pearl!',
                repetitions = card.ability.extra.repetitions,
                card = context.other_card
            }
        end
    end,
    in_pool = function(self, current_shop_jokers, shop_level)
        -- Prevent this Joker from appearing in the shop if the player already owns one
        for _, owned in ipairs(G.jokers.cards) do
            if owned.key == self.key then
                return false
            end
        end
        return true
    end,    
    -- Add the "UNIVERSE" badge at the bottom of the card
    set_badges = function(self, card, badges)
        badges[#badges + 1] = create_badge(
            "Steven Universe",          -- Text displayed on the badge
            G.C.PURPLE,          -- Badge background color
            G.C.EDITION,           -- Text color
            1                    -- Scaling factor (default size)
        )
    end,
}


SMODS.Joker{ -- Rose Quartz
    key = 'rose', --joker key
    loc_txt = {
        name = '{C:hearts}Rose Quartz{}',
        text = {
            'Playing cards of {C:diamonds}Diamonds{} suit',
            'each give {X:mult,C:white}X1.75{} Mult and {X:chips,C:white}X1.25{} Chips when scored.',
            '{C:attention}Leader of the Crystal Gems.{}',
            '{C:hearts,s:0.8}When a Gem is made, it\'s for a reason.{}',
            '{C:hearts,s:0.8}They burst out of the ground already knowing what they\'re supposed to be, and then...{}',
            '{C:hearts,s:0.8}That\'s what they are.{}',
            '{C:hearts,s:0.8}Forever. But you, you\'re supposed to change.{}',
            '{C:hearts,s:0.8}You\'re never the same even moment to moment.{}',
            '{C:hearts,s:0.8}You\'re allowed and expected to invent who you are.{}',
            '{C:hearts,s:0.8}What an incredible power, the ability to \"grow up.\"{}',
            '{C:legendary,s:0.7}- From \"Greg the Babysitter\"{}'
        }
    },
    atlas = 'Jokers', --atlas' key
    rarity = 'sbeven_CGem',
    cost = 10,
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = false,
    pos = {x = 1, y = 2}, --position in atlas, starts at 0, scales by the atlas' card size (px and py): {x = 1, y = 0} would mean the sprite is 71 pixels to the right

    calculate = function(self, card, context)
        -- only run on individual card scoring passes
        if context.individual and context.cardarea == G.play then
            local scored = context.other_card
            local suit = scored.base.suit
            if suit == 'Diamonds' then
                return {
                    x_mult  = 1.75,
                    x_chips  = 1.25,
                    message = 'We are the Crystal Gems!',
                    colour  = G.C.MULT
                }
            end
        end
    end,
    
    in_pool = function(self, current_shop_jokers, shop_level)
        -- Prevent this Joker from appearing in the shop if the player already owns one
        for _, owned in ipairs(G.jokers.cards) do
            if owned.key == self.key then
                return false
            end
        end
        return true
    end,    

    -- Add the "UNIVERSE" badge at the bottom of the card
    set_badges = function(self, card, badges)
        badges[#badges + 1] = create_badge(
            "Steven Universe",          -- Text displayed on the badge
            G.C.PURPLE,          -- Badge background color
            G.C.EDITION,           -- Text color
            1                    -- Scaling factor (default size)
        )
    end,
}


SMODS.Joker{ -- Steven Universe
    key = 'steven', --joker key
    loc_txt = {
        name = '{C:hearts}Steven Universe{}',
        text = {
            'Playing cards of {C:hearts}Hearts{} or {C:diamonds}Diamonds{} suit',
            'each give {X:mult,C:white}X1.25{} Mult when scored.',
            '{C:hearts,s:0.8}Life and Death and Love and Birth,{}',
            '{C:hearts,s:0.8}and Peace and War on the planet Earth.{}',
            '{C:legendary,s:0.7}- From \"It Could\'ve Been Great\"{}'
        }
    },
    atlas = 'Jokers', --atlas' key
    rarity = 'sbeven_CGem',
    cost = 8,
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = false,
    pos = {x = 7, y = 2}, --position in atlas, starts at 0, scales by the atlas' card size (px and py): {x = 1, y = 0} would mean the sprite is 71 pixels to the right

    calculate = function(self, card, context)
        -- only run on individual card scoring passes
        if context.individual and context.cardarea == G.play then
            local scored = context.other_card
            local suit = scored.base.suit
            if suit == 'Diamonds' or suit == 'Hearts' then
                return {
                    x_mult  = 1.25,
                    message = 'Happily Ever After!',
                    colour  = G.C.MULT
                }
            end
        end
    end,
    
    in_pool = function(self, current_shop_jokers, shop_level)
        -- Prevent this Joker from appearing in the shop if the player already owns one
        for _, owned in ipairs(G.jokers.cards) do
            if owned.key == self.key then
                return false
            end
        end
        return true
    end,
    
    -- Add the "UNIVERSE" badge at the bottom of the card
    set_badges = function(self, card, badges)
        badges[#badges + 1] = create_badge(
            "Steven Universe",          -- Text displayed on the badge
            G.C.PURPLE,          -- Badge background color
            G.C.EDITION,           -- Text color
            1                    -- Scaling factor (default size)
        )
    end,
}


SMODS.Joker{ -- Connie Maheswaran
    key = 'connie', --joker key
    loc_txt = {
        name = '{C:legendary}Connie Maheswaran{}',
        text = {
            'Playing cards of {C:spades}Spades{} or {C:clubs}Clubs{} suit',
            'each give {X:chips,C:white}X1.5{} Chips when scored.',
            '{s:0.8,C:enhanced}I want to,{} {s:0.8,C:hearts,E:1}Steven{}{C:enhanced,s:0.8}... I want to be a part of your universe.{}',
            '{C:legendary,s:0.7}- From \"Full Disclosure\"{}'
        }
    },
    atlas = 'Jokers', --atlas' key
    rarity = 'sbeven_Human',
    cost = 8,
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = false,
    pos = {x = 4, y = 0}, --position in atlas, starts at 0, scales by the atlas' card size (px and py): {x = 1, y = 0} would mean the sprite is 71 pixels to the right

    calculate = function(self, card, context)
        -- only run on individual card scoring passes
        if context.individual and context.cardarea == G.play then
            local scored = context.other_card
            local suit = scored.base.suit
            if suit == 'Spades' or suit == 'Clubs' then
                return {
                    x_chips  = 1.5,
                    message = 'I can be his knight!',
                    colour  = G.C.MULT
                }
            end
        end
    end,
    
    in_pool = function(self, current_shop_jokers, shop_level)
        -- Prevent this Joker from appearing in the shop if the player already owns one
        for _, owned in ipairs(G.jokers.cards) do
            if owned.key == self.key then
                return false
            end
        end
        return true
    end,    
    -- Add the "UNIVERSE" badge at the bottom of the card
    set_badges = function(self, card, badges)
        badges[#badges + 1] = create_badge(
            "Steven Universe",          -- Text displayed on the badge
            G.C.PURPLE,          -- Badge background color
            G.C.EDITION,           -- Text color
            1                    -- Scaling factor (default size)
        )
    end,
}


SMODS.Joker{ -- Jasper
    key = 'jasper',
    center_key = 'jasper',
    loc_txt = {
        name = '{C:diamonds}Jasper{}',
        text = {
            'When a played hand is a {C:attention}Pair{},',
            'create negative {C:tarot,c_hanged_man}Hanged Man{} and {C:planet,c_pluto}Pluto{} consumables.',
            '{C:diamonds,s:0.8}Neither of you saw{} {C:hearts,s:0.8,E:1}Rose Quartz{}? {C:diamonds,s:0.8}What a shame.{}',
            '{C:diamonds,s:0.8}I hoped to meet{} {C:hearts,s:0.8,E:1}her{}.',
            '{C:diamonds,s:0.8}I was looking forward to beating{} {C:hearts,s:0.8,E:1}her{} {C:diamonds,s:0.8}into the ground.{}',
            '{C:legendary,s:0.7}- From \"The Return\"{}'
        }
    },
    atlas = 'Jokers', --atlas' key
    rarity = 'sbeven_Gem',
    cost = 12,
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = false,
    pos = {x = 7, y = 0},

    calculate = function(self, card, context)
        if context.joker_main and context.scoring_name == 'Pair' then
            G.E_MANAGER:add_event(Event({ func = function()
                for i=1,1 do 
                    SMODS.add_card{ key = 'c_hanged_man', edition = 'e_negative' } 
                    SMODS.add_card{ key = 'c_pluto', edition = 'e_negative' } 
                end
                return true 
            end}))
            return {
                message = 'Earth... is a prison.',
                x_mult = 1.1,
            }
        end
    end,
    in_pool = function(self, current_shop_jokers, shop_level)
        -- Prevent this Joker from appearing in the shop if the player already owns one
        for _, owned in ipairs(G.jokers.cards) do
            if owned.key == self.key then
                return false
            end
        end
        return true
    end,    
    set_badges = function(self, card, badges)
        badges[#badges + 1] = create_badge("Steven Universe", G.C.PURPLE, G.C.EDITION, 1)
    end,
}

-- Joker: Pearl
SMODS.Joker{
    key = 'pearl',
    loc_txt = {
        name = '{X:red,C:white}Pearl{}',
        text = {
            'Playing cards {C:attention}permanently gain{} {X:mult,C:white}X#1#{} Mult when scored.{}',
            '{C:inactive,s:0.8}Everything I ever did, I did for{} {C:inactive,C:hearts,E:1,s:0.8}her.{}',
            '{C:inactive,s:0.8}Now{} {C:inactive,C:hearts,E:1,s:0.8}she\'s{} {C:inactive,s:0.8}gone, but I\'m still here.{}',
            '{C:inactive,s:0.8}Sometimes, I wonder if{} {C:inactive,C:hearts,E:1,s:0.8}she{} {C:inactive,s:0.8}can see me through your eyes.{}',
            '{C:inactive,s:0.8}What would{} {C:inactive,C:hearts,E:1,s:0.8}she{} {C:inactive,s:0.8}think of me now?{}',
            '{C:inactive,s:0.7,C:legendary}- From \"Rose\'s Scabbard\"{}'
        }
    },
    atlas = 'Jokers', --atlas' key
    rarity = 'sbeven_CGem', --rarity: 1 = Common, 2 = Uncommon, 3 = Rare, 4 = Legendary
    cost = 10,
    unlocked = true,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    perishable_compat = false,
    pos = {x = 5, y = 1}, --position in atlas, starts at 0, scales by the atlas' card size (px and py): {x = 1, y = 0} would mean the sprite is 71 pixels to the right
    config = {
        extra = {
            perma_x_mult = 0.2 -- Initialize the permanent multiplier bonus
        }
    },
    loc_vars = function(self, info_queue, center)
        return { vars = { center.ability.extra.perma_x_mult } } --#1# is replaced with card.ability.extra.perma_x_mult
    end,
    -- This calculate runs once for each scoring card
    calculate = function(self, card, context)
        if context.individual and context.cardarea == G.play then
            local oc = context.other_card
            -- Initialize perma_x_mult to 0 if not present
            oc.ability.perma_x_mult = oc.ability.perma_x_mult or 0
            -- Add 0.2 to the permanent multiplier bonus
            oc.ability.perma_x_mult = oc.ability.perma_x_mult + 0.2
            return {
                -- Show the trigger message in the log
                extra = { message = 'Yes, My Diamond.', color = G.C.SUITS.Hearts }
            }
        end
    end,

    in_pool = function(self, current_shop_jokers, shop_level)
        -- Prevent this Joker from appearing in the shop if the player already owns one
        for _, owned in ipairs(G.jokers.cards) do
            if owned.key == self.key then
                return false
            end
        end
        return true
    end,    

    -- Add the "UNIVERSE" badge at the bottom of the card
    set_badges = function(self, card, badges)
        badges[#badges + 1] = create_badge(
            "Steven Universe",          -- Text displayed on the badge
            G.C.PURPLE,          -- Badge background color
            G.C.EDITION,           -- Text color
            1                    -- Scaling factor (default size)
        )
    end,
}


SMODS.Joker{ -- Volleyball
    key = 'volleyball', --joker key
    loc_txt = {
        name = '{C:hearts,E:1,s:1}\"Volleyball\"{}',
        text = {
            'Playing cards {C:attention,E:1}permanently gain{} {X:chips,C:white,E:1}X0.2{} Chips when scored.{}',
            '{C:hearts,s:0.8}Oh, no. I know what a nickname is.{}',
            '{C:hearts,s:0.8}It\'s just that it reminds me so much of{} {C:hearts,s:0.8,E:1}Pink.{}',
            '{C:hearts,s:0.8,E:1}She{} {C:hearts,s:0.8}used to give silly little names to everything.{}',
            '{C:hearts,s:0.8,E:1}She{} {C:hearts,s:0.8}was so funny like that...{}',
            '{E:1,s:0.7,C:legendary}- From \"Volleyball\"{}'
        }
    },
    atlas = 'Jokers', --atlas' key
    rarity = 'sbeven_Gem', --rarity: 1 = Common, 2 = Uncommon, 3 = Rare, 4 = Legendary
    --soul_pos = { x = 0, y = 0 },
    cost = 10,
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = false,
    pos = {x = 1, y = 3}, --position in atlas, starts at 0, scales by the atlas' card size (px and py): {x = 1, y = 0} would mean the sprite is 71 pixels to the right
    config = {
        extra = {
            perma_x_chips = 0.2, --configurable value
        }
    },
    loc_vars = function(self, info_queue, card)
        return {vars = {card.ability.extra.perma_x_chips}} --displays configurable value: the #1# in the description is replaced with the configurable value
    end,
    calculate = function(self, card, context)
        if context.individual and context.cardarea == G.play then
            local oc = context.other_card
            oc.ability.perma_x_chips = oc.ability.perma_x_chips or 0
            oc.ability.perma_x_chips = oc.ability.perma_x_chips + 0.2
            return { 
                extra = { message = 'That\'s absurd! I am fine.', color = G.C.SUITS.Hearts }
            }
        end
    end,
    in_pool = function(self, current_shop_jokers, shop_level)
        -- Prevent this Joker from appearing in the shop if the player already owns one
        for _, owned in ipairs(G.jokers.cards) do
            if owned.key == self.key then
                return false
            end
        end
        return true
    end,
    
    -- Add the "UNIVERSE" badge at the bottom of the card
    set_badges = function(self, card, badges)
        badges[#badges + 1] = create_badge(
            "Steven Universe",          -- Text displayed on the badge
            G.C.PURPLE,          -- Badge background color
            G.C.EDITION,           -- Text color
            1                    -- Scaling factor (default size)
        )
    end,
}


SMODS.Joker{ -- pale rose
    key = 'pale_rose',
    loc_txt = {
        name = '{C:hearts}A Single Pale Rose{}',
        text = {
            '{X:mult,C:white,E:1}X2.5{} Mult and gain {X:gold,C:white}$15{} at {C:attention}end of round{}.',
            '{C:dark_edition,s:1.1,E:1}This joker can heal or upgrade certain Jokers.{}',
            'If played hand is a {C:attention}Five of a Kind{} or a {C:attention}Flush Five{},',
            'create a {C:dark_edition,E:1}negative{} {C:edition,E:1}Soul Card{}.',
            'If played hand contains a {C:attention}High Card{},',
            'create a {C:dark_edition,E:1}negative{} {C:attention,E:1}Black Hole{}.',
            '{C:enhanced,s:0.8}I always thought I might be bad,{}',
            '{C:enhanced,s:0.8}Now I\'m sure that it\'s true.{}',
            '{C:enhanced,s:0.8}Cause I think you\'re so good, and I\'m nothing like you.{}',
            '{C:inactive,s:0.7,C:legendary}- From \"Love Like You\"{}'
        }
    },
    atlas = 'Jokers', --atlas' key
    rarity = 'sbeven_Unique',
    cost = 15,
    unlocked = true,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    perishable_compat = false,
    pos = { x = 4, y = 1 },

    config = {
        extra = {
            Xmult = 2.5
        }
    },

    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.Xmult } }
    end,

    calculate = function(self, card, context)
        if context.joker_main then
            -- 1️⃣ Five of a Kind / Flush Five → Soul Card
            if context.scoring_name == 'Five of a Kind'
            or context.scoring_name == 'Flush Five'
            then
                G.E_MANAGER:add_event(Event({ func = function()
                    SMODS.add_card{ key = 'c_soul', edition = 'e_negative' }
                    return true
                end }))
                return {
                    message = 'Do it for her.',
                    colour  = G.C.SUITS.Hearts,
                    x_mult  = 2.5
                }
            end

            -- 2️⃣ High Card → Black Hole
            if context.scoring_name == 'High Card'
            or context.scoring_name == 'Pair' 
            or context.scoring_name == 'Three of a Kind' 
            or context.scoring_name == 'Two Pair'
            or context.scoring_name == 'Four of a Kind'
            or context.scoring_name == 'Flush'
            or context.scoring_name == 'Full House'
            or context.scoring_name == 'Straight'
            or context.scoring_name == 'Straight Flush' then
                G.E_MANAGER:add_event(Event({ func = function()
                    SMODS.add_card{ key = 'c_black_hole', edition = 'e_negative' }
                    return true
                end }))
                return {
                    message = 'Do it for her.',
                    colour  = G.C.SUITS.Hearts,
                    x_mult  = 2.5
                }
            end
        end
    end,

    in_pool = function(self, current_shop_jokers, shop_level)
        for _, owned in ipairs(G.jokers.cards) do
            if owned.key == self.key then
                return false
            end
        end
        return true
    end,
    calc_dollar_bonus = function(self,card)
        return 15
    end,
    set_badges = function(self, card, badges)
        badges[#badges + 1] = create_badge(
            "Steven Universe",
            G.C.PURPLE,
            G.C.EDITION,
            1
        )
    end,
}


SMODS.Joker{ -- Corrupter Steven
    key = 'corruption', --joker key
    loc_txt = {
        name = '{C:legendary,E:1,s:1.15}Corruption{}',
        text = {
            '{X:chips,C:white}X5{} Chips and gain {X:gold,C:white}$15{} at {C:attention}end of round{}.',
            '{C:dark_edition,s:1.1,E:1}This joker can corrupt certain Jokers.{}',
            'If played hand is a {C:attention}Five of a Kind{} or a {C:attention}Flush Five{},',
            'create a {C:dark_edition,E:1}negative{} {C:edition,E:1}Soul Card{}.',
            'If played hand contains a {C:attention}High Card{},',
            'create a {C:dark_edition,E:1}negative{} {C:attention,E:1}Black Hole{}.',
            '{C:enhanced,s:0.8}Look at you go. I just adore you,{}',
            '{C:enhanced,s:0.8}I wish that I knew,{}',
            '{C:enhanced,s:0.8}What makes you think I\'m so special.{}',
            '{C:inactive,s:0.7,C:legendary}- From \"Love Like You\"{}'
        }
    },
    atlas = 'Consumables', --atlas' key
    rarity = 'sbeven_Unique', --rarity: 1 = Common, 2 = Uncommon, 3 = Rare, 4 = Legendary
    --soul_pos = { x = 0, y = 0 },
    cost = 20,
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = false,
    pos = {x = 0, y = 0}, --position in atlas, starts at 0, scales by the atlas' card size (px and py): {x = 1, y = 0} would mean the sprite is 71 pixels to the right
    config = {
        extra = {
            Xchips = 5
        }
    },

    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.Xchips } }
    end,

    calculate = function(self, card, context)
        if context.joker_main then
            -- 1️⃣ Five of a Kind / Flush Five → Soul Card
            if context.scoring_name == 'Five of a Kind'
            or context.scoring_name == 'Flush Five'
            then
                G.E_MANAGER:add_event(Event({ func = function()
                    SMODS.add_card{ key = 'c_soul', edition = 'e_negative' }
                    SMODS.add_card{ key = 'c_black_hole', edition = 'e_negative'}
                    return true
                end }))
                return {
                    message = 'Fate worse than death...',
                    colour  = G.C.SUITS.Hearts,
                    x_chips  = 5
                }
            end

            -- 2️⃣ High Card → Black Hole
            if context.scoring_name == 'High Card'
            or context.scoring_name == 'Pair' 
            or context.scoring_name == 'Three of a Kind' 
            or context.scoring_name == 'Two Pair'
            or context.scoring_name == 'Four of a Kind'
            or context.scoring_name == 'Flush'
            or context.scoring_name == 'Full House'
            or context.scoring_name == 'Straight'
            or context.scoring_name == 'Straight Flush' then
                G.E_MANAGER:add_event(Event({ func = function()
                    SMODS.add_card{ key = 'c_black_hole', edition = 'e_negative' }
                    return true
                end }))
                return {
                    message = 'The Diamonds...',
                    colour  = G.C.SUITS.Hearts,
                    x_chips  = 5
                }
            end
        end
    end,

    in_pool = function(self, current_shop_jokers, shop_level)
        for _, owned in ipairs(G.jokers.cards) do
            if owned.key == self.key then
                return false
            end
        end
        return true
    end,
    calc_dollar_bonus = function(self,card)
        return 15
    end,
    set_badges = function(self, card, badges)
        badges[#badges + 1] = create_badge(
            "Steven Universe",
            G.C.PURPLE,
            G.C.EDITION,
            1
        )
    end,
}

SMODS.Joker{ -- Cracked Lapis Lazuli
    key = 'cracked_lapis', --joker key
    loc_txt = { -- local text
        name = '{C:enhanced}Cracked Lapis Lazuli{}', -- name of joker
        text = {
          'When playing a {C:attention}Pair{},',
          'both cards turn into {C:attention}7s{}.',
          '{C:inactive,s:0.8}I\'m{} {C:inactive,C:blue,E:1,s:0.8}Lapis Lazuli,{}',
          '{C:inactive,s:0.8}and you can\'t keep me trapped here anymore!{}',
          '{C:inactive,s:0.7,C:legendary}- From \"Mirror Gem\"{}'
        },
        --[[unlock = {
            'Be {C:legendary}cool{}',
        }]]
    },
    atlas = 'Jokers', --atlas' key
    rarity = 'sbeven_Gem', --rarity: 1 = Common, 2 = Uncommon, 3 = Rare, 4 = Legendary
    --soul_pos = { x = 0, y = 0 },
    cost = 8, --cost
    unlocked = true, --where it is unlocked or not: if true, 
    discovered = true, --whether or not it starts discovered
    blueprint_compat = true, --can it be blueprinted/brainstormed/other
    eternal_compat = true, --can it be eternal
    perishable_compat = true, --can it be perishable
    pos = {x = 5, y = 0}, --position in atlas, starts at 0, scales by the atlas' card size (px and py): {x = 1, y = 0} would mean the sprite is 71 pixels to the right
    config = { 
      extra = {
        white = 7, --configurable value
		black = 7
      }
    },
    loc_vars = function(self,info_queue,center)
        return {vars = {center.ability.extra.white, center.ability.extra.black}} --#1# is replaced with card.ability.extra.Xmult
    end,
    check_for_unlock = function(self, args)
        if args.type == 'derek_loves_you' then --not a real type, just a joke
            unlock_card(self)
        end
        unlock_card(self) --unlocks the card if it isnt unlocked
    end,
    calculate = function(self,card,context)
        if context.individual and context.cardarea == G.play and context.scoring_name == 'Pair'then
			for i=1, #context.scoring_hand do
				local percent = 1.15 - (i-0.999)/(#context.scoring_hand-0.998)*0.3
				G.E_MANAGER:add_event(Event({trigger = 'after',delay = 0.15,func = function() context.scoring_hand[i]:flip();play_sound('card1', percent);context.scoring_hand[i]:juice_up(0.3, 0.3);return true end }))
			end
			delay(0.2)
            local _rank = pseudorandom_element({'7','7'}, pseudoseed('yin'))
            for i=1, #context.scoring_hand do
                G.E_MANAGER:add_event(Event({func = function()
                    local card = context.scoring_hand[i]
                    local suit_prefix = string.sub(card.base.suit, 1, 1)..'_'
                    local rank_suffix =_rank
                    card:set_base(G.P_CARDS[suit_prefix..rank_suffix])
                return true end }))
				end
        end

        
    end,

    in_pool = function(self, current_shop_jokers, shop_level)
        -- Prevent this Joker from appearing in the shop if the player already owns one
        for _, owned in ipairs(G.jokers.cards) do
            if owned.key == self.key then
                return false
            end
        end
        return true
    end,
    -- Add the "UNIVERSE" badge at the bottom of the card
    set_badges = function(self, card, badges)
        badges[#badges + 1] = create_badge(
            "Steven Universe",          -- Text displayed on the badge
            G.C.PURPLE,          -- Badge background color
            G.C.EDITION,           -- Text color
            1                    -- Scaling factor (default size)
        )
    end,
}


SMODS.Joker{ -- Lapis Lazuli
    key = 'lapis', -- joker key
    loc_txt = {
        name = '{C:blue}Lapis Lazuli{}', -- name of joker
        text = {
            "{C:white,X:dark_edition,E:1}^1.5{} {C:white,E:1,X:dark_edition}Mult{} and gain {X:gold,C:white}$20{} at {C:attention}end of round{}.",
            '{C:inactive,C:green,s:0.8}Peridot{}{C:blue,s:0.8}... are you okay?{}',
            '{C:inactive,s:0.7,C:legendary}- From \"Barn Mates\"{}'
        }
   },
    config = {
        extra = {
            Xmult = 7.5 --configurable value
        }
    },
    loc_vars = function(self, info_queue, card)
        return {vars = {card.ability.extra.Xmult}} --#1# is replaced with card.ability.extra.Xmult
    end,
    rarity = 'sbeven_Hidden', -- rarity: 1 = Common, 2 = Uncommon, 3 = Rare, 4 = Legendary
    --soul_pos = { x = 0, y = 0 },
    atlas = 'Lapis', -- atlas' key
    pos = { x = 0, y = 0 },
    cost = 50,
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,

    calculate = function(self, card, context)
        if context.joker_main then
            return {
               e_mult = 1.5,
               message = 'Peridot...',
           }
       end
    end,

    in_pool = function(self, current_shop_jokers, shop_level)
        -- Prevent this Joker from appearing in the shop if the player already owns one
        for _, owned in ipairs(G.jokers.cards) do
            if owned.key == self.key then
                return false
            end
        end
        return true
    end,    
    calc_dollar_bonus = function(self, card)
        return 20
    end,   
    -- Add the "UNIVERSE" badge at the bottom of the card
    set_badges = function(self, card, badges)
        badges[#badges + 1] = create_badge(
            "Steven Universe",          -- Text displayed on the badge
            G.C.PURPLE,          -- Badge background color
            G.C.EDITION,           -- Text color
            1                    -- Scaling factor (default size)
        )
    end,
}

SMODS.Joker {
	key = 'peridot', -- joker key
	loc_txt = {
		name = '{C:green,E:1}Peridot{}', -- name of joker
		text = {
			"If {C:attention}played hand{} contains at least {C:attention}2{} scoring {C:attention}7s{},",
			"create {C:attention}3 random{} {C:dark_edition}negative{} Consumables",
            "{C:green,s:0.8}I think you\'re all insane!{}",
            "{C:green,s:0.8}But I guess I am too.{}",
            "{C:green,s:0.8}Anybody would be{}",
            "{C:green,s:0.8}If they were stuck on Earth with you!{}",
            '{C:inactive,s:0.7,C:legendary}- From \"It Could\'ve Been Great\"{}'

		}
	},
	loc_vars = function(self, info_queue, card)
		info_queue[#info_queue + 1] = G.P_CENTERS.e_negative
	end,
	rarity = 'sbeven_CGem', -- rarity: 1 = Common, 2 = Uncommon, 3 = Rare, 4 = Legendary
    --soul_pos = { x = 0, y = 0 },
	atlas = 'Jokers', -- atlas' key
	pos = { x = 6, y = 1 },
	cost = 8,
	unlocked = true,
	discovered = true,
	blueprint_compat = true,
	calculate = function(self, card, context)
		if context.joker_main then
			local seven_count = 0
			for i = 1, #context.scoring_hand do
				if context.scoring_hand[i]:get_id() == 7 then
					seven_count = seven_count + 1
				end
			end
			if seven_count >= 2 then
				G.E_MANAGER:add_event(Event({
					func = function()
						for i = 1, 3 do
							local card
							local typeConsumable = pseudorandom(pseudoseed('slot_machine'), 1, 3)
							if (typeConsumable == 1) then
								card = create_card('Tarot', G.consumables, nil, nil, nil, true)
							end
							if (typeConsumable == 2) then
								card = create_card('Planet', G.consumables, nil, nil, nil, true)
							end
							if (typeConsumable == 3) then
								card = create_card('Spectral', G.consumables, nil, nil, nil, true)
							end
							card:set_edition('e_negative', true)
							card:add_to_deck()
							G.consumeables:emplace(card)
						end
						return true
					end
				}))
				return {
					message = "CLOD!"
				}
			end
		end
	end,
    in_pool = function(self, current_shop_jokers, shop_level)
        -- Prevent this Joker from appearing in the shop if the player already owns one
        for _, owned in ipairs(G.jokers.cards) do
            if owned.key == self.key then
                return false
            end
        end
        return true
    end,

    -- Add the "UNIVERSE" badge at the bottom of the card
    set_badges = function(self, card, badges)
        badges[#badges + 1] = create_badge(
            "Steven Universe",          -- Text displayed on the badge
            G.C.PURPLE,          -- Badge background color
            G.C.EDITION,           -- Text color
            1                    -- Scaling factor (default size)
        )
    end,
}


SMODS.Joker{ -- Spinel
    key = 'spinel', --joker key
    loc_txt = { -- local text
        name = '{C:red}Spinel{}', -- name of jonkler
        text = {
            '{C:dark_edition}+#1#{} Chips',
            '{C:inactive,s:0.8}YOUR NEW BEST FRIEND{} {C:red,s:0.8}SPINEL{} {C:inactive,s:0.8}IS HERE!{}',
            '{C:inactive,s:0.7,C:legendary}- From \"Steven Universe: The Movie\"{}'
        },
        --[[unlock = {
            'Be {C:legendary}cool{}',
        }]]
    },
    atlas = 'Jokers', --atlas' key
    rarity = 'sbeven_Gem', --rarity: 1 = Common, 2 = Uncommon, 3 = Rare, 4 = Legendary
    --soul_pos = { x = 0, y = 0 },
    cost = 7, --cost
    unlocked = true, --where it is unlocked or not: if true, 
    discovered = true, --whether or not it starts discovered
    blueprint_compat = true, --can it be blueprinted/brainstormed/other
    eternal_compat = true, --can it be eternal
    perishable_compat = true, --can it be perishable
    pos = {x = 6, y = 2}, --position in atlas, starts at 0, scales by the atlas' card size (px and py): {x = 1, y = 0} would mean the sprite is 71 pixels to the right
    config = { 
      extra = {
        chips = 777 --configurable value
      }
    },
    loc_vars = function(self,info_queue,center)
        return {vars = {center.ability.extra.chips}} --#1# is replaced with card.ability.extra.Xmult
    end,
    check_for_unlock = function(self, args)
        if args.type == 'derek_loves_you' then --not a real type, just a joke
            unlock_card(self)
        end
        unlock_card(self) --unlocks the card if it isnt unlocked
    end,
    calculate = function(self,card,context)
        if context.joker_main then
			return {
				chip_mod = card.ability.extra.chips,
				card = card,
				message = 'New Best Friend!', 
				colour = G.C.CHIPS
				}
        end
    end,
    in_pool = function(self, current_shop_jokers, shop_level)
        -- Prevent this Joker from appearing in the shop if the player already owns one
        for _, owned in ipairs(G.jokers.cards) do
            if owned.key == self.key then
                return false
            end
        end
        return true
    end,    

    -- Add the "UNIVERSE" badge at the bottom of the card
    set_badges = function(self, card, badges)
        badges[#badges + 1] = create_badge(
            "Steven Universe",          -- Text displayed on the badge
            G.C.PURPLE,          -- Badge background color
            G.C.EDITION,           -- Text color
            1                    -- Scaling factor (default size)
        )
    end,
}


SMODS.Joker{ -- Ruby
    key = 'ruby', -- joker key
    center_key = 'ruby', -- center key
    loc_txt = {
        name = '{C:rare}Ruby{}', -- name of joker
        text = {
            'Each played card gives {C:white,X:mult}X#1#{} Mult when {C:attention}scored{},', 
            'if played hand is a {C:attention}Pair{}.',
            '{C:inactive,C:mult,s:0.8}I... I\'ve never had a third eye before.{}',
            '{C:inactive,s:0.7,C:legendary}- From \"The Answer\"{}'
        }
   },
    config = {
        extra = {
            Xmult = 2 --configurable value
        }
    },
    loc_vars = function(self, info_queue, card)
        return {vars = {card.ability.extra.Xmult}} --#1# is replaced with card.ability.extra.Xmult
    end,
    rarity = 'sbeven_CGem', -- rarity: 1 = Common, 2 = Uncommon, 3 = Rare, 4 = Legendary
    --soul_pos = { x = 0, y = 0 },
    atlas = 'Jokers', -- atlas' key
    pos = { x = 2, y = 2 },
    cost = 8,
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,

   calculate = function(self, card, context)
        if context.individual and context.cardarea == G.play and context.scoring_name == 'Pair' then
            return {
               Xmult = card.ability.extra.Xmult,
               message = 'I\'m an eternal flame, baby!'
           }
        end
    end,
    
    in_pool = function(self, current_shop_jokers, shop_level)
        -- Prevent this Joker from appearing in the shop if the player already owns one
        for _, owned in ipairs(G.jokers.cards) do
            if owned.key == self.key then
                return false
            end
        end
        return true
    end,
    
    -- Add the "UNIVERSE" badge at the bottom of the card
    set_badges = function(self, card, badges)
        badges[#badges + 1] = create_badge(
            "Steven Universe",          -- Text displayed on the badge
            G.C.PURPLE,          -- Badge background color
            G.C.EDITION,           -- Text color
            1                    -- Scaling factor (default size)
        )
    end,
}


SMODS.Joker{ -- Sapphire
    key = 'sapphire',
    center_key = 'sapphire',
    loc_txt = {
        name = '{C:planet}Sapphire{}',
        text = {
            'Each played card gives {X:chips,C:white}X#1#{} Chips when scored,',
            'if played hand is a {C:attention}Pair{}.',
            '{C:inactive,C:planet,s:0.8}I\'ve never had more than one!{}',
            '{C:inactive,C:planet,s:0.8}It was nice.{}',
            '{C:inactive,s:0.7,C:legendary}- From \"The Answer\"{}'
        }
    },
    atlas = 'Jokers', -- atlas' key
    rarity = 'sbeven_CGem',
    cost = 8,
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = false,
    pos = {x = 3, y = 2},
    config = { extra = { Xchips = 2 } },
    loc_vars = function(self, info_queue, center)
        return { vars = { center.ability.extra.Xchips } }
    end,
    calculate = function(self, card, context)
        if context.individual and context.cardarea == G.play and context.scoring_name == 'Pair' then
            return {
                x_chips = card.ability.extra.Xchips,
                message = 'Such is fate.',
                colour = G.C.CHIPS
            }
        end
    end,
    
    in_pool = function(self, current_shop_jokers, shop_level)
        -- Prevent this Joker from appearing in the shop if the player already owns one
        for _, owned in ipairs(G.jokers.cards) do
            if owned.key == self.key then
                return false
            end
        end
        return true
    end,
    
    -- Add the "UNIVERSE" badge at the bottom of the card
    set_badges = function(self, card, badges)
        badges[#badges + 1] = create_badge(
            "Steven Universe",          -- Text displayed on the badge
            G.C.PURPLE,          -- Badge background color
            G.C.EDITION,           -- Text color
            1                    -- Scaling factor (default size)
        )
    end,
}


SMODS.Joker{ -- Amethyst
    key = 'amethyst', -- joker key
    loc_txt = { -- local text
        name = '{C:purple}Amethyst{}', -- name of joker
        text = {
            'Played {C:attention}cards{} each give {X:chips,C:white}X#1#{} Chips',
            'when {C:attention}scored{}.',
            '{C:inactive,C:purple,s:0.8}NOOOOO! MI TORTA!{}',
            '{C:inactive,s:0.7,C:legendary}- From \"Monster Buddies\"{}'
        }
    },
    atlas = 'Jokers', -- atlas' key
    rarity = 'sbeven_CGem', -- rarity: 1 = Common, 2 = Uncommon, 3 = Rare, 4 = Legendary
    cost = 6, -- cost in chips
    unlocked = true, -- where it is unlocked or not: if true,
    discovered = true, -- whether or not it starts discovered
    blueprint_compat = true, -- can it be blueprinted/brainstormed/other
    eternal_compat = true, -- can it be eternal
    perishable_compat = false, -- can it be perishable
    pos = {x = 1, y = 0}, -- position in atlas, starts at 0, scales by the atlas' card size (px and py): {x = 1, y = 0} would mean the sprite is 71 pixels to the right
    config = {
        extra = {
            Xchips = 1.25 -- configurable value
        }
    },
    loc_vars = function(self, info_queue, card)
        return {vars = {card.ability.extra.Xchips} } -- #1# is replaced with card.ability.extra.Xmult
    end,
    check_for_unlock = function(self, args)
        if args.type == 'derek_loves_you' then -- not a real type, just a joke
            unlock_card(self)
        end
        unlock_card(self) -- unlocks the card if it isn't unlocked
    end,
    calculate = function(self, card, context)
        if context.individual and context.cardarea == G.play then
            return {
                x_chips = card.ability.extra.Xchips, -- apply multiplier
                card = context.other_card, -- target each scored card
                message = 'Shorty Squad Out!', -- display on trigger
                colour = G.C.MULT, -- multiplier colour
                func = function() context.other_card:juice_up(0.5, 0.5) end -- visual flourish
            }
        end
    end,
    
    in_pool = function(self, current_shop_jokers, shop_level)
        -- Prevent this Joker from appearing in the shop if the player already owns one
        for _, owned in ipairs(G.jokers.cards) do
            if owned.key == self.key then
                return false
            end
        end
        return true
    end,
    
    -- Add the "UNIVERSE" badge at the bottom of the card
    set_badges = function(self, card, badges)
        badges[#badges + 1] = create_badge(
            "Steven Universe",          -- Text displayed on the badge
            G.C.PURPLE,          -- Badge background color
            G.C.EDITION,           -- Text color
            1                    -- Scaling factor (default size)
        )
    end,
}


-------This Segment is for all the Fusion Jokers-----------
-- Stevonnie
-- Malachite
-- Opal
-- Garnet
-- Rhodonite
-- Aventurine
-------Fusions to add-------
-- Rainbow Quartz
-- Rainbow 2.0
-- Smokey Quartz
-- Sunstone
-- Sardonyx
-- Sugilite
-- Alexandrite
-- Obsidian
-- Zebra Jasper
-- Corrupted Steven

SMODS.Joker{ -- Stevonnie
    key = 'stevonnie', --joker key
    loc_txt = {
        name = '{C:legendary,E:1}S{C:hearts}t{C:legendary}e{C:hearts}v{C:legendary}o{C:hearts}n{C:legendary}n{C:hearts}i{C:legendary}e{}',
        text = {
            'Playing cards of {C:attention}any suit{} each give',
            '{X:mult,C:white}X7{} Mult and {X:chips,C:white}X7{} Chips when scored.',
            'If played hand is a {C:attention}Five of a Kind{} or a {C:attention}Flush Five{},',
            'create {C:edition,E:1}A Single Pale Rose{}.',
            '{C:enhanced,s:0.8}Take a moment to think of just{}',
            '{C:enhanced,s:0.8}Flexibility, love, and trust.{}',
            '{C:legendary,s:0.7}- From \"Mindful Education\"{}'
        }
    },
    atlas = 'Stevonnie', --atlas' key
    rarity = 'sbeven_PFusion', --rarity: 1 = Common, 2 = Uncommon, 3 = Rare, 4 = Legendary
    cost = 25,
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = false,
    pos = {x = 0, y = 0}, --position in atlas, starts at 0, scales by the atlas' card size (px and py): {x = 1, y = 0} would mean the sprite is 71 pixels to the right

    calculate = function(self, card, context)
        -- only run on individual card scoring passes
        if context.individual and context.cardarea == G.play then
            local scored = context.other_card
            local suit = scored.base.suit
            if suit == 'Diamonds' 
            or suit == 'Spades' 
            or suit == 'Hearts' 
            or suit == 'Clubs' then
                return {
                    x_mult  = 7,
                    x_chips  = 7,
                    message = 'Pretty cool, right?',
                    colour  = G.C.MULT
                }
            end
        end
        if context.joker_main and (context.scoring_name == 'Five of a Kind' 
        or context.scoring_name == 'Flush Five') then
            G.E_MANAGER:add_event(Event({ func = function()
                    SMODS.add_card{ key = 'j_sbeven_pale_rose', edition = 'e_negative' } 
                return true 
            end}))
            return {
                message = 'Alone Together.',
                colour = G.C.EDITION,
            }
        end
    end,
    in_pool = function(self, current_shop_jokers, shop_level)
        -- Prevent this Joker from appearing in the shop if the player already owns one
        for _, owned in ipairs(G.jokers.cards) do
            if owned.key == self.key then
                return false
            end
        end
        return true
    end,
    
    -- Add the "UNIVERSE" badge at the bottom of the card
    set_badges = function(self, card, badges)
        badges[#badges + 1] = create_badge(
            "Steven Universe",          -- Text displayed on the badge
            G.C.PURPLE,          -- Badge background color
            G.C.EDITION,           -- Text color
            1                    -- Scaling factor (default size)
        )
    end,
}


SMODS.Joker{ -- Malachite Fusion
    key = 'malachite', --joker key
    loc_txt = {
        name = '{C:diamonds,s:1.3}M{C:blue,s:1.3}a{C:diamonds,s:1.3}l{C:blue,s:1.3}a{C:diamonds,s:1.3}c{C:blue,s:1.3}h{C:diamonds,s:1.3}i{C:blue,s:1.3}t{C:diamonds,s:1.3}e{}',
        text = {
            '{X:dark_edition,C:white,E:1}^2.5{} {C:white,X:dark_edition,E:1}Mult{}.',
            'If played hand is a {C:attention}Pair{},',
            'create {C:dark_edition,E:1}negative{} {C:attention}Hanged Man{}, {C:attention}Pluto{},',
            '{C:attention}Deja Vu{}, and {C:attention}Cryptid{} consumables.',
            'If played hand is a {C:attention}Five of a Kind{} or a {C:attention}Flush Five{},',
            'create {C:edition,E:1}A Single Pale Rose{}.',
            '{C:green,s:0.8}You think you can hold me down?! Nobody can! Not anymore.{}',
            '{C:inactive,s:0.7,C:legendary}- From \"Super Watermelon Island\"{}'
        }
    },
    atlas = 'Jokers', --atlas' key
    rarity = 'sbeven_UFusion', --rarity: 1 = Common, 2 = Uncommon, 3 = Rare, 4 = Legendary
    --soul_pos = { x = 0, y = 0 },
    cost = 45,
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = false,
    pos = {x = 9, y = 0}, --position in atlas, starts at 0, scales by the atlas' card size (px and py): {x = 1, y = 0} would mean the sprite is 71 pixels to the right

    calculate = function(self, card, context)
        if context.joker_main and context.scoring_name == 'Pair' then
            G.E_MANAGER:add_event(Event({ func = function()
                for i=1,1 do 
                    SMODS.add_card{ key = 'c_hanged_man', edition = 'e_negative' } 
                    SMODS.add_card{ key = 'c_pluto', edition = 'e_negative' } 
                    SMODS.add_card{ key = 'c_deja_vu', edition = 'e_negative' }
                    SMODS.add_card{ key = 'c_cryptid', edition = 'e_negative' }
                end
                return true 
            end}))
            return {
                message = 'We are Malachite.',
                colour = G.C.EDITION,
                e_mult = 2.5,
            }
        end
        if context.joker_main and (context.scoring_name == 'Five of a Kind' 
        or context.scoring_name == 'Flush Five') then
            G.E_MANAGER:add_event(Event({ func = function()
                    SMODS.add_card{ key = 'j_sbeven_pale_rose', edition = 'e_negative' } 
                return true 
            end}))
            return {
                message = 'We are Malachite.',
                colour = G.C.EDITION,
                e_mult = 2.5,
            }
        end
    end,
    in_pool = function(self, current_shop_jokers, shop_level)
        -- Prevent this Joker from appearing in the shop if the player already owns one
        for _, owned in ipairs(G.jokers.cards) do
            if owned.key == self.key then
                return false
            end
        end
        return true
    end,
    
    -- Add the "UNIVERSE" badge at the bottom of the card
    set_badges = function(self, card, badges)
        badges[#badges + 1] = create_badge(
            "Steven Universe",          -- Text displayed on the badge
            G.C.PURPLE,          -- Badge background color
            G.C.EDITION,           -- Text color
            1                    -- Scaling factor (default size)
        )
    end,
}


SMODS.Joker{ -- For Opal
    key = 'opal', --joker key
    loc_txt = {
        name = '{C:dark_edition}Opal{}',
        text = {
            'Played cards {C:attention}permanently gain{} {X:mult,C:white}X0.5{} Mult and give {X:chips,C:white}X1.75{} Chips when scored,',
            'if played hand is a {C:attention}Pair{}.',
            'If played hand is a {C:attention}Five of a Kind{} or a {C:attention}Flush Five{},',
            'create {C:edition,E:1}A Single Pale Rose{}.',
            '{C:dark_edition,s:0.8}All{} {C:hearts,s:0.8,E:1}you{} {C:dark_edition,s:0.8}wanna do, is see me turn into...{}',
            '{C:hearts,s:0.8,E:1}A Giant Woman.{}',
            '{C:legendary,s:0.7}- From \"Giant Woman\"{}'
        }
    },
    atlas = 'Jokers', --atlas' key
    rarity = 'sbeven_Fusion', --rarity: 1 = Common, 2 = Uncommon, 3 = Rare, 4 = Legendary
    --soul_pos = { x = 0, y = 0 },
    cost = 25,
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = false,
    pos = {x = 3, y = 1}, --position in atlas, starts at 0, scales by the atlas' card size (px and py): {x = 1, y = 0} would mean the sprite is 71 pixels to the right

    config = {
        extra = {
            Xchips = 1.75,      -- Enhanced chips multiplier (Amethyst base ~1.25)
            perma_x_mult = 0.5  -- Enhanced permanent mult (Pearl base ~0.2)
        }
    },
    loc_vars = function(self, info_queue, card)
        return {
            vars = {
                card.ability.extra.Xchips,
                card.ability.extra.perma_x_mult
            }
        }
    end,
    calculate = function(self, card, context)
        if context.individual 
        and context.cardarea == G.play 
        and context.scoring_name == 'Pair' then
            local oc = context.other_card
            -- Apply Amethyst-like chip bonus
            local result = {
                x_chips = card.ability.extra.Xchips,
                card = oc,
                colour = G.C.CHIPS,
                message = 'Independent Together.',
                func = function() oc:juice_up(0.5, 0.5) end
            }

            -- Apply Pearl-like permanent multiplier
            oc.ability.perma_x_mult = (oc.ability.perma_x_mult or 0) + card.ability.extra.perma_x_mult

            return result
        end
        if context.joker_main and (context.scoring_name == 'Five of a Kind' 
        or context.scoring_name == 'Flush Five') then
            G.E_MANAGER:add_event(Event({ func = function()
                    SMODS.add_card{ key = 'j_sbeven_pale_rose', edition = 'e_negative' } 
                return true 
            end}))
            return {
                message = 'A Giant Woman.',
                colour = G.C.EDITION,
            }
        end
    end,
    in_pool = function(self, current_shop_jokers, shop_level)
        -- Prevent this Joker from appearing in the shop if the player already owns one
        for _, owned in ipairs(G.jokers.cards) do
            if owned.key == self.key then
                return false
            end
        end
        return true
    end,
    
    -- Add the "UNIVERSE" badge at the bottom of the card
    set_badges = function(self, card, badges)
        badges[#badges + 1] = create_badge(
            "Steven Universe",          -- Text displayed on the badge
            G.C.PURPLE,          -- Badge background color
            G.C.EDITION,           -- Text color
            1                    -- Scaling factor (default size)
        )
    end,
}


SMODS.Joker{
    key = 'garnet', -- joker key
    center_key = 'garnet', -- center key
    loc_txt = { -- localization text
        name = '{C:tarot,E:1}Garnet{}',
        text = {
            'Each card played in a {C:attention,E:1}Pair{}', 
            'gives {X:mult,C:white,E:1}X#1#{} Mult and {X:chips,C:white,E:1}X#1#{} Chips when {C:attention}scored{}.',
            '{C:inactive,s:0.8}This is{} {C:tarot,E:1,s:0.8}Garnet{}. {C:inactive,s:0.8}Back together.{}',
            '{C:inactive,s:0.7,C:legendary}- From \"Jailbreak\"{}'
        }
    },
    atlas = 'Jokers', -- atlas key
    rarity = 'sbeven_PFusion', -- Legendary
    cost = 25, -- cost in chips
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = false,
    pos = {x = 6, y = 0}, -- position in atlas
    config = { extra = { Xmult = 8, Xchips = 8, repetitions = 1 } },
    loc_vars = function(self, info_queue, center)
        return { vars = { center.ability.extra.Xmult, center.ability.extra.Xchips } }
    end,
    calculate = function(self, card, context)
        if context.individual 
        and context.cardarea == G.play 
        and context.scoring_name == 'Pair' then
            return {
                x_mult = 8,
                x_chips = 8,
                repetitions = 1,
                extra = { func = function() context.other_card:juice_up(0.5, 0.5) end },
                message = 'Stronger Than You.',
                colour = G.C.EDITION
            }
        end
    end,
    
    in_pool = function(self, current_shop_jokers, shop_level)
        -- Prevent this Joker from appearing in the shop if the player already owns one
        for _, owned in ipairs(G.jokers.cards) do
            if owned.key == self.key then
                return false
            end
        end
        return true
    end,
    
    -- Add the "UNIVERSE" badge at the bottom of the card
    set_badges = function(self, card, badges)
        badges[#badges + 1] = create_badge(
            "Steven Universe",          -- Text displayed on the badge
            G.C.PURPLE,          -- Badge background color
            G.C.EDITION,           -- Text color
            1                    -- Scaling factor (default size)
        )
    end,
}


SMODS.Joker{ --- Rhodonite
    key = 'rhodonite', --joker key
    loc_txt = { -- local text
        name = '{C:tarot}Rhodonite{}', --name of joker
        text = {
          'Each {C:attention}played card{} gives {X:mult,C:white}X3{} Mult when scored,',
          'and also {C:attention}permanently gains{} {X:mult,C:white}X0.25{} Mult,',
          'if played hand is a {C:attention}Pair{}.',
          '{C:inactive,s:0.8,C:tarot}Welp... We\'re cracked.{}',
          '{C:inactive,s:0.7,C:legendary}- From \"Change Your Mind\"{}'
        },
        --[[unlock = {
            'Be {C:legendary}cool{}',
        }]]
    },
    atlas = 'Jokers', --atlas' key
    rarity = 'sbeven_Fusion', --rarity: 1 = Common, 2 = Uncommon, 3 = Rare, 4 = Legendary
    --soul_pos = { x = 0, y = 0 },
    cost = 25, --cost
    unlocked = true, --where it is unlocked or not: if true, 
    discovered = true, --whether or not it starts discovered
    blueprint_compat = true, --can it be blueprinted/brainstormed/other
    eternal_compat = true, --can it be eternal
    perishable_compat = true, --can it be perishable
    pos = {x = 0, y = 2}, --position in atlas, starts at 0, scales by the atlas' card size (px and py): {x = 1, y = 0} would mean the sprite is 71 pixels to the right
    config = {
        extra = {
            Xmult = 3,            -- temporary mult on scored card (Ruby's effect)
            perma_x_mult = 0.25   -- permanent mult gain (Pearl's effect)
        }
    },
    loc_vars = function(self, info_queue, card)
        return {
            vars = {
                card.ability.extra.Xmult,
                card.ability.extra.perma_x_mult
            }
        }
    end,
    calculate = function(self, card, context)
        if context.individual and context.cardarea == G.play and context.scoring_name == 'Pair' then
            local oc = context.other_card
            -- Ruby-like temp mult boost
            local result = {
                Xmult_mod = card.ability.extra.Xmult,
                message = 'Captain Lars?!',
                card = oc,
                colour = G.C.MULT,
                func = function() oc:juice_up(0.6, 0.6) end
            }

            -- Pearl-like permanent mult boost
            oc.ability.perma_x_mult = (oc.ability.perma_x_mult or 0) + card.ability.extra.perma_x_mult

            return result
        end
    end,

    in_pool = function(self, current_shop_jokers, shop_level)
        -- Prevent this Joker from appearing in the shop if the player already owns one
        for _, owned in ipairs(G.jokers.cards) do
            if owned.key == self.key then
                return false
            end
        end
        return true
    end,
    
    -- Add the "UNIVERSE" badge at the bottom of the card
    set_badges = function(self, card, badges)
        badges[#badges + 1] = create_badge(
            "Steven Universe",          -- Text displayed on the badge
            G.C.PURPLE,          -- Badge background color
            G.C.EDITION,           -- Text color
            1                    -- Scaling factor (default size)
        )
    end,
}


SMODS.Joker{ -- Aventurine/Emerald (Fusion of Lapis + Peridot) [ has  bucnh of other names too]
    key = 'aventurine',
    loc_txt = {
        name = '{C:blue,E:1,s:1.15}E{C:green,E:1,s:1.15}m{C:blue,E:1,s:1.15}e{C:green,E:1,s:1.15}r{C:blue,E:1,s:1.15}a{C:green,E:1,s:1.15}l{C:blue,E:1,s:1.15}d{}',
        text = {
            '{X:dark_edition,C:white,E:1}^2{} {C:white,E:1,X:dark_edition}Mult{}.',
            'If {C:attention}played hand{} contains at least {C:attention}one{} scoring {C:attention}7{},',
            'creates {C:attention,E:1}3{} random {C:dark_edition,E:2}negative{T:edition_negative}{} consumables of {C:attention}each type{},',
            'and {C:attention,E:1}3{} {C:dark_edition,E:1}negative{} {C:spectral,E:1}Black Holes{}.',
            '{C:hearts,s:0.8}Guys, that\'s art!{}',
            '{C:green,s:0.8}\"Art\"? That sounds ridiculous!{}',
            '{C:blue,s:0.8}I\'ve been calling it{} {C:blue,s:0.8,E:1}\"meep-morp\".{}',
            '{C:dark_edition,s:0.75,E:1}Art by Mystic on Amino{}',
            '{C:dark_edition,s:0.75,E:1}(also known as Aventurine){}',
            '{E:1,s:0.7,C:legendary}- From \"Beta\"{}'
        }
    },
    atlas = 'Jokers',
    rarity = 'sbeven_Fusion', --rarity: 1 = Common, 2 = Uncommon, 3 = Rare, 4 = Legendary
    --soul_pos = { x = 0, y = 0 },
    cost = 45,
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = false,
    pos = {x = 2, y = 0},

	calculate = function(self, card, context)
		if context.joker_main then
			local seven_count = 0
			for i = 1, #context.scoring_hand do
				if context.scoring_hand[i]:get_id() == 7 then
					seven_count = seven_count + 1
				end
			end
			if seven_count >= 1 then
				G.E_MANAGER:add_event(Event({
					func = function()
						for i = 1, 3 do
							SMODS.add_card { key = 'c_black_hole', edition = 'e_negative' }
                            SMODS.add_card { set = 'Tarot', edition = 'e_negative' }
                            SMODS.add_card { set = 'Planet', edition = 'e_negative' }
                            SMODS.add_card { set = 'Spectral', edition = 'e_negative' }
                        end
						return true
					end
				}))
				return {
					message = "Ermískinesis!",
                    colour = G.C.EDITION,
                    e_mult = 2,
				}
			end
		end
	end,

    in_pool = function(self, current_shop_jokers, shop_level)
        -- Prevent this Joker from appearing in the shop if the player already owns one
        for _, owned in ipairs(G.jokers.cards) do
            if owned.key == self.key then
                return false
            end
        end
        return true
    end,
    
    -- Add the "UNIVERSE" badge at the bottom of the card
    set_badges = function(self, card, badges)
        badges[#badges + 1] = create_badge(
            "Steven Universe",          -- Text displayed on the badge
            G.C.PURPLE,          -- Badge background color
            G.C.EDITION,           -- Text color
            1                    -- Scaling factor (default size)
        )
    end,
}


SMODS.Joker{ -- Rainbow Quartz
    key = 'rainbow', --joker key
    loc_txt = {
        name = '{C:diamonds,s:1.15}R{C:hearts,s:1.15}a{C:diamonds,s:1.15}i{C:hearts,s:1.15}n{C:diamonds,s:1.15}b{C:hearts,s:1.15}o{C:diamonds,s:1.15}w{C:hearts,s:1.15} {C:diamonds,s:1.15}Q{C:hearts,s:1.15}u{C:diamonds,s:1.15}a{C:hearts,s:1.15}r{C:diamonds,s:1.15}t{C:hearts,s:1.15}z{}',
        text = {
            'Playing cards of {C:diamonds,E:2}Diamonds{} suit',
            'each give {X:mult,C:white}X5{} Mult and {C:white,X:dark_edition}^1.2{} {C:white,X:dark_edition,E:1}Mult{} when scored.',
            'All playing cards also {C:attention,E:1}permanently gain{}',
            '{X:mult,C:white}X0.75{} Mult when scored.',
            'Creates a {C:dark_edition,E:1}negative{} {C:attention}The Star{},',
            'if played hand contains a {C:attention}Flush{}.',
            '{C:purple,s:0.8}What can I do for you?{}',
            '{E:1,s:0.7,C:legendary}- From \"We Need to Talk\"{}',
        },
    },
    atlas = 'Jokers', --atlas' key
    rarity = 'sbeven_Fusion', --rarity: 1 = Common, 2 = Uncommon, 3 = Rare, 4 = Legendary
    --soul_pos = { x = 0, y = 0 },
    cost = 75,
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = false,
    pos = {x = 8, y = 1}, --position in atlas, starts at 0, scales by the atlas' card size (px and py): {x = 1, y = 0} would mean the sprite is 71 pixels to the right
    config = {
        extra = {
            Xmult = 5,            -- temporary mult on scored card (Ruby's effect)
            perma_x_mult = 0.75,   -- permanent mult gain (Pearl's effect)
            e_mult = 1.2
        }
    },
    calculate = function(self, card, context)
        local cfg   = self.config.extra or {}
        local perma = cfg.perma_x_mult or 0     -- 0.75
        local tmp   = cfg.Xmult        or 0     -- 5
      
        ----------------------------------------
        -- MAIN HAND PASS: spawn negative Star on any Flush
        if context.joker_main
           and (context.scoring_name == 'Flush'
                or context.scoring_name == 'Flush House'
                or context.scoring_name == 'Flush Five')
        then
          G.E_MANAGER:add_event(Event({
            func = function()
              SMODS.add_card{ key = 'c_star', edition = 'e_negative' }
              return true
            end
          }))
          -- **no return** here so we fall through to individual logic
        end
      
        ----------------------------------------
        -- PER‐CARD PASS: apply permanent bonus + Diamonds check
        if context.individual and context.cardarea == G.play then
          local scored = context.other_card
      
          -- 1) Permanent +0.75 on every scored card
          scored.ability.perma_x_mult = (scored.ability.perma_x_mult or 0) + perma
      
          -- 2) If that card is Diamonds suit, give temporary +5 Mult
          if scored.base.suit == 'Diamonds' then
            return {
              x_mult  = tmp,
              e_mult = 1.2,
              message = 'Glamourous!',
              colour  = G.C.MULT,
              func    = function() scored:juice_up(0.5, 0.5) end
            }
          end
      
          -- 3) Otherwise, no return = silent perma only
        end
      end,
      
    -- Add the "UNIVERSE" badge at the bottom of the card
    set_badges = function(self, card, badges)
        badges[#badges + 1] = create_badge(
            "Steven Universe",          -- Text displayed on the badge
            G.C.PURPLE,          -- Badge background color
            G.C.EDITION,           -- Text color
            1                    -- Scaling factor (default size)
        )
    end,
}


SMODS.Joker{ -- Rainbow 2.0
    key = 'rainbow2', --joker key
    loc_txt = {
        name = '{C:diamonds,s:1.13}R{C:hearts,s:1.13}a{C:diamonds,s:1.13}i{C:hearts,s:1.13}n{C:diamonds,s:1.13}b{C:hearts,s:1.13}o{C:diamonds,s:1.13}w{C:hearts,s:1.13} {C:diamonds,s:1.13}2{C:hearts,s:1.13}.{C:diamonds,s:1.13}0{}',
        text = {
            'Playing cards of {C:diamonds,E:2}Diamonds{} and {C:hearts,E:1}Hearts{} suits',
            'each give {X:mult,C:white}X3{} Mult when scored.',
            'All playing cards also {C:attention,E:1}permanently gain{}',
            '{X:mult,C:white}X0.5{} Mult when scored.',
            'Creates a {C:dark_edition,E:1}negative{} {C:attention}The Star{} and {C:attention}The Sun{},',
            'if played hand contains a {C:attention}Flush{}.',
            '{C:mult,s:0.8}Well, what do you know? It\'s Rainbow 2.0!{}',
            '{E:1,s:0.7,C:legendary}- From \"Change Your Mind\"{}'
        }
    },
    atlas = 'Jokers', --atlas' key
    rarity = 'sbeven_Fusion', --rarity: 1 = Common, 2 = Uncommon, 3 = Rare, 4 = Legendary
    --soul_pos = { x = 0, y = 0 },
    cost = 50,
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = false,
    pos = {x = 9, y = 1}, --position in atlas, starts at 0, scales by the atlas' card size (px and py): {x = 1, y = 0} would mean the sprite is 71 pixels to the right

    calculate = function(self, card, context)
        local cfg   = self.config.extra or {}
        local perma = cfg.perma_x_mult or 0.5     -- 0.75
        local tmp   = cfg.Xmult        or 3     -- 5
      
        ----------------------------------------
        -- MAIN HAND PASS: spawn negative Star on any Flush
        if context.joker_main
           and (context.scoring_name == 'Flush'
                or context.scoring_name == 'Flush House'
                or context.scoring_name == 'Flush Five')
        then
          G.E_MANAGER:add_event(Event({
            func = function()
              SMODS.add_card{ key = 'c_star', edition = 'e_negative' }
              SMODS.add_card{ key = 'c_sun', edition = 'e_negative' }
              return true
            end
          }))
          -- **no return** here so we fall through to individual logic
        end
      
        ----------------------------------------
        -- PER‐CARD PASS: apply permanent bonus + Diamonds check
        if context.individual and context.cardarea == G.play then
          local scored = context.other_card
      
          -- 1) Permanent +0.75 on every scored card
          scored.ability.perma_x_mult = (scored.ability.perma_x_mult or 0) + perma
      
          -- 2) If that card is Diamonds suit, give temporary +5 Mult
          if scored.base.suit == 'Diamonds' or scored.base.suit == 'Hearts' then
            return {
              x_mult  = tmp,
              message = 'That won\'t do!',
              colour  = G.C.MULT,
              func    = function() scored:juice_up(0.5, 0.5) end
            }
          end
      
          -- 3) Otherwise, no return = silent perma only
        end
      end,
      
    in_pool = function(self, current_shop_jokers, shop_level)
        -- Prevent this Joker from appearing in the shop if the player already owns one
        for _, owned in ipairs(G.jokers.cards) do
            if owned.key == self.key then
                return false
            end
        end
        return true
    end,
    
    -- Add the "UNIVERSE" badge at the bottom of the card
    set_badges = function(self, card, badges)
        badges[#badges + 1] = create_badge(
            "Steven Universe",          -- Text displayed on the badge
            G.C.PURPLE,          -- Badge background color
            G.C.EDITION,           -- Text color
            1                    -- Scaling factor (default size)
        )
    end,
}


SMODS.Joker{ -- Smokey Quartz
    key = 'smokey', --joker key
    loc_txt = {
        name = '{C:default,s:1.4}S{C:inactive,s:1.4}m{C:default,s:1.4}o{C:inactive,s:1.4}k{C:default,s:1.4}y{C:inactive,s:1.4} {C:default,s:1.4}Q{C:inactive,s:1.4}u{C:default,s:1.4}a{C:inactive,s:1.4}r{C:default,s:1.4}t{C:inactive,s:1.4}z{}',
        text = {
            'Playing cards of {C:hearts,E:1}Hearts{} and {C:diamonds,E:2}Diamonds{} suits',
            'each give {X:mult,C:white}X4{} Mult and {X:chips,C:white}X4{} Chips when scored.',
            'If played hand is a {C:attention}Five of a Kind{} or a {C:attention}Flush Five{},',
            'create {C:edition,E:1}A Single Pale Rose{}.',
            '{C:enhanced,s:0.8}I think a Rose Quartz and an Amethyst make a... Smoky Quartz!{}',
            '{C:legendary,s:0.7}- From \"Earthlings\"{}'

        }
    },
    atlas = 'Jokers', --atlas' key
    rarity = 'sbeven_Fusion', --rarity: 1 = Common, 2 = Uncommon, 3 = Rare, 4 = Legendary
    --soul_pos = { x = 0, y = 0 },
    cost = 50,
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = false,
    pos = {x = 5, y = 2}, --position in atlas, starts at 0, scales by the atlas' card size (px and py): {x = 1, y = 0} would mean the sprite is 71 pixels to the right

    config = {
        extra = {
            Xmult  = 4,
            Xchips = 4,
        }
    },

    calculate = function(self, card, context)
        if context.individual and context.cardarea == G.play then
            local scored = context.other_card
            local suit   = scored.base.suit
            if suit == 'Diamonds' or suit == 'Hearts' then
                return {
                    x_mult  = self.config.extra.Xmult,
                    x_chips = self.config.extra.Xchips,
                    message = 'What a BEAU-TI-FUL day!',
                    colour  = G.C.MULT,
                    func    = function() scored:juice_up(0.5, 0.5) end,
                }
            end
        end
        if context.joker_main and (context.scoring_name == 'Five of a Kind' 
        or context.scoring_name == 'Flush Five') then
            G.E_MANAGER:add_event(Event({ func = function()
                    SMODS.add_card{ key = 'j_sbeven_pale_rose', edition = 'e_negative' } 
                return true 
            end}))
            return {
                message = 'Nice to meet ya.',
                colour = G.C.EDITION,
            }
        end
    end,
    in_pool = function(self, current_shop_jokers, shop_level)
        -- Prevent this Joker from appearing in the shop if the player already owns one
        for _, owned in ipairs(G.jokers.cards) do
            if owned.key == self.key then
                return false
            end
        end
        return true
    end,
    
    -- Add the "UNIVERSE" badge at the bottom of the card
    set_badges = function(self, card, badges)
        badges[#badges + 1] = create_badge(
            "Steven Universe",          -- Text displayed on the badge
            G.C.PURPLE,          -- Badge background color
            G.C.EDITION,           -- Text color
            1                    -- Scaling factor (default size)
        )
    end,
}


SMODS.Joker{ -- Sunstone
    key = 'sunstone', --joker key
    loc_txt = {
        name = '{C:hearts}S{C:diamonds}u{C:hearts}n{C:diamonds}s{C:hearts}t{C:diamonds}o{C:hearts}n{C:diamonds}e{}',
        text = {
            'Played cards of {C:diamonds,E:2}Diamonds{} and {C:hearts,E:1}Hearts{} suits',
            'each give {X:mult,C:white}X10{} Mult and {X:chips,C:white}X10{} Chips when scored.',
            'Creates a {C:dark_edition,E:1}negative{} {C:attention}The Star{} and {C:attention}The Sun{},',
            'if played hand contains a {C:attention}Flush{}.',
            '{C:diamonds,s:0.8}Chillax, my dudes. Your rockin\' pal{} {C:diamonds,s:0.8,E:1}Sunstone{} {C:diamonds,s:0.8}is holdin\' it down.{}',
            '{C:legendary,s:0.7}- From \"Change Your Mind\"{}'
        }
    },
    atlas = 'Jokers', --atlas' key
    rarity = 'sbeven_Fusion', --rarity: 1 = Common, 2 = Uncommon, 3 = Rare, 4 = Legendary
    cost = 50,
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = false,
    pos = {x = 0, y = 3}, --position in atlas, starts at 0, scales by the atlas' card size (px and py): {x = 1, y = 0} would mean the sprite is 71 pixels to the right

    config = {
        extra = {
          Xmult = 10,
          Xchips = 10
        }
      },
    
      calculate = function(self, card, context)
        local cfg = self.config.extra or {}
        local tmpM = cfg.Xmult  or 0
        local tmpC = cfg.Xchips or 0
    
        ------------------------------------------------
        -- 1) Main‐hand pass: spawn tarot on any Flush
        if context.joker_main
          and (context.scoring_name == 'Flush'
               or context.scoring_name == 'Flush House'
               or context.scoring_name == 'Flush Five')
        then
          G.E_MANAGER:add_event(Event({
            func = function()
              SMODS.add_card{ key = 'c_sun',   edition = 'e_negative' }
              SMODS.add_card{ key = 'c_star',  edition = 'e_negative' }
              return true
            end
          }))
        end
    
        ------------------------------------------------
        -- 2) Per‐card pass: give X10/X10 on Diamonds or Hearts
        if context.individual and context.cardarea == G.play then
          local scored = context.other_card
          local suit   = scored.base.suit
    
          if suit == 'Diamonds' or suit == 'Hearts' then
            return {
              x_mult  = tmpM,
              x_chips = tmpC,
              message = 'Bungacowa!',
              colour  = G.C.MULT,
              func    = function() scored:juice_up(0.5, 0.5) end
            }
          end
        end
      end,
    in_pool = function(self, current_shop_jokers, shop_level)
        -- Prevent this Joker from appearing in the shop if the player already owns one
        for _, owned in ipairs(G.jokers.cards) do
            if owned.key == self.key then
                return false
            end
        end
        return true
    end,
    
    -- Add the "UNIVERSE" badge at the bottom of the card
    set_badges = function(self, card, badges)
        badges[#badges + 1] = create_badge(
            "Steven Universe",          -- Text displayed on the badge
            G.C.PURPLE,          -- Badge background color
            G.C.EDITION,           -- Text color
            1                    -- Scaling factor (default size)
        )
    end,
}

SMODS.Joker{ -- Sardonyx
    key = 'sardonyx', --joker key
    loc_txt = {
        name = '{C:gold,s:1.4}S{C:diamonds,s:1.4}a{C:gold,s:1.4}r{C:diamonds,s:1.4}d{C:gold,s:1.4}o{C:diamonds,s:1.4}n{C:gold,s:1.4}y{C:diamonds,s:1.4}x{}',
        text = {
            'Playing cards each give {X:mult,C:white}X12{} Mult and {X:chips,C:white}X12{} Chips when scored,',
            'if played hand contains a {C:attention,E:2}Three of a Kind{}.',
            'Playing cards also {C:attention,E:1}permanently gain{} {X:mult,C:white}X0.75{} Mult when scored.',
            'If played hand is a {C:attention}Five of a Kind{} or a {C:attention}Flush Five{},',
            'create {C:edition,E:1}A Single Pale Rose{}.',
            '{C:diamonds,s:0.8}Good evening, everybody! This is the lovely Sardonyx,{}',
            '{C:diamonds,s:0.8}coming to you a-live from the soon-to-be former Communication Hub!{}',
            '{C:diamonds,s:0.8}How are y\'all doin\' tonight?{}',
            '{C:legendary,s:0.7}- From \"Cry for Help\"{}'
        }
    },
    atlas = 'Jokers', --atlas' key
    rarity = 'sbeven_Fusion', --rarity: 1 = Common, 2 = Uncommon, 3 = Rare, 4 = Legendary
    cost = 50,
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = false,
    pos = {x = 4, y = 2}, --position in atlas, starts at 0, scales by the atlas' card size (px and py): {x = 1, y = 0} would mean the sprite is 71 pixels to the right

    config = {
        extra = {
            Xmult = 12,
            Xchips = 12,
            repetitions = 1,
            perma_x_mult = 0.75
        }
    },

    loc_vars = function(self, info_queue, card)
        return {
            vars = {
                card.ability.extra.Xmult,
                card.ability.extra.Xchips,
                card.ability.extra.perma_x_mult,
            }
        }
    end,

    calculate = function(self, card, context)
        if context.individual and context.cardarea == G.play then
            local oc = context.other_card
            oc.ability.perma_x_mult = (oc.ability.perma_x_mult or 0) + card.ability.extra.perma_x_mult

            if context.scoring_name == 'Three of a Kind'
            or context.scoring_name == 'Four of a Kind' 
            or context.scoring_name == 'Five of a Kind' 
            or context.scoring_name == 'Flush Five'
            or context.scoring_name == 'Full House' 
            or context.scoring_name == 'Flush House' then
                return {
                x_mult = 12,
                x_chips = 12,
                card = oc,
                colour = G.C.EDITION,
                message = 'Was I worth the wait?',
                func = function() oc:juice_up(0.5, 0.5) end
            }
        end
    end
    if context.joker_main and (context.scoring_name == 'Five of a Kind' 
    or context.scoring_name == 'Flush Five') then
        G.E_MANAGER:add_event(Event({ func = function()
                SMODS.add_card{ key = 'j_sbeven_pale_rose', edition = 'e_negative' } 
            return true 
        end}))
        return {
            message = 'Sardonyx Tonight!',
            colour = G.C.EDITION,
            x_mult = 100,
        }
    end
end,

    -- Add the "UNIVERSE" badge at the bottom of the card
    set_badges = function(self, card, badges)
        badges[#badges + 1] = create_badge(
            "Steven Universe",          -- Text displayed on the badge
            G.C.PURPLE,          -- Badge background color
            G.C.EDITION,           -- Text color
            1                    -- Scaling factor (default size)
        )
    end,
}


SMODS.Joker{ -- Sugilite
    key = 'sugilite', --joker key
    loc_txt = {
        name = '{C:purple,s:1.4}S{C:tarot,s:1.4}u{C:purple,s:1.4}g{C:tarot,s:1.4}i{C:purple,s:1.4}l{C:tarot,s:1.4}i{C:purple,s:1.4}t{C:tarot,s:1.4}e{}',
        text = {
            'Each played cards give {X:mult,C:white}X15{} Mult and {X:chips,C:white}X15{} Chips when scored,',
            'if played hand contains a {C:attention}Three of a Kind{}.',
            'Each played cards also {C:attention}permanently gains{} {X:chips,C:white}X0.75{} Mult when scored.',
            'If played hand is a {C:attention}Five of a Kind{} or a {C:attention}Flush Five{},',
            'create {C:edition,E:1}A Single Pale Rose{}.',
            '{C:tarot,s:0.8}You think you\'re something?{}',
            '{C:tarot,s:0.8}You ain\'t nothing!{}',
            '{C:legendary,s:0.7}- From \"Coach Steven\"{}'
        }
    },
    atlas = 'Jokers', --atlas' key
    rarity = 'sbeven_UFusion', --rarity: 1 = Common, 2 = Uncommon, 3 = Rare, 4 = Legendary
    --soul_pos = { x = 0, y = 0 },
    cost = 50,
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = false,
    pos = {x = 9, y = 2}, --position in atlas, starts at 0, scales by the atlas' card size (px and py): {x = 1, y = 0} would mean the sprite is 71 pixels to the right

    config = {
        extra = {
            Xmult = 15,
            Xchips = 15,
            repetitions = 1,
            perma_x_chips = 0.75
        }
    },

    loc_vars = function(self, info_queue, card)
        return {
            vars = {
                card.ability.extra.Xmult,
                card.ability.extra.Xchips,
                card.ability.extra.perma_x_chips,
            }
        }
    end,
    calculate = function(self, card, context)
        if context.individual and context.cardarea == G.play then
            local oc = context.other_card
    
            -- Apply permanent bonus always
            oc.ability.perma_x_chips = (oc.ability.perma_x_chips or 0) + card.ability.extra.perma_x_chips
    
            -- Temporary scoring bonus only if it's a Pair
            if context.scoring_name == 'Three of a Kind'
            or context.scoring_name == 'Four of a Kind' 
            or context.scoring_name == 'Five of a Kind' 
            or context.scoring_name == 'Flush Five'
            or context.scoring_name == 'Full House' 
            or context.scoring_name == 'Flush House' then
                return {
                    x_chips = 15,
                    x_mult = 15,
                    card = oc,
                    colour = G.C.CHIPS,
                    message = "You ain't nothing!",
                    func = function() oc:juice_up(0.6, 0.6) end
                }
            end
        end
        if context.joker_main and (context.scoring_name == 'Five of a Kind' 
        or context.scoring_name == 'Flush Five') then
            G.E_MANAGER:add_event(Event({ func = function()
                    SMODS.add_card{ key = 'j_sbeven_pale_rose', edition = 'e_negative' } 
                return true 
            end}))
            return {
                message = 'It feels great to be me!',
                colour = G.C.EDITION,
                x_mult = 100,
            }
        end
    end,
    -- Add the "UNIVERSE" badge at the bottom of the card
    set_badges = function(self, card, badges)
        badges[#badges + 1] = create_badge(
            "Steven Universe",          -- Text displayed on the badge
            G.C.PURPLE,          -- Badge background color
            G.C.EDITION,           -- Text color
            1                    -- Scaling factor (default size)
        )
    end,
}


SMODS.Joker{ -- Alexandrite
    key = 'alex', --joker key
    loc_txt = {
        name = '{C:tarot,E:1,s:1.7}A{C:enhanced,E:1,s:1.7}l{C:legendary,E:1,s:1.7}e{C:uncommon,E:1,s:1.7}x{C:tarot,E:1,s:1.7}a{C:enhanced,E:1,s:1.7}n{C:legendary,E:1,s:1.7}d{C:uncommon,E:1,s:1.7}r{C:tarot,E:1,s:1.7}i{C:enhanced,E:1,s:1.7}t{C:legendary,E:1,s:1.7}e{}',
        text = { 
            'Each played cards give {X:mult,C:white}X25{} Mult and {X:chips,C:white}X25{} Chips',
            'and {C:white,X:dark_edition}^1.5{} {C:white,X:dark_edition}Chips&Mult{} when scored,',
            'if played hand contains a {C:attention}Four of a Kind{}.',
            'Playing cards also {C:attention}permanently gain{} {X:mult,C:white}X1{} Mult and', 
            '{X:chips,C:white}X1{} Chips when scored.',
            'If played hand is a {C:attention}Five of a Kind{} or a {C:attention}Flush Five{},',
            'create {C:edition,E:1}A Single Pale Rose{} and gives {X:dark_edition,C:white}^2{} {C:white,X:dark_edition}Chips&Mult{}.',
            '{C:tarot,s:0.8}You{} {C:diamonds,s:0.8,E:2}t{}{C:blue,s:0.8}w{C:diamonds,s:0.8}o{} {C:tarot,s:0.8}should spennd some time apart.{}',
            '{C:legendary,s:0.7}- From \"Super Watermelon Island\"{}'
        }
    },
    atlas = 'Jokers', --atlas' key
    rarity = 'sbeven_Fusion', --rarity: 1 = Common, 2 = Uncommon, 3 = Rare, 4 = Legendary
    --soul_pos = { x = 0, y = 0 },
    cost = 50,
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = false,
    pos = {x = 0, y = 0}, --position in atlas, starts at 0, scales by the atlas' card size (px and py): {x = 1, y = 0} would mean the sprite is 71 pixels to the right

    config = {
        extra = {
            Xmult = 25,
            Xchips = 25,
            repetitions = 1,
            perma_x_mult = 1,
            perma_x_chips = 1
        }
    },
    loc_vars = function(self, info_queue, card)
        return {
            vars = {
                card.ability.extra.Xmult,
                card.ability.extra.Xchips,
                card.ability.extra.perma_x_mult,
                card.ability.extra.perma_x_chips
            }
        }
    end,
    calculate = function(self, card, context)
        if context.individual and context.cardarea == G.play then
            local oc = context.other_card

            oc.ability.perma_x_mult = (oc.ability.perma_x_mult or 0) + card.ability.extra.perma_x_mult
            oc.ability.perma_x_chips = (oc.ability.perma_x_chips or 0) + card.ability.extra.perma_x_chips

            if context.scoring_name == 'Four of a Kind' 
            or context.scoring_name == 'Five of a Kind' 
            or context.scoring_name == 'Flush Five' then
                return {
                    x_mult = 25,
                    x_chips = 25,
                    e_chips = 1.5,
                    e_mult = 1.5,
                    card = oc,
                    colour = G.C.EDITION,
                    message = 'Steveeen!',
                    func = function() oc:juice_up(0.5, 0.5) end
                }
            end
        end

        if context.joker_main and (context.scoring_name == 'Five of a Kind' 
        or context.scoring_name == 'Flush Five') then
            G.E_MANAGER:add_event(Event({ func = function()
                    SMODS.add_card{ key = 'j_sbeven_pale_rose', edition = 'e_negative' } 
                return true 
            end}))
            return {
                message = 'Hey! Don\'t forget about me!',
                colour = G.C.EDITION,
                e_mult = 2,
                e_chips = 2,
            }
        end
    end,
    -- Add the "UNIVERSE" badge at the bottom of the card
    set_badges = function(self, card, badges)
        badges[#badges + 1] = create_badge(
            "Steven Universe",          -- Text displayed on the badge
            G.C.PURPLE,          -- Badge background color
            G.C.EDITION,           -- Text color
            1                    -- Scaling factor (default size)
        )
    end,
}


SMODS.Joker{ -- Obsidian
    key = 'obsidian', --joker key
    loc_txt = {
        name = '{C:legendary,E:1,s:1.8}Obsidian{}',
        text = { 
            'Each played card gives {X:mult,C:white}X50{} Mult and {X:chips,C:white}X50{} Chips',
            'and {C:white,X:dark_edition}^2{} {C:white,X:dark_edition,E:1}Chips&Mult{} when scored,',
            'if played hand contains a {C:attention}Five of a Kind{}.',
            'Playing cards also {C:attention}permanently gain{} {X:mult,C:white}X2{} Mult and', 
            '{X:chips,C:white}X2{} Chips when scored.',
            'If played hand is a {C:attention}Five of a Kind{} or a {C:attention}Flush Five{},',
            'create {C:dark_edition,E:1}negative{} {C:attention}Black Hole{},',
            'a {C:dark_edition,E:1}negative{} {C:attention}Cryptid{},',
            'a {C:dark_edition,E:1}negative{} {C:attention}The Soul{}', 
            'and gives {X:dark_edition,C:white}^3{} {C:white,X:dark_edition,E:1}Chips&Mult{}.',
            '{C:green,s:0.8}They\'re huuuuge!{}',
            '{C:legendary,s:0.7}- From \"Change Your Mind\"{}'
        }
    },
    atlas = 'Jokers', --atlas' key
    rarity = 'sbeven_PFusion', --rarity: 1 = Common, 2 = Uncommon, 3 = Rare, 4 = Legendary
    --soul_pos = { x = 0, y = 0 },
    cost = 250,
    unlocked = true,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    perishable_compat = false,
    pos = {x = 2, y = 1}, --position in atlas, starts at 0, scales by the atlas' card size (px and py): {x = 1, y = 0} would mean the sprite is 71 pixels to the right

    config = {
        extra = {
            Xmult = 50,
            Xchips = 50,
            repetitions = 2,
            perma_x_mult = 2,
            perma_x_chips = 2
        }
    },
    loc_vars = function(self, info_queue, card)
        return {
            vars = {
                card.ability.extra.Xmult,
                card.ability.extra.Xchips,
                card.ability.extra.perma_x_mult,
                card.ability.extra.perma_x_chips
            }
        }
    end,
    calculate = function(self, card, context)
        if context.individual and context.cardarea == G.play then
            local oc = context.other_card

            oc.ability.perma_x_mult = (oc.ability.perma_x_mult or 0) + card.ability.extra.perma_x_mult
            oc.ability.perma_x_chips = (oc.ability.perma_x_chips or 0) + card.ability.extra.perma_x_chips

            if context.scoring_name == 'Five of a Kind' 
            or context.scoring_name == 'Flush Five' then
                return {
                    x_mult = 50,
                    x_chips = 50,
                    e_chips = 2,
                    e_mult = 2,
                    card = oc,
                    colour = G.C.EDITION,
                    message = 'Change Your Mind!',
                    func = function() oc:juice_up(0.5, 0.5) end
                }
            end
        end

        if context.joker_main and (context.scoring_name == 'Five of a Kind' 
        or context.scoring_name == 'Flush Five') then
            G.E_MANAGER:add_event(Event({ func = function()
                    SMODS.add_card{ key = 'c_black_hole', edition = 'e_negative' }
                    SMODS.add_card{ key = 'c_soul', edition = 'e_negative' } 
                    SMODS.add_card{ key = 'c_cryptid', edition = 'e_negative' }
                return true 
            end}))
            return {
                message = 'The Crystal Temple...',
                colour = G.C.EDITION,
                e_mult = 3,
                e_chips = 3,
            }
        end
    end,
    in_pool = function(self, current_shop_jokers, shop_level)
        -- Prevent duplicates in shop
        for _, owned in ipairs(G.jokers.cards) do
            if owned.key == self.key then return false end
        end
        return true
    end,

    -- Add the "UNIVERSE" badge at the bottom of the card
    set_badges = function(self, card, badges)
        badges[#badges + 1] = create_badge(
            "Steven Universe",          -- Text displayed on the badge
            G.C.PURPLE,          -- Badge background color
            G.C.EDITION,           -- Text color
            1                    -- Scaling factor (default size)
        )
    end,
}


SMODS.Joker{ --Zebra
    key = 'zebra', --joker key
    loc_txt = {
        name = '{C:diamonds}Z{C:gold}e{C:diamonds}b{C:gold}r{C:diamonds}a{C:gold} {C:diamonds}J{C:gold}a{C:diamonds}s{C:gold}p{C:diamonds}e{C:gold}r{}',
        text = {
            '{C:white,X:dark_edition,s:1.25,E:1}^1.75{} {C:white,X:mult}Mult{} and {C:white,X:dark_edition,s:1.25,E:1}^1.5{} {C:white,X:chips}Chips{} if played hand contains a {C:attention}Pair{}.',
            '{C:diamonds,s:0.8}I\'ve been fighting since I broke free from the Earth\'s crust!{}',
            '{C:diamonds,s:0.8}Because of what{} {C:hearts,s:0.8,E:1}you{} {C:diamonds,s:0.8}did to my colony,{}',
            '{C:diamonds,s:0.8}Because of what{} {C:hearts,s:0.8,E:1}you{} {C:diamonds,s:0.8}did to my planet,{}',
            '{C:diamonds,s:0.8}Because of what{} {C:hearts,s:0.8,E:1}you{} {C:diamonds,s:0.8}did to my{} {C:hearts,s:0.8,E:1}Diamond!{}',
            '{C:legendary,s:0.7}- From \"Earthlings\"{}'
        }
    },
    atlas = 'Jokers', --atlas' key
    rarity = 'sbeven_Monster', --rarity: 1 = Common, 2 = Uncommon, 3 = Rare, 4 = Legendary
    cost = 300,
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = false,
    pos = {x = 4, y = 3}, --position in atlas, starts at 0, scales by the atlas' card size (px and py): {x = 1, y = 0} would mean the sprite is 71 pixels to the right

    calculate = function(self, card, context)
        -- Global Joker-effects pass (once per hand)
        if context.cardarea == G.jokers and context.joker_main then
            local name = context.scoring_name or ""
    
            -- All hand names that contain at least one Pair
            local contains_pair = {
                ['Pair']            = true,
                ['Two Pair']        = true,
                ['Three of a Kind'] = true,
                ['Full House']      = true,
                ['Four of a Kind']  = true,
                -- SUMOD extras:
                ['Five of a Kind']  = true,
                ['Flush Five']      = true,
                ['Flush House']     = true,
            }
    
            if contains_pair[name] then
                return {
                    message  = 'My Diamond…',
                    e_mult   = 1.75,
                    e_chips  = 1.5,
                    colour   = G.C.EDITION,
                    card     = card
                }
            end
        end
    end,
    
    -- Add the "UNIVERSE" badge at the bottom of the card
    set_badges = function(self, card, badges)
        badges[#badges + 1] = create_badge(
            "Steven Universe",          -- Text displayed on the badge
            G.C.PURPLE,          -- Badge background color
            G.C.EDITION,           -- Text color
            1                    -- Scaling factor (default size)
        )
    end,
}


SMODS.Joker{ -- Corrupter Steven
    key = 'monster', --joker key
    loc_txt = {
        name = '{C:legendary,E:1,s:2}Corrupted Steven{}',
        text = {
            'Each playing card gives {E:1,C:white,X:dark_edition,s:1.25}^5{} {X:dark_edition,C:edition,E:1}Chips&Mult{}',
            'if played hand contains a {C:attention}High Card{}.',
            '{C:hearts,s:0.8}No! No-n-n-n-no! Th-Th-This isn\'t happening...! I didn\'t think about shattering{} {C:edition,s:0.8}White{}.',
            '{C:hearts,s:0.8}I-I-I didn\'t shatter{} {C:diamonds,s:0.8}Jasper{}. {C:hearts,s:0.8}I didn\'t fight with Dad.',
            '{C:hearts,s:0.8}I- I\'m Steven Universe! I\'m fine. I\'m fine!',
            '{C:legendary,s:0.7}- From \"Everything\'s Fine\"{}'

        }
    },
    atlas = 'Jokers', --atlas' key
    rarity = 'sbeven_Monster', --rarity: 1 = Common, 2 = Uncommon, 3 = Rare, 4 = Legendary
    --soul_pos = { x = 0, y = 0 },
    cost = 500,
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = false,
    pos = {x = 1, y = 1}, --position in atlas, starts at 0, scales by the atlas' card size (px and py): {x = 1, y = 0} would mean the sprite is 71 pixels to the right

    calculate = function(self, card, context)
        -- only run after the hand has been scored, in the global Joker-effects pass
        if context.card and context.scoring_hand then
            return {
                message  = 'I\'m a monster...',
                e_mult = 5,
                e_chips = 5,
                colour = G.C.EDITION,
                card = card
            }
        end
    end,

    -- Add the "UNIVERSE" badge at the bottom of the card
    set_badges = function(self, card, badges)
        badges[#badges + 1] = create_badge(
            "Steven Universe",          -- Text displayed on the badge
            G.C.PURPLE,          -- Badge background color
            G.C.EDITION,           -- Text color
            1                    -- Scaling factor (default size)
        )
    end,
}


SMODS.Joker{ -- Mega Pearl
    key = 'mega', --joker key
    loc_txt = {
        name = '{C:hearts,E:1,s:1.2}M{C:red,E:1,s:1.2}e{C:hearts,E:1,s:1.2}g{C:red,E:1,s:1.2}a{C:hearts,E:1,s:1.2} {C:red,E:1,s:1.2}P{C:hearts,E:1,s:1.2}e{C:red,E:1,s:1.2}a{C:hearts,E:1,s:1.2}r{C:red,E:1,s:1.2}l{}',
        text = {
            'All playing cards {C:attention,E:1}permanently gain{}', 
            '{X:mult,C:white,E:1}X0.5{} Mult and {X:chips,C:white,E:1}X0.5{} Chips when scored.',
            'If played hand is a {C:attention,E:1}Pair{}, create a {C:dark_edition,E:1}negative Spectral card.{}',
            '{C:hearts,s:0.8,E:1}Your mother\'s Pearls{} {C:hearts,s:0.8}never had the whole picture.{}',
            '{C:hearts,s:0.8}One knew{} {C:hearts,s:0.8,E:1}your mother{} {C:hearts,s:0.8}was trying to change,{}',
            '{C:hearts,s:0.8}but she couldn\'t understand why.{}',
            '{C:hearts,s:0.8}The other never expected her to change at all.{}',
            '{C:hearts,s:0.8}Now, I get to understand everything.{}',
            '{C:hearts,s:0.8}Now, they finally get to have each other.{}',
            '{C:legendary,s:0.7}- From \"Volleyball\"{}'

        }
    },
    atlas = 'Jokers', --atlas' key
    rarity = 'sbeven_Fusion', --rarity: 1 = Common, 2 = Uncommon, 3 = Rare, 4 = Legendary
    --soul_pos = { x = 0, y = 0 },
    cost = 75,
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = false,
    pos = {x = 0, y = 1}, --position in atlas, starts at 0, scales by the atlas' card size (px and py): {x = 1, y = 0} would mean the sprite is 71 pixels to the right

    config = {
        extra = {
            perma_x_mult = 0.5, --configurable value
            perma_x_chips = 0.5, --configurable value
        }
    },
    --loc_vars = function(self, info_queue, card)
    --    return {vars = {card.ability.extra.perma_x_mult, card.ability.extra.perma_x_chips}} --displays configurable value: the #1# in the description is replaced with the configurable value
    --end,
    calculate = function(self, card, context)
        if context.individual and context.cardarea == G.play then
            local oc = context.other_card
            oc.ability.perma_x_mult = oc.ability.perma_x_mult or 0
            oc.ability.perma_x_chips = oc.ability.perma_x_chips or 0
            oc.ability.perma_x_mult = oc.ability.perma_x_mult + 0.5
            oc.ability.perma_x_chips = oc.ability.perma_x_chips + 0.5
            return { 
                extra = { message = 'It\'s up to you now, Steven.', color = G.C.SUITS.Hearts }
            }
        end
        if context.joker_main and context.scoring_name == 'Pair' then
            G.E_MANAGER:add_event(Event({ func = function()
                    SMODS.add_card{ set = 'Spectral', edition = 'e_negative' } 
                return true 
            end}))
            return {
                message = 'Pink...',
                colour = G.C.EDITION,
            }
        end
    end,
    -- Add the "UNIVERSE" badge at the bottom of the card
    set_badges = function(self, card, badges)
        badges[#badges + 1] = create_badge(
            "Steven Universe",          -- Text displayed on the badge
            G.C.PURPLE,          -- Badge background color
            G.C.EDITION,           -- Text color
            1                    -- Scaling factor (default size)
        )
    end,
}


--[[SMODS.ConsumableType{
    key = 'UniverseConsumableType', --consumable type key

    collection_rows = {4,5}, --amount of cards in one page
    primary_colour = G.C.PURPLE, --first color
   secondary_colour = G.C.DARK_EDITION, --second color
    loc_txt = {
        collection = 'Universe Cards', --name displayed in collection
        name = 'UNIVERSE', --name displayed in badge
        undiscovered = {
            name = 'Corruption', --undiscovered name
            text = {'If it wasn\'t for {C:hearts}Rose\'s shield...'} --undiscovered text
        }
    },
    shop_rate = 1, --rate in shop out of 100
}


--SMODS.UndiscoveredSprite{
    key = 'UniverseConsumableType', --must be the same key as the consumabletype
    atlas = 'Consumables', --atlas key
    pos = {x = 0, y = 0}
}


SMODS.Consumable{
    key = 'Universe', --key
    set = 'UniverseConsumableType', --the set of the card: corresponds to a consumable type
    atlas = 'Consumables', --atlas
   pos = {x = 0, y = 0}, --position in atlas
    loc_txt = {
        name = '{C:edition}Corruption Induction{}', --name of card
        text = { --text of card
            'Add {C:dark_edition}negative{} to up to {C:attention}#1#{} selected cards.',
            '{C:attention,E:2}Also{} creates {C:dark_edition,E:1}A Single Pale Rose{}.',
            '{C:inactive,s:0.8,C:clubs}Oh, stars! How did you survive?{}',
           '{C:inactive,s:0.8,C:clubs}We blasted the planet and obliterated every gem on its surface.{}',
            '{C:inactive,s:0.7,C:legendary}- From \"Legs From Here to Homeworld\"{}'
        }
    },
    config = {
       extra = {
            cards = 5, --configurable value
        }
    },
    loc_vars = function(self,info_queue, center)
        return {vars = {center.ability.extra.cards}} --displays configurable value: the #1# in the description is replaced with the configurable value
    end,
    can_use = function(self,card)
        if G and G.hand then
            if #G.hand.highlighted ~= 0 and #G.hand.highlighted <= card.ability.extra.cards then --if cards in hand highlighted are above 0 but below the configurable value then
                return true
            end
        end
        return false
    end,
   use = function(self,card,area,copier)
        for i = 1, #G.hand.highlighted do 
            --for every card in hand highlighted

            G.hand.highlighted[i]:set_edition({negative = true},true)
            --set their edition to negative
        end
        local new_joker = create_card(
            'Joker',               -- pool
            G.jokers,              -- area
            nil, nil, nil, nil,    -- skip rarity, legendary, etc.
           'j_sbeven_pale_rose'   -- specific Joker ID
        )

        new_joker:add_to_deck()
        G.jokers:emplace(new_joker)
    end,
}]]

  
  
----------------------------------------------
------------MOD CODE END----------------------
    
