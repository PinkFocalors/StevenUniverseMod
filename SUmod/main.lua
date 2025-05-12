--- STEAMODDED HEADER
--- MOD_NAME: Steven Universe Mod
--- MOD_ID: SUMOD
--- MOD_AUTHOR: [Pink Focalors]
--- MOD_DESCRIPTION: Trying to add some Steven Universe themed jokers. Also contains other mods as dependencies. ExampleMod, JellyJokers, Salt & Panasco, etc.
--- PREFIX: sbeven
--- PRIORITY: -9999
--- BADGE_COLOR: #FF00FF
--- BADGE_TEXT_COLOR: #DC143C

----------------------------------------------
------------MOD CODE -------------------------

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
    key = "Off", 
    loc_txt = { name = "Off-Colors" },
    badge_colour = HEX("7f6a93"),  -- background color 
    badge_text_colour = HEX("c4b7d0"),  -- text color
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

SMODS.Rarity{
    key = "Unobtainable", 
    loc_txt = { name = "Unobtainable" },
    badge_colour = HEX("000000"),  -- background color 
    badge_text_colour = HEX("FF0000"),  -- text color
    pools = { ["Joker"] = false },
    default_weight = 0
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

SMODS.Atlas{ --- for Lapis
    key = "Ruby", --atlas key
    path = "Ruby.png", --atlas' path in (yourMod)/assets/1x or (yourMod)/assets/2x
    px = 71, --width of one card
    py = 95 -- height of one card
}

SMODS.Atlas{ --- for Moonstone
    key = "moon", --atlas key
    path = "Moonstone.png", --atlas' path in (yourMod)/assets/1x or (yourMod)/assets/2x
    px = 71, --width of one card
    py = 95 -- height of one card
}

SMODS.Atlas{ --- for Bloodstone
    key = "blood", --atlas key
    path = "Bloodstone.png", --atlas' path in (yourMod)/assets/1x or (yourMod)/assets/2x
    px = 71, --width of one card
    py = 95 -- height of one card
}

SMODS.Atlas{ --- for Lars
    key = "Lars", --atlas key
    path = "Lars.png", --atlas' path in (yourMod)/assets/1x or (yourMod)/assets/2x
    px = 71, --width of one card
    py = 95 -- height of one card
}

SMODS.Atlas{ --- for Captain Lars
    key = "CLars", --atlas key
    path = "Captain_Lars.png", --atlas' path in (yourMod)/assets/1x or (yourMod)/assets/2x
    px = 71, --width of one card
    py = 95 -- height of one card
}

SMODS.Atlas{ --- for Padparadcha
    key = "Padparadscha", --atlas key
    path = "Padparadscha.png", --atlas' path in (yourMod)/assets/1x or (yourMod)/assets/2x
    px = 71, --width of one card
    py = 95 -- height of one card
}

SMODS.Atlas{ --- for the Twins
    key = "Rutile", --atlas key
    path = "Rutile.png", --atlas' path in (yourMod)/assets/1x or (yourMod)/assets/2x
    px = 71, --width of one card
    py = 95 -- height of one card
}

SMODS.Atlas{ --- for the Fluorite
    key = "Fluorite", --atlas key
    path = "Fluorite.png", --atlas' path in (yourMod)/assets/1x or (yourMod)/assets/2x
    px = 71, --width of one card
    py = 95 -- height of one card
}

SMODS.Atlas{ --- for Blood Money
    key = "bloodM", --atlas key
    path = "BloodMoney.png", --atlas' path in (yourMod)/assets/1x or (yourMod)/assets/2x
    px = 71, --width of one card
    py = 95 -- height of one card
}

SMODS.Atlas{ --- for Rejuvenator
    key = "Rejuvenator", --atlas key
    path = "Rejuvenator.png", --atlas' path in (yourMod)/assets/1x or (yourMod)/assets/2x
    px = 71, --width of one card
    py = 95 -- height of one card
}

SMODS.Atlas{ --- for Connies' Sword
    key = "ConnieW", --atlas key
    path = "ConnieSword.png", --atlas' path in (yourMod)/assets/1x or (yourMod)/assets/2x
    px = 71, --width of one card
    py = 95 -- height of one card
}

SMODS.Atlas{ --- for Stevonnie's Weapons
    key = "StevonnieW", --atlas key
    path = "StevonnieWeapons.png", --atlas' path in (yourMod)/assets/1x or (yourMod)/assets/2x
    px = 71, --width of one card
    py = 95 -- height of one card
}

SMODS.Atlas{ --- for Steven's Shield
    key = "StevenS", --atlas key
    path = "StevenShield.png", --atlas' path in (yourMod)/assets/1x or (yourMod)/assets/2x
    px = 71, --width of one card
    py = 95 -- height of one card
}

SMODS.Atlas{ --- for Mega Pearl's Weapon
    key = "RibbonWand", --atlas key
    path = "RibbonWand.png", --atlas' path in (yourMod)/assets/1x or (yourMod)/assets/2x
    px = 71, --width of one card
    py = 95 -- height of one card
}

SMODS.Atlas{ --- for Mega Pearl's Weapon
    key = "DrillWand", --atlas key
    path = "DrillWand.png", --atlas' path in (yourMod)/assets/1x or (yourMod)/assets/2x
    px = 71, --width of one card
    py = 95 -- height of one card
}

SMODS.Atlas{ --- for Obsidian
    key = "Obsidian", --atlas key
    path = "Obsidian.png", --atlas' path in (yourMod)/assets/1x or (yourMod)/assets/2x
    px = 71, --width of one card
    py = 95 -- height of one card
}

SMODS.Atlas{ --- for Obsidian's Greatsword
    key = "ObsidianSword", --atlas key
    path = "ObsidianSword.png", --atlas' path in (yourMod)/assets/1x or (yourMod)/assets/2x
    px = 71, --width of one card
    py = 95 -- height of one card
}

SMODS.Atlas{ --- for Black Diamond
    key = "Black", --atlas key
    path = "BlackDiamond.png", --atlas' path in (yourMod)/assets/1x or (yourMod)/assets/2x
    px = 71, --width of one card
    py = 95 -- height of one card
}

SMODS.Atlas{ --- for Aventurine
    key = "Aventurine", --atlas key
    path = "Aventurine.png", --atlas' path in (yourMod)/assets/1x or (yourMod)/assets/2x
    px = 71, --width of one card
    py = 95 -- height of one card
}

FusionJokers.fusions:add_fusion( -- Bloodstone Fusion
'j_sbeven_garnet', --string, component joker's key
nil, --string, name of stat to carry into fusion
false, --boolean, is the carry stat in an "extra" table or not
'j_sbeven_peridot', -- same as 1, but for the other component joker
nil, -- same
false, -- same
'j_sbeven_blood', --result of fusion 
75 --cost to fuse
)

FusionJokers.fusions:add_fusion( -- Captain Lars Fusion
'j_sbeven_lars', --string, component joker's key
nil, --string, name of stat to carry into fusion
false, --boolean, is the carry stat in an "extra" table or not
'j_sbeven_pale_rose', -- same as 1, but for the other component joker
nil, -- same
false, -- same
'j_sbeven_clars', --result of fusion 
75 --cost to fuse
)

FusionJokers.fusions:add_fusion( -- Moonstone Fusion
'j_sbeven_sapphire', --string, component joker's key
nil, --string, name of stat to carry into fusion
false, --boolean, is the carry stat in an "extra" table or not
'j_sbeven_pearl', -- same as 1, but for the other component joker
nil, -- same
false, -- same
'j_sbeven_moon', --result of fusion 
75 --cost to fuse
)

FusionJokers.fusions:add_fusion( -- Moonstone Fusion 2
'j_sbeven_sapphire', --string, component joker's key
nil, --string, name of stat to carry into fusion
false, --boolean, is the carry stat in an "extra" table or not
'j_sbeven_volleyball', -- same as 1, but for the other component joker
nil, -- same
false, -- same
'j_sbeven_moon', --result of fusion 
75 --cost to fuse
)

--[[FusionJokers.fusions:add_fusion( -- Rose Quartz Fusion
'j_sbeven_pale_rose', --string, component joker's key
nil, --string, name of stat to carry into fusion
false, --boolean, is the carry stat in an "extra" table or not
'j_greedy_joker', -- same as 1, but for the other component joker
nil, -- same
false, -- same
'j_sbeven_rose', --result of fusion 
10 --cost to fuse
)]]

FusionJokers.fusions:add_fusion( -- Monster Steven Fusion
'j_sbeven_corruption', --string, component joker's key
nil, --string, name of stat to carry into fusion
false, --boolean, is the carry stat in an "extra" table or not
'j_sbeven_steven', -- same as 1, but for the other component joker
nil, -- same
false, -- same
'j_sbeven_monster', --result of fusion 
1000 --cost to fuse
)

FusionJokers.fusions:add_fusion( -- Zebra Jasper Fusion
'j_sbeven_corruption', --string, component joker's key
nil, --string, name of stat to carry into fusion
false, --boolean, is the carry stat in an "extra" table or not
'j_sbeven_jasper', -- same as 1, but for the other component joker
nil, -- same
false, -- same
'j_sbeven_zebra', --result of fusion 
250 --cost to fuse
)

FusionJokers.fusions:add_fusion( -- White Diamond Fusion
'j_sbeven_pale_rose', --string, component joker's key
nil, --string, name of stat to carry into fusion
false, --boolean, is the carry stat in an "extra" table or not
'j_sbeven_pink', -- same as 1, but for the other component joker
nil, -- same
false, -- same
'j_sbeven_white', --result of fusion 
750 --cost to fuse
)

FusionJokers.fusions:add_fusion( -- Blue Diamond Fusion
'j_sbeven_lapis', --string, component joker's key
nil, --string, name of stat to carry into fusion
false, --boolean, is the carry stat in an "extra" table or not
'j_sbeven_pale_rose', -- same as 1, but for the other component joker
nil, -- same
false, -- same
'j_sbeven_blue', --result of fusion 
400 --cost to fuse
)

FusionJokers.fusions:add_fusion( -- Yellow Diamond Fusion
'j_sbeven_jasper', --string, component joker's key
nil, --string, name of stat to carry into fusion
false, --boolean, is the carry stat in an "extra" table or not
'j_sbeven_pale_rose', -- same as 1, but for the other component joker
nil, -- same
false, -- same
'j_sbeven_yellow', --result of fusion 
400 --cost to fuse
)

FusionJokers.fusions:add_fusion( -- Mega Pearl Fusion
'j_sbeven_pearl', --string, component joker's key
nil, --string, name of stat to carry into fusion
false, --boolean, is the carry stat in an "extra" table or not
'j_sbeven_volleyball', -- same as 1, but for the other component joker
nil, -- same
false, -- same
'j_sbeven_mega', --result of fusion 
75 --cost to fuse
)

FusionJokers.fusions:add_fusion( -- Stevonnie Fusion
'j_sbeven_steven', --string, component joker's key
nil, --string, name of stat to carry into fusion
false, --boolean, is the carry stat in an "extra" table or not
'j_sbeven_connie', -- same as 1, but for the other component joker
nil, -- same
false, -- same
'j_sbeven_stevonnie', --result of fusion 
75 --cost to fuse
)

--[[FusionJokers.fusions:add_fusion( --Perkeo Fusion
'j_joker', --string, component joker's key
nil, --string, name of stat to carry into fusion
false, --boolean, is the carry stat in an "extra" table or not
'j_sbeven_pale_rose', -- same as 1, but for the other component joker
nil, -- same
false, -- same
'j_perkeo', --result of fusion 
75 --cost to fuse
)]]

FusionJokers.fusions:add_fusion( -- Healed Lapis Fusion
'j_sbeven_cracked_lapis', --string, component joker's key
nil, --string, name of stat to carry into fusion
false, --boolean, is the carry stat in an "extra" table or not
'j_sbeven_pale_rose', -- same as 1, but for the other component joker
nil, -- same
false, -- same
'j_sbeven_lapis', --result of fusion 
75 --cost to fuse
)

FusionJokers.fusions:add_fusion( -- Aventurine Fusion
'j_sbeven_lapis', --string, component joker's key
nil, --string, name of stat to carry into fusion
false, --boolean, is the carry stat in an "extra" table or not
'j_sbeven_peridot', -- same as 1, but for the other component joker
nil, -- same
false, -- same
'j_sbeven_aventurine', --result of fusion 
75 --cost to fuse
)

FusionJokers.fusions:add_fusion( -- Pink Diamond Fusion 1
'j_sbeven_rose', --string, component joker's key
nil, --string, name of stat to carry into fusion
false, --boolean, is the carry stat in an "extra" table or not
'j_sbeven_pale_rose', -- same as 1, but for the other component joker
nil, -- same
false, -- same
'j_sbeven_pink', --result of fusion 
75 --cost to fuse
)

FusionJokers.fusions:add_fusion( -- Pink Diamond Fusion 2
'j_sbeven_steven', --string, component joker's key
nil, --string, name of stat to carry into fusion
false, --boolean, is the carry stat in an "extra" table or not
'j_sbeven_rose', -- same as 1, but for the other component joker
nil, -- same
false, -- same
'j_sbeven_pink', --result of fusion 
75 --cost to fuse
)

FusionJokers.fusions:add_fusion( -- Pink Diamond Fusion 3
'j_sbeven_steven', --string, component joker's key
nil, --string, name of stat to carry into fusion
false, --boolean, is the carry stat in an "extra" table or not
'j_sbeven_pale_rose', -- same as 1, but for the other component joker
nil, -- same
false, -- same
'j_sbeven_pink', --result of fusion 
75 --cost to fuse
)

FusionJokers.fusions:add_fusion( -- Pink Diamond Fusion 4
'j_sbeven_volleyball', --string, component joker's key
nil, --string, name of stat to carry into fusion
false, --boolean, is the carry stat in an "extra" table or not
'j_sbeven_pale_rose', -- same as 1, but for the other component joker
nil, -- same
false, -- same
'j_sbeven_pink', --result of fusion 
75 --cost to fuse
)

FusionJokers.fusions:add_fusion( -- Malachite Fusion
'j_sbeven_lapis', --string, component joker's key
nil, --string, name of stat to carry into fusion
false, --boolean, is the carry stat in an "extra" table or not
'j_sbeven_jasper', -- same as 1, but for the other component joker
nil, -- same
false, -- same
'j_sbeven_malachite', --result of fusion 
75 --cost to fuse
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
500 --cost to fuse
)

FusionJokers.fusions:add_fusion( -- Obsidian Fusion 2 (Alexandrite & Rose)
'j_sbeven_alex', --string, component joker's key
nil, --string, name of stat to carry into fusion
false, --boolean, is the carry stat in an "extra" table or not
'j_sbeven_rose', -- same as 1, but for the other component joker
nil, -- same
false, -- same
'j_sbeven_obsidian', --result of fusion 
500 --cost to fuse
)

FusionJokers.fusions:add_fusion( -- Obsidian Fusion 3 (Opal & Sunstone)
'j_sbeven_opal', --string, component joker's key
nil, --string, name of stat to carry into fusion
false, --boolean, is the carry stat in an "extra" table or not
'j_sbeven_sunstone', -- same as 1, but for the other component joker
nil, -- same
false, -- same
'j_sbeven_obsidian', --result of fusion 
500 --cost to fuse
)

FusionJokers.fusions:add_fusion( -- Obsidian Fusion 4 (Rainbow & Sugilite)
'j_sbeven_rainbow', --string, component joker's key
nil, --string, name of stat to carry into fusion
false, --boolean, is the carry stat in an "extra" table or not
'j_sbeven_sugilite', -- same as 1, but for the other component joker
nil, -- same
false, -- same
'j_sbeven_obsidian', --result of fusion 
500 --cost to fuse
)

FusionJokers.fusions:add_fusion( -- Obsidian Fusion 5 (Rainbow 2.0 & Sugilite)
'j_sbeven_rainbow2', --string, component joker's key
nil, --string, name of stat to carry into fusion
false, --boolean, is the carry stat in an "extra" table or not
'j_sbeven_sugilite', -- same as 1, but for the other component joker
nil, -- same
false, -- same
'j_sbeven_obsidian', --result of fusion 
500 --cost to fuse
)

FusionJokers.fusions:add_fusion( -- Obsidian Fusion 6 (Sardonyx & Smokey)
'j_sbeven_smokey', --string, component joker's key
nil, --string, name of stat to carry into fusion
false, --boolean, is the carry stat in an "extra" table or not
'j_sbeven_sardonyx', -- same as 1, but for the other component joker
nil, -- same
false, -- same
'j_sbeven_obsidian', --result of fusion 
500 --cost to fuse
)

FusionJokers.fusions:add_fusion( -- Obsidian Fusion 7 (Stevonnie & Alexandrite)
'j_sbeven_stevonnie', --string, component joker's key
nil, --string, name of stat to carry into fusion
false, --boolean, is the carry stat in an "extra" table or not
'j_sbeven_alex', -- same as 1, but for the other component joker
nil, -- same
false, -- same
'j_sbeven_obsidian', --result of fusion 
500 --cost to fuse
)

FusionJokers.fusions:add_fusion( -- Opal Fusion
'j_sbeven_pearl', --string, component joker's key
nil, --string, name of stat to carry into fusion
false, --boolean, is the carry stat in an "extra" table or not
'j_sbeven_amethyst', -- same as 1, but for the other component joker
nil, -- same
false, -- same
'j_sbeven_opal', --result of fusion 
75 --cost to fuse
)

FusionJokers.fusions:add_fusion( -- Opal Fusion 2
'j_sbeven_volleyball', --string, component joker's key
nil, --string, name of stat to carry into fusion
false, --boolean, is the carry stat in an "extra" table or not
'j_sbeven_amethyst', -- same as 1, but for the other component joker
nil, -- same
false, -- same
'j_sbeven_opal', --result of fusion 
75 --cost to fuse
)

FusionJokers.fusions:add_fusion( -- Garnet Fusion
'j_sbeven_ruby', --string, component joker's key
nil, --string, name of stat to carry into fusion
false, --boolean, is the carry stat in an "extra" table or not
'j_sbeven_sapphire', -- same as 1, but for the other component joker
nil, -- same
false, -- same
'j_sbeven_garnet', --result of fusion 
75 --cost to fuse
)

FusionJokers.fusions:add_fusion( -- Garnet Fusion 2
'j_sbeven_ruby', --string, component joker's key
nil, --string, name of stat to carry into fusion
false, --boolean, is the carry stat in an "extra" table or not
'j_sbeven_pad', -- same as 1, but for the other component joker
nil, -- same
false, -- same
'j_sbeven_garnet', --result of fusion 
75 --cost to fuse
)

FusionJokers.fusions:add_fusion( -- Rhodonite Fusion
'j_sbeven_ruby', --string, component joker's key
nil, --string, name of stat to carry into fusion
false, --boolean, is the carry stat in an "extra" table or not
'j_sbeven_pearl', -- same as 1, but for the other component joker
nil, -- same
false, -- same
'j_sbeven_rhodonite_off', --result of fusion 
75 --cost to fuse
)

FusionJokers.fusions:add_fusion( -- Rhodonite Fusion 2
'j_sbeven_ruby', --string, component joker's key
nil, --string, name of stat to carry into fusion
false, --boolean, is the carry stat in an "extra" table or not
'j_sbeven_volleyball', -- same as 1, but for the other component joker
nil, -- same
false, -- same
'j_sbeven_rhodonite_off', --result of fusion 
75 --cost to fuse
)

FusionJokers.fusions:add_fusion( -- Alexandrite Fusion (Sugilite & Pearl)
'j_sbeven_sugilite', --string, component joker's key
nil, --string, name of stat to carry into fusion
false, --boolean, is the carry stat in an "extra" table or not
'j_sbeven_pearl', -- same as 1, but for the other component joker
nil, -- same
false, -- same
'j_sbeven_alex', --result of fusion 
250 --cost to fuse
)

FusionJokers.fusions:add_fusion( -- Alexandrite Fusion 2 (Sardonyx & Amethyst)
'j_sbeven_sardonyx', --string, component joker's key
nil, --string, name of stat to carry into fusion
false, --boolean, is the carry stat in an "extra" table or not
'j_sbeven_amethyst', -- same as 1, but for the other component joker
nil, -- same
false, -- same
'j_sbeven_alex', --result of fusion 
250 --cost to fuse
)

FusionJokers.fusions:add_fusion( -- Alexandrite Fusion 3 (Opal & Garnet)
'j_sbeven_opal', --string, component joker's key
nil, --string, name of stat to carry into fusion
false, --boolean, is the carry stat in an "extra" table or not
'j_sbeven_garnet', -- same as 1, but for the other component joker
nil, -- same
false, -- same
'j_sbeven_alex', --result of fusion 
250 --cost to fuse
)

FusionJokers.fusions:add_fusion( -- Sardonyx Fusion 1 (Rhodonite & Sapphire)
'j_sbeven_rhodonite_off', --string, component joker's key
nil, --string, name of stat to carry into fusion
false, --boolean, is the carry stat in an "extra" table or not
'j_sbeven_sapphire', -- same as 1, but for the other component joker
nil, -- same
false, -- same
'j_sbeven_sardonyx', --result of fusion 
125 --cost to fuse
)

FusionJokers.fusions:add_fusion( -- Sardonyx Fusion 2 (Garnet & Pearl)
'j_sbeven_garnet', --string, component joker's key
nil, --string, name of stat to carry into fusion
false, --boolean, is the carry stat in an "extra" table or not
'j_sbeven_pearl', -- same as 1, but for the other component joker
nil, -- same
false, -- same
'j_sbeven_sardonyx', --result of fusion 
125 --cost to fuse
)

FusionJokers.fusions:add_fusion( -- Sardonyx Fusion 3 (Ruby + Fusion of Pearl & Sapphire)
'j_sbeven_ruby', --string, component joker's key
nil, --string, name of stat to carry into fusion
false, --boolean, is the carry stat in an "extra" table or not
'j_sbeven_moon', -- same as 1, but for the other component joker
nil, -- same
false, -- same
'j_sbeven_sardonyx', --result of fusion 
125 --cost to fuse
)

FusionJokers.fusions:add_fusion( -- Sugilite Fusion 1 (Garnet & Amethyst)
'j_sbeven_garnet', --string, component joker's key
nil, --string, name of stat to carry into fusion
false, --boolean, is the carry stat in an "extra" table or not
'j_sbeven_amethyst', -- same as 1, but for the other component joker
nil, -- same
false, -- same
'j_sbeven_sugilite', --result of fusion 
125 --cost to fuse
)

FusionJokers.fusions:add_fusion( -- Rainbow Quartz Fusion (Rose & Pearl)
'j_sbeven_rose', --string, component joker's key
nil, --string, name of stat to carry into fusion
false, --boolean, is the carry stat in an "extra" table or not
'j_sbeven_pearl', -- same as 1, but for the other component joker
nil, -- same
false, -- same
'j_sbeven_rainbow', --result of fusion 
75 --cost to fuse
)

FusionJokers.fusions:add_fusion( -- Rainbow Quartz Fusion 2 (Rose & Volleyball)
'j_sbeven_rose', --string, component joker's key
nil, --string, name of stat to carry into fusion
false, --boolean, is the carry stat in an "extra" table or not
'j_sbeven_volleyball', -- same as 1, but for the other component joker
nil, -- same
false, -- same
'j_sbeven_rainbow', --result of fusion 
75 --cost to fuse
)

FusionJokers.fusions:add_fusion( -- Rainbow Quartz 2.0 Fusion (Steven & Pearl)
'j_sbeven_steven', --string, component joker's key
nil, --string, name of stat to carry into fusion
false, --boolean, is the carry stat in an "extra" table or not
'j_sbeven_pearl', -- same as 1, but for the other component joker
nil, -- same
false, -- same
'j_sbeven_rainbow2', --result of fusion 
75 --cost to fuse
)

FusionJokers.fusions:add_fusion( -- Rainbow Quartz 2.0 Fusion 2 (Steven & Volleyball)
'j_sbeven_steven', --string, component joker's key
nil, --string, name of stat to carry into fusion
false, --boolean, is the carry stat in an "extra" table or not
'j_sbeven_volleyball', -- same as 1, but for the other component joker
nil, -- same
false, -- same
'j_sbeven_rainbow2', --result of fusion 
75 --cost to fuse
)

FusionJokers.fusions:add_fusion( -- Smokey Quartz Fusion (Amethyst & Steven)
'j_sbeven_amethyst', --string, component joker's key
nil, --string, name of stat to carry into fusion
false, --boolean, is the carry stat in an "extra" table or not
'j_sbeven_steven', -- same as 1, but for the other component joker
nil, -- same
false, -- same
'j_sbeven_smokey', --result of fusion 
75 --cost to fuse
)

FusionJokers.fusions:add_fusion( -- Sunstone Fusion (Garnet & Steven)
'j_sbeven_garnet', --string, component joker's key
nil, --string, name of stat to carry into fusion
false, --boolean, is the carry stat in an "extra" table or not
'j_sbeven_steven', -- same as 1, but for the other component joker
nil, -- same
false, -- same
'j_sbeven_sunstone', --result of fusion 
125 --cost to fuse
)

FusionJokers.fusions:add_fusion( -- Sunstone Fusion (Garnet & Stevonnie)
'j_sbeven_garnet', --string, component joker's key
nil, --string, name of stat to carry into fusion
false, --boolean, is the carry stat in an "extra" table or not
'j_sbeven_stevonnie', -- same as 1, but for the other component joker
nil, -- same
false, -- same
'j_sbeven_sunstone', --result of fusion 
125 --cost to fuse
)

SMODS.Joker{ -- White Diamond
    key = 'white', --joker key
    loc_txt = { -- local text
        name = '{C:edition,s:1.75,E:1}White Diamond{}',
        text = {
          'Jokers with {C:edition}editions{}',
          'each give {X:mult,C:white}X2.5{} Mult.',
          'When {C:attention}Boss Blind{} is defeated,',
          'a random {C:attention}Joker{} without an {C:attention}edition{} becomes {C:dark_edition}negative{}.',
          '{C:edition,s:0.8,E:1}After all, I am every color of the light.{}',
          '{C:edition,s:0.8,E:1}But you\'re a part of me...{}',
          '{C:edition,s:0.8,E:1}The part I always have to repress.{}',
          '{s:0.7,C:legendary,E:1}- From \"Change Your Mind\"{}'
        },
        --[[unlock = {
            'Be {C:legendary}cool{}',
        }]]
    },
    atlas = 'Jokers', --atlas' key
    rarity = 'sbeven_Diamond', --rarity: 1 = Common, 2 = Uncommon, 3 = Rare, 4 = Legendary
    -- soul_pos = { x = 0, y = 2 },
    cost = 1e4, --cost
    unlocked = true, --where it is unlocked or not: if true, 
    discovered = true, --whether or not it starts discovered
    blueprint_compat = true, --can it be blueprinted/brainstormed/other
    eternal_compat = true, --can it be eternal
    perishable_compat = false, --can it be perishable
    pos = {x = 2, y = 3}, --position in atlas, starts at 0, scales by the atlas' card size (px and py): {x = 1, y = 0} would mean the sprite is 71 pixels to the right
    credit = {
        art = "Crewniverse",
        code = "Pink Focalors",
        concept = "Pink Focalors"
    },
    config = { 
      extra = { x_mult = 2.5 }
    },
    check_for_unlock = function(self, args)
        if args.type == 'derek_loves_you' then --not a real type, just a joke
            unlock_card(self)
        end
        unlock_card(self) --unlocks the card if it isnt unlocked
    end,
    calculate = function(self,card,context)
        if context.other_joker and context.other_joker.edition then
		 if context.other_joker.edition.key == 'e_polychrome' 
         or context.other_joker.edition.key == 'e_holo' 
         or context.other_joker.edition.key == 'e_foil' 
         or context.other_joker.edition.key == 'e_negative' then
			return {
				x_mult = 2.5,
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
    end,-- Prevent more than one copy from spawning in shops
    in_pool = function(self, current_shop_jokers, shop_level)
        for _, owned in ipairs(current_shop_jokers or {}) do
            if owned.key == 'j_sbeven_white' then
                return false, { allow_duplicates = false }
            end
        end
        return true, { allow_duplicates = false }
    end,
    
    -- If an extra copy somehow lands in the deck (e.g. via debuff), dissolve it immediately
    add_to_deck = function(self, card, from_debuff)
        if not from_debuff and next(SMODS.find_card('j_sbeven_white')) then
            card:start_dissolve()
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


SMODS.Joker{ --- Blue Diamond
    key = 'blue', --joker key
    loc_txt = { -- local text
        name = '{C:clubs,s:1.4,E:1}Blue Diamond{}', --name of joker
        text = {
          'Each played {C:attention}Ace{} gives',
          '{X:mult,C:white}X14{} Mult when scored',
          '{C:clubs,s:0.8,E:1}It was a{} {C:clubs,s:1,E:1}SWORD!{}',
          '{s:0.7,C:legendary,E:1}- From \"The Trial\"{}'
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
    credit = {
        art = "Crewniverse",
        code = "Pink Focalors",
        concept = "Pink Focalors"
    },
    config = { 
      extra = {
        Xmult = 14 --configurable value
      }
    },
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
				x_mult = 14,
				card = card,
				message = 'This is Pink\'s world!',
				}
			end
        end

        
    end,-- Prevent more than one copy from spawning in shops
    in_pool = function(self, current_shop_jokers, shop_level)
        for _, owned in ipairs(current_shop_jokers or {}) do
            if owned.key == 'j_sbeven_blue' then
                return false, { allow_duplicates = false }
            end
        end
        return true, { allow_duplicates = false }
    end,
    
    -- If an extra copy somehow lands in the deck (e.g. via debuff), dissolve it immediately
    add_to_deck = function(self, card, from_debuff)
        if not from_debuff and next(SMODS.find_card('j_sbeven_blue')) then
            card:start_dissolve()
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


SMODS.Joker{ -- Yellow Diamond
    key = 'yellow', --joker key
    loc_txt = { -- local text
        collection = 'Universe', -- collection name
        name = '{C:gold,s:1.4,E:1}Yellow Diamond{}', --name of joker
        text = {
          'Played {C:attention,E:1}Aces{} are {C:diamonds}retriggered{}',
          '{C:dark_edition,E:1}14{} times',
          '{C:gold,s:0.8,E:1}What\'s the use of feeling,{} {C:clubs,s:1,E:1}Blue?{}',
          '{s:0.7,C:legendary,E:1}- From \"That Will Be All\"{}'
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
    credit = {
        art = "Crewniverse",
        code = "Pink Focalors",
        concept = "Pink Focalors"
    },
    config = { 
      extra = {
        repetitions = 14 --configurable value
      }
    },
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
				repetitions = 14,
				card = context.other_card
				}
			end
		end
    end,-- Prevent more than one copy from spawning in shops
    in_pool = function(self, current_shop_jokers, shop_level)
        for _, owned in ipairs(current_shop_jokers or {}) do
            if owned.key == 'j_sbeven_yellow' then
                return false, { allow_duplicates = false }
            end
        end
        return true, { allow_duplicates = false }
    end,
    
    -- If an extra copy somehow lands in the deck (e.g. via debuff), dissolve it immediately
    add_to_deck = function(self, card, from_debuff)
        if not from_debuff and next(SMODS.find_card('j_sbeven_yellow')) then
            card:start_dissolve()
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


SMODS.Joker{ -- Pink Diamond
    key = 'pink', --joker key
    loc_txt = { -- local text
        name = '{C:hearts,s:1.25,E:1}Pink Diamond{}', --name of joker
        text = {
            '{C:dark_edition,E:1}Retrigger{} all {C:attention,E:1}played cards{} {C:red,E:1}3{} times.',
            'If {C:edition,E:1}A Single Pale Rose{} is present, {C:white,X:dark_edition,E:1}^4{} {C:white,X:dark_edition,E:1}Chips&Mult{}.', 
            '{C:hearts,s:0.8,E:1}No one can ever find out we did this. I never want to look back.{}',
            '{C:hearts,s:0.8,E:1}So, for my last order to you as a Diamond, please, let\'s never speak of this again.{}',
            '{C:hearts,s:0.8,E:1}No one can know.{}',
            '{s:0.7,C:legendary,E:1}- From \"A Single Pale Rose\"{}'
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
    credit = {
        art = "Crewniverse",
        code = "Pink Focalors",
        concept = "Pink Focalors"
    },
    config = { 
      extra = {
        repetitions = 3 --configurable value
      }
    },
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
                repetitions = 3,
                card = context.other_card
            }
        end
        if #SMODS.find_card('j_sbeven_pale_rose') > 0 then
			if context.cardarea == G.jokers and context.joker_main then
				return {
					message = 'Soon it will be just... Rose.',
					e_mult = 4,
                    e_chips = 4,
					colour = G.C.EDITION
				}, true
			end
		end
    end,-- Prevent more than one copy from spawning in shops
    in_pool = function(self, current_shop_jokers, shop_level)
        for _, owned in ipairs(current_shop_jokers or {}) do
            if owned.key == 'j_sbeven_pink' then
                return false, { allow_duplicates = false }
            end
        end
        return true, { allow_duplicates = false }
    end,
    
    -- If an extra copy somehow lands in the deck (e.g. via debuff), dissolve it immediately
    add_to_deck = function(self, card, from_debuff)
        if not from_debuff and next(SMODS.find_card('j_sbeven_pink')) then
            card:start_dissolve()
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


SMODS.Joker{ -- Rose Quartz
    key = 'rose', --joker key
    loc_txt = {
        name = '{C:hearts,E:1}Rose Quartz{}',
        text = {
            'Playing cards of {C:diamonds,E:1}Diamonds{} suit',
            'each give {X:mult,C:white,E:1}X1.75{} Mult and {X:chips,C:white,E:1}X1.25{} Chips when scored.',
            '{C:attention,E:1}Leader of the Crystal Gems.{}',
            '{C:hearts,s:0.8,E:1}When a Gem is made, it\'s for a reason.{}',
            '{C:hearts,s:0.8,E:1}They burst out of the ground already knowing what they\'re supposed to be, and then...{}',
            '{C:hearts,s:0.8,E:1}That\'s what they are.{}',
            '{C:hearts,s:0.8,E:1}Forever. But you, you\'re supposed to change.{}',
            '{C:hearts,s:0.8,E:1}You\'re never the same even moment to moment.{}',
            '{C:hearts,s:0.8,E:1}You\'re allowed and expected to invent who you are.{}',
            '{C:hearts,s:0.8,E:1}What an incredible power, the ability to \"grow up.\"{}',
            '{C:legendary,s:0.7,E:1}- From \"Greg the Babysitter\"{}'
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
    credit = {
        art = "Crewniverse",
        code = "Pink Focalors",
        concept = "Pink Focalors"
    },
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
    end,-- Prevent more than one copy from spawning in shops
    in_pool = function(self, current_shop_jokers, shop_level)
        for _, owned in ipairs(current_shop_jokers or {}) do
            if owned.key == 'j_sbeven_rose' then
                return false, { allow_duplicates = false }
            end
        end
        return true, { allow_duplicates = false }
    end,
    
    -- If an extra copy somehow lands in the deck (e.g. via debuff), dissolve it immediately
    add_to_deck = function(self, card, from_debuff)
        if not from_debuff and next(SMODS.find_card('j_sbeven_rose')) then
            card:start_dissolve()
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


SMODS.Joker{ -- Steven Universe
    key = 'steven', --joker key
    loc_txt = {
        name = '{C:hearts,E:1}Steven Universe{}',
        text = {
            'Playing cards of {C:hearts,E:1}Hearts{} or {C:diamonds,E:1}Diamonds{} suit',
            'each give {X:mult,C:white,E:1}X1.25{} Mult when scored.',
            '{C:hearts,s:0.8,E:1}Life and Death and Love and Birth,{}',
            '{C:hearts,s:0.8,E:1}and Peace and War on the planet Earth.{}',
            '{C:hearts,s:0.8,,E:1}Is there anything that\'s worth more than Peace and Love on the planet Earth?{}',
            '{C:legendary,s:0.7,E:1}- From \"It Could\'ve Been Great\"{}'
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
    credit = {
        art = "Crewniverse",
        code = "Pink Focalors",
        concept = "Pink Focalors"
    },
    config = {
        extra = {
            card_limit = 2
        }
    },
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
    end,-- Prevent more than one copy from spawning in shops
    in_pool = function(self, current_shop_jokers, shop_level)
        for _, owned in ipairs(current_shop_jokers or {}) do
            if owned.key == 'j_sbeven_steven' then
                return false, { allow_duplicates = false }
            end
        end
        return true, { allow_duplicates = false }
    end,
    
    -- If an extra copy somehow lands in the deck (e.g. via debuff), dissolve it immediately
    add_to_deck = function(self, card, from_debuff)
        if not from_debuff and next(SMODS.find_card('j_sbeven_steven')) then
            card:start_dissolve()
        end
        G.E_MANAGER:add_event(Event({
            delay = 0,
            func = function()
            G.consumeables.config.card_limit = G.consumeables.config.card_limit + card.ability.extra.card_limit
            SMODS.add_card{ key = "c_sbeven_steven_shield", stickers = {"eternal"} }
            return true
        end}))
    end,
    remove_from_deck = function(self, card)
        for _, bm in ipairs(SMODS.find_card('c_sbeven_steven_shield')) do
            bm:start_dissolve()
        end
        G.E_MANAGER:add_event(Event({ func = function()
            G.consumeables.config.card_limit = G.consumeables.config.card_limit - card.ability.extra.card_limit
            --SMODS.add_card{ key = 'c_star' }
            --SMODS.add_card{ key = 'c_hermit' }
            return true
        end }))
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
        name = '{C:legendary,E:1}Connie Maheswaran{}',
        text = {
            'Playing cards of {C:spades,E:1}Spades{} or {C:clubs,E:1}Clubs{} suit',
            'each give {X:chips,C:white,E:1}X1.5{} Chips when scored.',
            '{s:0.8,C:enhanced,E:1}I want to,{} {s:0.8,C:hearts,E:1}Steven{}{C:enhanced,s:0.8,E:1}... I want to be a part of your universe.{}',
            '{C:legendary,s:0.7,E:1}- From \"Full Disclosure\"{}'
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
    credit = {
        art = "Crewniverse",
        code = "Pink Focalors",
        concept = "Pink Focalors"
    },
    config = {
        extra = {
            card_limit = 2
        }
    },
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
    end,-- Prevent more than one copy from spawning in shops
    in_pool = function(self, current_shop_jokers, shop_level)
        for _, owned in ipairs(current_shop_jokers or {}) do
            if owned.key == 'j_sbeven_connie' then
                return false, { allow_duplicates = false }
            end
        end
        return true, { allow_duplicates = false }
    end,
    
    -- If an extra copy somehow lands in the deck (e.g. via debuff), dissolve it immediately
    add_to_deck = function(self, card, from_debuff)
        if not from_debuff and next(SMODS.find_card('j_sbeven_connie')) then
            card:start_dissolve()
        end
        G.E_MANAGER:add_event(Event({
            delay = 0,
            func = function()
            G.consumeables.config.card_limit = G.consumeables.config.card_limit + card.ability.extra.card_limit
            SMODS.add_card{ key = "c_sbeven_connie_sword", stickers = {"eternal"} }
            return true
        end}))
    end,
    remove_from_deck = function(self, card)
        for _, bm in ipairs(SMODS.find_card('c_sbeven_connie_sword')) do
            bm:start_dissolve()
        end
        G.E_MANAGER:add_event(Event({ func = function()
            G.consumeables.config.card_limit = G.consumeables.config.card_limit - card.ability.extra.card_limit
            --SMODS.add_card{ key = 'c_sun' }
            --SMODS.add_card{ key = 'c_hermit' }
            return true
        end }))
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


SMODS.Joker{ --- Lars
    key = 'lars', --joker key
    loc_txt = { -- local text
        name = '{C:money,E:1}Lars Barriga{}', --name of joker
        text = {
          '{C:attention}Upgrade level{} of played {C:attention}poker hand{}.',
          'Can be upgraded by {C:dark_edition,E:1}A Single Pale Rose{}.',
          '{C:money,s:0.8}Toughen UP,{} {C:hearts,s:0.8}Steven!{}',
          '{C:legendary,s:0.7,E:1}- From \"Coach Steven\"{}'

        },
        --[[unlock = {
            'Be {C:legendary}cool{}',
        }]]
    },
    atlas = 'Lars', --atlas' key
    rarity = 'sbeven_Human', --rarity: 1 = Common, 2 = Uncommon, 3 = Rare, 4 = Legendary
    --soul_pos = { x = 0, y = 0 },
    cost = 10, --cost
    unlocked = true, --where it is unlocked or not: if true, 
    discovered = true, --whether or not it starts discovered
    blueprint_compat = true, --can it be blueprinted/brainstormed/other
    eternal_compat = true, --can it be eternal
    perishable_compat = true, --can it be perishable
    pos = {x = 0, y = 0}, --position in atlas, starts at 0, scales by the atlas' card size (px and py): {x = 1, y = 0} would mean the sprite is 71 pixels to the right
    credit = {
        art = "Crewniverse",
        code = "Pink Focalors",
        concept = "Pink Focalors"
    },
    calculate = function(self, card, context)
        -- whenever we’re in the “before main evaluation” step, always level up
        if context.before and context.main_eval then
            return {
                level_up = true,
                message  = localize('k_level_up_ex'),
            }
        end
    end,-- Prevent more than one copy from spawning in shops
    in_pool = function(self, current_shop_jokers, shop_level)
        for _, owned in ipairs(current_shop_jokers or {}) do
            if owned.key == 'j_sbeven_lars' then
                return false, { allow_duplicates = false }
            end
        end
        return true, { allow_duplicates = false }
    end,
    
    -- If an extra copy somehow lands in the deck (e.g. via debuff), dissolve it immediately
    add_to_deck = function(self, card, from_debuff)
        if not from_debuff and next(SMODS.find_card('j_sbeven_lars')) then
            card:start_dissolve()
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


SMODS.Joker{ -- Jasper
    key = 'jasper',
    loc_txt = {
        name = '{C:diamonds,E:1}Jasper{}',
        text = {
            'When a played hand is a {C:attention,E:1}Pair{},',
            'create negative {C:tarot,E:1}Hanged Man{} and {C:planet,E:1}Pluto{} consumables.',
            '{C:diamonds,s:0.8,E:1}Neither of you saw{} {C:hearts,s:0.8,E:1}Rose Quartz{}? {C:diamonds,s:0.8,E:1}What a shame.{}',
            '{C:diamonds,s:0.8,E:1}I hoped to meet{} {C:hearts,s:0.8,E:1}her{}.',
            '{C:diamonds,s:0.8,E:1}I was looking forward to beating{} {C:hearts,s:0.8,E:1}her{} {C:diamonds,s:0.8,E:1}into the ground.{}',
            '{C:legendary,s:0.7,E:1}- From \"The Return\"{}'
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
    credit = {
        art = "Crewniverse",
        code = "Pink Focalors",
        concept = "Pink Focalors"
    },
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
    end,-- Prevent more than one copy from spawning in shops
    in_pool = function(self, current_shop_jokers, shop_level)
        for _, owned in ipairs(current_shop_jokers or {}) do
            if owned.key == 'j_sbeven_jasper' then
                return false, { allow_duplicates = false }
            end
        end
        return true, { allow_duplicates = false }
    end,
    
    -- If an extra copy somehow lands in the deck (e.g. via debuff), dissolve it immediately
    add_to_deck = function(self, card, from_debuff)
        if not from_debuff and next(SMODS.find_card('j_sbeven_jasper')) then
            card:start_dissolve()
        end
    end,
    
    set_badges = function(self, card, badges)
        badges[#badges + 1] = create_badge("Steven Universe", G.C.PURPLE, G.C.EDITION, 1)
    end,
}

-- Joker: Pearl
SMODS.Joker{
    key = 'pearl',
    loc_txt = {
        name = '{C:red,E:1}Pearl{}',
        text = {
            'Playing cards {C:attention,E:1}permanently gain{} {X:mult,C:white,E:1}X0.2{} Mult when scored.{}',
            '{C:inactive,s:0.8,E:1}Everything I ever did, I did for{} {C:inactive,C:hearts,E:1,s:0.8}her.{}',
            '{C:inactive,s:0.8,E:1}Now{} {C:inactive,C:hearts,E:1,s:0.8}she\'s{} {C:inactive,s:0.8,E:1}gone, but I\'m still here.{}',
            '{C:inactive,s:0.8,E:1}Sometimes, I wonder if{} {C:inactive,C:hearts,E:1,s:0.8}she{} {C:inactive,s:0.8,E:1}can see me through your eyes.{}',
            '{C:inactive,s:0.8,E:1}What would{} {C:inactive,C:hearts,E:1,s:0.8}she{} {C:inactive,s:0.8,E:1}think of me now?{}',
            '{s:0.7,C:legendary,E:1}- From \"Rose\'s Scabbard\"{}'
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
    credit = {
        art = "Crewniverse",
        code = "Pink Focalors",
        concept = "Pink Focalors"
    },
    config = {
        extra = {
            perma_x_mult = 0.2 -- Initialize the permanent multiplier bonus
        }
    },
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
    end,-- Prevent more than one copy from spawning in shops
    in_pool = function(self, current_shop_jokers, shop_level)
        for _, owned in ipairs(current_shop_jokers or {}) do
            if owned.key == 'j_sbeven_pearl' then
                return false, { allow_duplicates = false }
            end
        end
        return true, { allow_duplicates = false }
    end,
    
    -- If an extra copy somehow lands in the deck (e.g. via debuff), dissolve it immediately
    add_to_deck = function(self, card, from_debuff)
        if not from_debuff and next(SMODS.find_card('j_sbeven_pearl')) then
            card:start_dissolve()
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


SMODS.Joker{ -- Volleyball
    key = 'volleyball', --joker key
    loc_txt = {
        name = '{C:hearts,E:1,s:1}\"Volleyball\"{}',
        text = {
            'Playing cards {C:attention,E:1}permanently gain{} {X:chips,C:white,E:1}X0.2{} Chips when scored.{}',
            '{C:hearts,s:0.8,E:1}Oh, no. I know what a nickname is.{}',
            '{C:hearts,s:0.8,E:1}It\'s just that it reminds me so much of{} {C:hearts,s:0.8,E:1}Pink.{}',
            '{C:hearts,s:0.8,E:1}She{} {C:hearts,s:0.8,E:1}used to give silly little names to everything.{}',
            '{C:hearts,s:0.8,E:1}She{} {C:hearts,s:0.8,E:1}was so funny like that...{}',
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
    credit = {
        art = "Crewniverse",
        code = "Pink Focalors",
        concept = "Pink Focalors"
    },
    config = {
        extra = {
            perma_x_chips = 0.2, --configurable value
            card_limit = 2,
        }
    },
    calculate = function(self, card, context)
        if context.individual and context.cardarea == G.play then
            local oc = context.other_card
            oc.ability.perma_x_chips = oc.ability.perma_x_chips or 0
            oc.ability.perma_x_chips = oc.ability.perma_x_chips + 0.2
            return { 
                extra = { message = 'That\'s absurd! I am fine.', color = G.C.SUITS.Hearts }
            }
        end
    end,-- Prevent more than one copy from spawning in shops
    in_pool = function(self, current_shop_jokers, shop_level)
        for _, owned in ipairs(current_shop_jokers or {}) do
            if owned.key == 'j_sbeven_volleyball' then
                return false, { allow_duplicates = false }
            end
        end
        return true, { allow_duplicates = false }
    end,
    
    -- If an extra copy somehow lands in the deck (e.g. via debuff), dissolve it immediately
    add_to_deck = function(self, card, from_debuff)
        if not from_debuff and next(SMODS.find_card('j_sbeven_volleyball')) then
            card:start_dissolve()
        end
        G.E_MANAGER:add_event(Event({
            delay = 0,
            func = function()
            G.consumeables.config.card_limit = G.consumeables.config.card_limit + card.ability.extra.card_limit
            SMODS.add_card{ key = "c_sbeven_ribbon_wand", stickers = {"eternal"} }
            return true
        end}))
    end,
    remove_from_deck = function(self, card)
        for _, bm in ipairs(SMODS.find_card('c_sbeven_ribbon_wand')) do
            bm:start_dissolve()
        end
        G.E_MANAGER:add_event(Event({ func = function()
            G.consumeables.config.card_limit = G.consumeables.config.card_limit - card.ability.extra.card_limit
            return true
        end }))
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
        name = '{C:hearts,E:1}A Single Pale Rose{}',
        text = {
            '{X:dark_edition,C:white,E:1}^1.2{} Mult and gain {X:gold,C:white}$15{} at {C:attention}end of round{}.',
            '{C:dark_edition,s:1.1,E:1}This joker can heal or upgrade certain Jokers.{}',
            'If played hand is a {C:attention,E:1}Five of a Kind{} or a {C:attention,E:1}Flush Five{},',
            'create a {C:dark_edition,E:1}negative{} {C:edition,E:1}Soul Card{}.',
            'If played hand contains a {C:attention,E:1}High Card{},',
            'create a {C:dark_edition,E:1}negative{} {C:attention,E:1}Black Hole{}.',
            '{C:enhanced,s:0.8,E:1}I always thought I might be bad,{}',
            '{C:enhanced,s:0.8,E:1}Now I\'m sure that it\'s true.{}',
            '{C:enhanced,s:0.8,E:1}Cause I think you\'re so good, and I\'m nothing like you.{}',
            '{s:0.7,C:legendary,E:1}- From \"Love Like You\"{}'
        }
    },
    atlas = 'Jokers', --atlas' key
    rarity = 'sbeven_Unique',
    cost = 12,
    unlocked = true,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    perishable_compat = false,
    pos = { x = 4, y = 1 },
    credit = {
        art = "Crewniverse",
        code = "Pink Focalors",
        concept = "Pink Focalors"
    },
    config = {
        extra = {
            Xmult = 2.5
        }
    },

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
                    e_mult  = 1.5
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
                    e_mult = 1.2
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
        -- If an extra copy somehow lands in the deck (e.g. via debuff), dissolve it immediately
    add_to_deck = function(self, card, from_debuff)
        if not from_debuff and next(SMODS.find_card('j_sbeven_pale_rose')) then
            card:start_dissolve()
        end
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
            '{X:dark_edition,E:1,C:white}^1.2{} Chips and gain {X:gold,C:white,E:1}$15{} at {C:attention,E:1}end of round{}.',
            '{C:dark_edition,s:1.1,E:1}This joker can corrupt certain Jokers.{}',
            'If played hand is a {C:attention,E:1}Five of a Kind{} or a {C:attention,E:1}Flush Five{},',
            'create a {C:dark_edition,E:1}negative{} {C:edition,E:1}Soul Card{}.',
            'If played hand contains a {C:attention,E:1}High Card{},',
            'create a {C:dark_edition,E:1}negative{} {C:attention,E:1}Black Hole{}.',
            '{C:enhanced,s:0.8,E:1}Look at you go. I just adore you,{}',
            '{C:enhanced,s:0.8,E:1}I wish that I knew,{}',
            '{C:enhanced,s:0.8,E:1}What makes you think I\'m so special.{}',
            '{s:0.7,C:legendary,E:1}- From \"Love Like You\"{}'
        }
    },
    atlas = 'Consumables', --atlas' key
    rarity = 'sbeven_Unique', --rarity: 1 = Common, 2 = Uncommon, 3 = Rare, 4 = Legendary
    --soul_pos = { x = 0, y = 0 },
    cost = 12,
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
    credit = {
        art = "Crewniverse",
        code = "Pink Focalors",
        concept = "Pink Focalors"
    },
    loc_vars = function(self, info_queue, card)
        local xchips = 0
        if card and card.ability and card.ability.extra then
        xchips = card.ability.extra.Xchips or 0
        end
        return { vars = { xchips } }
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
                    e_chips = 1.2
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
            or context.scoring_name == 'Straight Flush'
            or context.scoring_name == 'Flush House' then
                G.E_MANAGER:add_event(Event({ func = function()
                    SMODS.add_card{ key = 'c_black_hole', edition = 'e_negative' }
                    return true
                end }))
                return {
                    message = 'The Diamonds...',
                    colour  = G.C.SUITS.Hearts,
                    e_chips = 1.2
                }
            end
        end
    end,-- Prevent more than one copy from spawning in shops
    in_pool = function(self, current_shop_jokers, shop_level)
        for _, owned in ipairs(current_shop_jokers or {}) do
            if owned.key == 'j_sbeven_corruption' then
                return false, { allow_duplicates = false }
            end
        end
        return true, { allow_duplicates = false }
    end,
    
    -- If an extra copy somehow lands in the deck (e.g. via debuff), dissolve it immediately
    add_to_deck = function(self, card, from_debuff)
        if not from_debuff and next(SMODS.find_card('j_sbeven_corruption')) then
            card:start_dissolve()
        end
    end,
    
    calc_dollar_bonus = function(self,card)
        return 15
    end,
        -- If an extra copy somehow lands in the deck (e.g. via debuff), dissolve it immediately
    add_to_deck = function(self, card, from_debuff)
        if not from_debuff and next(SMODS.find_card('j_sbeven_corruption')) then
            card:start_dissolve()
        end
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
        name = '{C:enhanced,E:1}Cracked Lapis Lazuli{}', -- name of joker
        text = {
          'When playing a {C:attention,E:1}Pair{},',
          'both cards turn into {C:attention,E:1}7s{}.',
          '{C:inactive,s:0.8,E:1}I\'m{} {C:inactive,C:blue,E:1,s:0.81}Lapis Lazuli,{}',
          '{C:inactive,s:0.8,E:1}and you can\'t keep me trapped here anymore!{}',
          '{s:0.7,C:legendary,E:1}- From \"Mirror Gem\"{}'
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
    credit = {
        art = "Crewniverse",
        code = "Pink Focalors",
        concept = "Pink Focalors"
    },
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
    end,-- Prevent more than one copy from spawning in shops
    in_pool = function(self, current_shop_jokers, shop_level)
        for _, owned in ipairs(current_shop_jokers or {}) do
            if owned.key == 'j_sbeven_cracked_lapis' then
                return false, { allow_duplicates = false }
            end
        end
        return true, { allow_duplicates = false }
    end,
    
    -- If an extra copy somehow lands in the deck (e.g. via debuff), dissolve it immediately
    add_to_deck = function(self, card, from_debuff)
        if not from_debuff and next(SMODS.find_card('j_sbeven_cracked_lapis')) then
            card:start_dissolve()
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


SMODS.Joker{ -- Lapis Lazuli
    key = 'lapis', -- joker key
    loc_txt = {
        name = '{C:blue,E:1}Lapis Lazuli{}', -- name of joker
        text = {
            "{C:white,X:dark_edition,E:1}^1.5{} {C:white,E:1,X:dark_edition}Mult{} and gain {X:gold,C:white,E:1}$25{} at {C:attention,E:1}end of round{}.",
            '{C:green,s:0.8,E:1}Peridot{}{C:blue,s:0.8,E:1}... are you okay?{}',
            '{s:0.7,C:legendary,E:1}- From \"Barn Mates\"{}'
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
    credit = {
        art = "Crewniverse",
        code = "Pink Focalors",
        concept = "Pink Focalors"
    },

    calculate = function(self, card, context)
        if context.joker_main then
            return {
               e_mult = 1.5,
               message = 'Peridot...',
           }
       end
    end,
        -- Prevent more than one copy from spawning in shops
    in_pool = function(self, current_shop_jokers, shop_level)
        for     _, owned in ipairs(current_shop_jokers or {}) do
            if owned.key == 'j_sbeven_lapis' then
                return false, { allow_duplicates = false }
            end
        end
        return true, { allow_duplicates = false }
    end,

    -- If an extra copy somehow lands in the deck (e.g. via debuff), dissolve it immediately
    add_to_deck = function(self, card, from_debuff)
        if not from_debuff and next(SMODS.find_card('j_sbeven_lapis')) then
            card:start_dissolve()
        end
    end,

    calc_dollar_bonus = function(self, card)
        return 25
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
			"If {C:attention,E:1}played hand{} contains at least {C:attention,E:1}2{} scoring {C:attention,E:1}7s{},",
			"create {C:attention,E:1}3 random{} {C:dark_edition,E:1}negative{} Consumables",
            "{C:green,s:0.8,E:1}I think you\'re all insane!{}",
            "{C:green,s:0.8,E:1}But I guess I am too.{}",
            "{C:green,s:0.8,E:1}Anybody would be{}",
            "{C:green,s:0.8,E:1}If they were stuck on Earth with you!{}",
            '{s:0.7,C:legendary,E:1}- From \"It Could\'ve Been Great\"{}'

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
    credit = {
        art = "Crewniverse",
        code = "Pink Focalors",
        concept = "Pink Focalors"
    },
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
	end,-- Prevent more than one copy from spawning in shops
    in_pool = function(self, current_shop_jokers, shop_level)
        for _, owned in ipairs(current_shop_jokers or {}) do
            if owned.key == 'j_sbeven_peridot' then
                return false, { allow_duplicates = false }
            end
        end
        return true, { allow_duplicates = false }
    end,
    
    -- If an extra copy somehow lands in the deck (e.g. via debuff), dissolve it immediately
    add_to_deck = function(self, card, from_debuff)
        if not from_debuff and next(SMODS.find_card('j_sbeven_peridot')) then
            card:start_dissolve()
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


SMODS.Joker{ -- Spinel
    key = 'spinel', --joker key
    loc_txt = { -- local text
        name = '{C:red,E:1}Spinel{}', -- name of jonkler
        text = {
            '{C:dark_edition,E:1}+777{} Chips and {X:dark_edition,E:1,C:white}^1.2{} Chips.',
            'Grants the ability to {C:dark_edition}rejuvenate{} a selected {C:attention}Joker{}.',
            '{C:inactive,s:0.8,E:1}YOUR NEW BEST FRIEND{} {C:red,s:0.8,E:1}SPINEL{} {C:inactive,s:0.8,E:1}IS HERE!{}',
            '{s:0.7,C:legendary,E:1}- From \"Steven Universe: The Movie\"{}'
        }
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
    credit = {
        art = "Crewniverse",
        code = "Pink Focalors",
        concept = "Pink Focalors"
    },
    config = { 
      extra = {
        chips = 777,
        card_limit = 2 --configurable value
      }
    },
    loc_vars = function(self, info_queue, card)
        return {vars = {card.ability.extra.card_limit}}
    end,
    check_for_unlock = function(self, args)
        if args.type == 'derek_loves_you' then --not a real type, just a joke
            unlock_card(self)
        end
        unlock_card(self) --unlocks the card if it isnt unlocked
    end,
    calculate = function(self, card, context)
        if context.joker_main then
			return {
				chip_mod = 777,
				card = card,
				message = 'New Best Friend!', 
				colour = G.C.CHIPS,
                e_chips = 1.2,
				}
        end
    end,-- Prevent more than one copy from spawning in shops
    in_pool = function(self, current_shop_jokers, shop_level)
        for _, owned in ipairs(current_shop_jokers or {}) do
            if owned.key == 'j_sbeven_spinel' then
                return false, { allow_duplicates = false }
            end
        end
        return true, { allow_duplicates = false }
    end,
    
    -- If an extra copy somehow lands in the deck (e.g. via debuff), dissolve it immediately
    add_to_deck = function(self, card, from_debuff)
        if not from_debuff and next(SMODS.find_card('j_sbeven_spinel')) then
            card:start_dissolve()
        end
        G.E_MANAGER:add_event(Event({
            delay = 0,
            func = function()
            G.consumeables.config.card_limit = G.consumeables.config.card_limit + card.ability.extra.card_limit
            SMODS.add_card{ key = "c_sbeven_rejuvenator", stickers = {"eternal"} }
            return true
        end}))
    end,
    remove_from_deck = function(self, card)
        for _, bm in ipairs(SMODS.find_card('c_sbeven_rejuvenator')) do
            bm:start_dissolve()
        end
        G.E_MANAGER:add_event(Event({func = function()
            G.consumeables.config.card_limit = G.consumeables.config.card_limit - card.ability.extra.card_limit
            return true end }))
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
        name = '{C:rare,E:1}Ruby{}', -- name of joker
        text = {
            'Each played card gives {C:white,X:mult,E:1}X2{} Mult and {X:dark_edition,C:white,E:1}^1.1{} Mult when {C:attention,E:1}scored{},', 
            'if played hand is a {C:attention,E:1}Pair{}.',
            '{C:mult,s:0.8,E:1}I... I\'ve never had a third eye before.{}',
            '{s:0.7,C:legendary,E:1}- From \"The Answer\"{}'
        }
   },
    config = {
        extra = {
            Xmult = 2 --configurable value
        }
    },
    rarity = 'sbeven_CGem', -- rarity: 1 = Common, 2 = Uncommon, 3 = Rare, 4 = Legendary
    --soul_pos = { x = 0, y = 0 },
    atlas = 'Ruby', -- atlas' key
    pos = { x = 0, y = 0 },
    cost = 8,
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    credit = {
        art = "Crewniverse",
        code = "Pink Focalors",
        concept = "Pink Focalors"
    },
   calculate = function(self, card, context)
        if context.individual and context.cardarea == G.play and context.scoring_name == 'Pair' then
            return {
               x_mult = 2,
               message = 'I\'m an eternal flame, baby!',
               e_mult = 1.1,
           }
        end
    end,-- Prevent more than one copy from spawning in shops
    in_pool = function(self, current_shop_jokers, shop_level)
        for _, owned in ipairs(current_shop_jokers or {}) do
            if owned.key == 'j_sbeven_ruby' then
                return false, { allow_duplicates = false }
            end
        end
        return true, { allow_duplicates = false }
    end,
    
    -- If an extra copy somehow lands in the deck (e.g. via debuff), dissolve it immediately
    add_to_deck = function(self, card, from_debuff)
        if not from_debuff and next(SMODS.find_card('j_sbeven_ruby')) then
            card:start_dissolve()
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


SMODS.Joker{ -- Sapphire
    key = 'sapphire',
    center_key = 'sapphire',
    loc_txt = {
        name = '{C:planet,E:1}Sapphire{}',
        text = {
            'Each played card gives {X:chips,C:white,E:1}X2{} Chips and {X:dark_edition,C:white,E:1}^1.1{} Chips when scored,',
            'if played hand is a {C:attention,E:1}Pair{}.',
            '{C:planet,s:0.8,E:1}I\'ve never had more than one!{}',
            '{C:planet,s:0.8,E:1}It was nice.{}',
            '{s:0.7,C:legendary,E:1}- From \"The Answer\"{}'
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
    credit = {
        art = "Crewniverse",
        code = "Pink Focalors",
        concept = "Pink Focalors"
    },
    config = { extra = { Xchips = 2 } },
    calculate = function(self, card, context)
        if context.individual and context.cardarea == G.play and context.scoring_name == 'Pair' then
            return {
                x_chips = 2,
                e_chips = 1.1,
                message = 'Such is fate.',
                colour = G.C.CHIPS
            }
        end
    end,-- Prevent more than one copy from spawning in shops
    in_pool = function(self, current_shop_jokers, shop_level)
        for _, owned in ipairs(current_shop_jokers or {}) do
            if owned.key == 'j_sbeven_sapphire' then
                return false, { allow_duplicates = false }
            end
        end
        return true, { allow_duplicates = false }
    end,
    
    -- If an extra copy somehow lands in the deck (e.g. via debuff), dissolve it immediately
    add_to_deck = function(self, card, from_debuff)
        if not from_debuff and next(SMODS.find_card('j_sbeven_sapphire')) then
            card:start_dissolve()
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


SMODS.Joker{ -- Amethyst
    key = 'amethyst', -- joker key
    loc_txt = { -- local text
        name = '{C:purple,E:1}Amethyst{}', -- name of joker
        text = {
            'Played {C:attention,E:1}cards{} each give {X:chips,C:white,E:1}X1.25{} Chips',
            'when {C:attention,E:1}scored{}.',
            '{C:purple,s:0.8,E:1}NOOOOO! MI TORTA!{}',
            '{s:0.7,C:legendary,E:1}- From \"Monster Buddies\"{}'
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
    credit = {
        art = "Crewniverse",
        code = "Pink Focalors",
        concept = "Pink Focalors"
    },
    pos = {x = 1, y = 0}, -- position in atlas, starts at 0, scales by the atlas' card size (px and py): {x = 1, y = 0} would mean the sprite is 71 pixels to the right
    config = {
        extra = {
            Xchips = 1.25 -- configurable value
        }
    },
    check_for_unlock = function(self, args)
        if args.type == 'derek_loves_you' then -- not a real type, just a joke
            unlock_card(self)
        end
        unlock_card(self) -- unlocks the card if it isn't unlocked
    end,
    calculate = function(self, card, context)
        if context.individual and context.cardarea == G.play then
            return {
                x_chips = 1.25, -- apply multiplier
                card = context.other_card, -- target each scored card
                message = 'Shorty Squad Out!', -- display on trigger
                colour = G.C.MULT, -- multiplier colour
                func = function() context.other_card:juice_up(0.5, 0.5) end -- visual flourish
            }
        end
    end,-- Prevent more than one copy from spawning in shops
    in_pool = function(self, current_shop_jokers, shop_level)
        for _, owned in ipairs(current_shop_jokers or {}) do
            if owned.key == 'j_sbeven_amethyst' then
                return false, { allow_duplicates = false }
            end
        end
        return true, { allow_duplicates = false }
    end,
    
    -- If an extra copy somehow lands in the deck (e.g. via debuff), dissolve it immediately
    add_to_deck = function(self, card, from_debuff)
        if not from_debuff and next(SMODS.find_card('j_sbeven_amethyst')) then
            card:start_dissolve()
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

SMODS.Joker{ --- Padparadscha
    key = 'pad', --joker key
    loc_txt = { -- local text
        name = '{C:money,E:1}Padparadshca{}', --name of joker
        text = {
          'Retrigger all scored {C:attention}6s{}, {C:attention}7s{}, {C:attention}8s{}, {C:attention}9s{}, and {C:attention}10s{}.',
          '{C:money,s:0.8}I predict Lars will change in hue. What a mystery!{}.',
          '{C:legendary,s:0.7,E:1}- From \"Lars\' Head\"'
        },
        --[[unlock = {
            'Be {C:legendary}cool{}',
        }]]
    },
    atlas = 'Padparadscha', --atlas' key
    rarity = 'sbeven_Off', --rarity: 1 = Common, 2 = Uncommon, 3 = Rare, 4 = Legendary
    --soul_pos = { x = 0, y = 0 },
    cost = 25, --cost
    unlocked = true, --where it is unlocked or not: if true, 
    discovered = true, --whether or not it starts discovered
    blueprint_compat = true, --can it be blueprinted/brainstormed/other
    eternal_compat = true, --can it be eternal
    perishable_compat = false, --can it be perishable
    pos = {x = 0, y = 0}, --position in atlas, starts at 0, scales by the atlas' card size (px and py): {x = 1, y = 0} would mean the sprite is 71 pixels to the right
    credit = {
        art = "Crewniverse",
        code = "Pink Focalors",
        concept = "Pink Focalors"
    },
    config = {
        extra = {
          slots = 2 -- gives +5 Joker slots
        }
    },
    calculate = function(self, card, context)
        if context.repetition and context.cardarea == G.play then
            if context.other_card:get_id() == 6 or
                context.other_card:get_id() == 7 or
                context.other_card:get_id() == 8 or
                context.other_card:get_id() == 9 or
                context.other_card:get_id() == 10 then
                return {
                    repetitions = 1
                }
            end
        end
    end,-- Prevent more than one copy from spawning in shops
    in_pool = function(self, current_shop_jokers, shop_level)
        for _, owned in ipairs(current_shop_jokers or {}) do
            if owned.key == 'j_sbeven_pad' then
                return false, { allow_duplicates = false }
            end
        end
        return true, { allow_duplicates = false }
    end,
    
    -- If an extra copy somehow lands in the deck (e.g. via debuff), dissolve it immediately
    add_to_deck = function(self, card, from_debuff)
        if not from_debuff and next(SMODS.find_card('j_sbeven_pad')) then
            card:start_dissolve()
        end
        G.jokers.config.card_limit = G.jokers.config.card_limit + card.ability.extra.slots
    end,
    remove_from_deck = function(self, card)
        G.jokers.config.card_limit = G.jokers.config.card_limit - card.ability.extra.slots
        G.E_MANAGER:add_event(Event({
            func = function()
                SMODS.add_card{ key = 'c_sun' }
                return true
            end
        }))
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

SMODS.Joker{ --- Rutile
    key = 'rutile', --joker key
    loc_txt = { -- local text
        name = '{C:hearts,E:1}Rutile{} {C:red,E:2}Twins{}', --name of joker
        text = {
          'Played {C:attention}6s{}, {C:attention}7s{}, {C:attention}8s{}, {C:attention}9s{}, and {C:attention}10s{}',
          'each give {C:white,X:mult}X1.25{} Mult & {C:white,X:chips}X1.25{} Chips when scored.',
          '{C:hearts,s:0.8}Captain Lars has taken so many risks on our behalf. We need him!{}.',
          '{C:legendary,s:0.7,E:1}- From \"Lars of the Stars\"'
        },
        --[[unlock = {
            'Be {C:legendary}cool{}',
        }]]
    },
    atlas = 'Rutile', --atlas' key
    rarity = 'sbeven_Off', --rarity: 1 = Common, 2 = Uncommon, 3 = Rare, 4 = Legendary
    --soul_pos = { x = 0, y = 0 },
    cost = 25, --cost
    unlocked = true, --where it is unlocked or not: if true, 
    discovered = true, --whether or not it starts discovered
    blueprint_compat = true, --can it be blueprinted/brainstormed/other
    eternal_compat = true, --can it be eternal
    perishable_compat = false, --can it be perishable
    pos = {x = 0, y = 0}, --position in atlas, starts at 0, scales by the atlas' card size (px and py): {x = 1, y = 0} would mean the sprite is 71 pixels to the right
    credit = {
        art = "Crewniverse",
        code = "Pink Focalors",
        concept = "Pink Focalors"
    },
    config = {
        extra = {
          slots = 2 -- gives +5 Joker slots
        }
    },
    calculate = function(self, card, context)
        -- only when an individual card is being scored
        if context.individual and context.cardarea == G.play then
          local scored = context.other_card
          local num    = tonumber(scored.base.value)  -- "6" → 6, ..., "10" → 10
      
          if num and num >= 6 and num <= 10 then
            return {
              message = 'Captain!',
              x_mult  = 1.25,    -- must match {X:mult} in text
              x_chips = 1.25,    -- must match {X:chips} in text
              card    = scored,  -- apply to the scored card
              colour  = G.C.MULT -- optional: highlight color
            }
            end
        end
    end,
      
    -- Prevent more than one copy from spawning in shops
    in_pool = function(self, current_shop_jokers, shop_level)
        for _, owned in ipairs(current_shop_jokers or {}) do
            if owned.key == 'j_sbeven_rutile' then
                return false, { allow_duplicates = false }
            end
        end
        return true, { allow_duplicates = false }
    end,
    
    -- If an extra copy somehow lands in the deck (e.g. via debuff), dissolve it immediately
    add_to_deck = function(self, card, from_debuff)
        if not from_debuff and next(SMODS.find_card('j_sbeven_rutile')) then
            card:start_dissolve()
        end
        G.jokers.config.card_limit = G.jokers.config.card_limit + card.ability.extra.slots
    end,
    remove_from_deck = function(self, card)
        G.jokers.config.card_limit = G.jokers.config.card_limit - card.ability.extra.slots
        G.E_MANAGER:add_event(Event({
            func = function()
                SMODS.add_card{ key = 'c_sun' }
                return true
            end
        }))
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

SMODS.Joker{ --- Fluorite
    key = 'fluorite', --joker key
    loc_txt = { -- local text
        name = '{C:enhanced,E:1}Fluorite{}', --name of joker
        text = {
          'Played {C:attention}6s{}, {C:attention}7s{}, {C:attention}8s{}, {C:attention}9s{}, and {C:attention}10s{}',
          'become {C:gold}polychrome{} cards when {C:attention}scored{}.',
          '{C:enhanced,s:0.8}We won\'t do it. Not if it means leaving you behind.{}',
          '{C:legendary,s:0.7,E:1}- From \"Lars\' Head\"'
        },
        --[[unlock = {
            'Be {C:legendary}cool{}',
        }]]
    },
    atlas = 'Fluorite', --atlas' key
    rarity = 'sbeven_Off', --rarity: 1 = Common, 2 = Uncommon, 3 = Rare, 4 = Legendary
    --soul_pos = { x = 0, y = 0 },
    cost = 25, --cost
    unlocked = true, --where it is unlocked or not: if true, 
    discovered = true, --whether or not it starts discovered
    blueprint_compat = false, --can it be blueprinted/brainstormed/other
    eternal_compat = true, --can it be eternal
    perishable_compat = false, --can it be perishable
    pos = {x = 0, y = 0}, --position in atlas, starts at 0, scales by the atlas' card size (px and py): {x = 1, y = 0} would mean the sprite is 71 pixels to the right
    credit = {
        art = "Crewniverse",
        code = "Pink Focalors",
        concept = "Pink Focalors"
    },
    config = {
        extra = {
          slots = 2 -- gives +5 Joker slots
        }
    },
    calculate = function(self, card, context)
        if context.before 
        and context.main_eval 
        and not context.blueprint 
        then
            local got_any = false
    
            for _, scored_card in ipairs(context.scoring_hand) do
                -- base.value is a string ("6", "7", … "J", "Q", etc.)
                local raw = scored_card.base.value
                -- turn it into a number (non-numeric ranks yield nil)
                local v = tonumber(raw)
    
                -- only if it really was 6..10
                if v and v >= 6 and v <= 10 then
                    got_any = true
    
                    -- Give the card the negative edition
                    scored_card:set_edition("e_polychrome", true)
    
                    -- Optional visual juice
                    G.E_MANAGER:add_event(Event({
                        func = function()
                            scored_card:juice_up(0.2, 0.2)
                            return true
                        end
                    }))
                end
            end
    
            if got_any then
                return {
                    message = "Cap..tain.. Lars...!",   -- or a new key if you prefer
                    colour  = G.C.DARK_EDITION
                }
            end
        end
    end,
    -- Prevent more than one copy from spawning in shops
    in_pool = function(self, current_shop_jokers, shop_level)
        for _, owned in ipairs(current_shop_jokers or {}) do
            if owned.key == 'j_sbeven_fluorite' then
                return false, { allow_duplicates = false }
            end
        end
        return true, { allow_duplicates = false }
    end,
    
    -- If an extra copy somehow lands in the deck (e.g. via debuff), dissolve it immediately
    add_to_deck = function(self, card, from_debuff)
        if not from_debuff and next(SMODS.find_card('j_sbeven_fluorite')) then
            card:start_dissolve()
        end
        G.jokers.config.card_limit = G.jokers.config.card_limit + card.ability.extra.slots
    end,
    remove_from_deck = function(self, card)
        G.jokers.config.card_limit = G.jokers.config.card_limit - card.ability.extra.slots
        G.E_MANAGER:add_event(Event({
            func = function()
                SMODS.add_card{ key = 'c_sun' }
                return true
            end
        }))
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

SMODS.Joker{ --- Moonstone
    key = 'moon', --joker key
    loc_txt = { -- local text
    name = '{C:planet,s:1.2,E:1}M{C:inactive,s:1.2,E:1}o{C:planet,s:1.2,E:1}o{C:inactive,s:1.2,E:1}n{C:planet,s:1.2,E:1}s{C:inactive,s:1.2,E:1}t{C:planet,s:1.2,E:1}o{C:inactive,s:1.2,E:1}n{C:planet,s:1.2,E:1}e{}',    --name of joker
        text = {
          '{C:dark_edition}+5{} Joker slots',
          'All {C:attention,E:1}playing cards{} and {C:attention,E:1}Jokers{}',
          'are now {C:attention,E:2}immune{} to debuffs.',
          '{C:planet,s:0.8,E:1}The whole time, we thought we were following{} {C:red,s:0.8,E:1}her{}, {C:planet,s:0.8,E:1}but{} {C:red,s:0.8,E:2}she{} {C:planet,s:0.8,E:2}was following us.{}',
          '{C:planet,s:0.8,E:1}How could{} {C:hearts,s:0.8,E:1}she{} {C:planet,s:0.8,E:1}not after {C:inactive,s:0.8,E:2}you{} {C:planet,s:0.8,E:1}swept{} {C:red,s:0.8,E:2}her{} {C:planet,s:0.8,E:2}off{} {C:red,s:0.8,E:2}her{} {C:planet,s:0.8,E:2}feet?{}',
          '{C:inactive,s:0.8,E:1}W-What? Me?{}',
          '{C:hearts,s:0.8,E:1}Are{} {C:inactive,s:0.8,E:2}you{} {C:hearts,s:0.8,E:1}kidding?{} {C:inactive,s:0.8,E:2}You{} {C:hearts,s:0.8,E:2}took{} {C:red,s:0.8,E:1}her{} {C:hearts,s:0.8,E:1}on this whirlwind tour of Earth{}',
          '{C:hearts,s:0.8,E:1}and then{} {C:red,s:0.8,E:1}she{} {C:hearts,s:0.8,E:1}wanted to live here with{} {C:inactive,s:0.8,E:2}you{} {C:hearts,s:0.8,E:2}forever!{}',
          '{C:inactive,s:0.7,E:2}art by @pitisho on TikTok',
          '{C:legendary,s:0.7,E:1}- From \"Now We\'re Only Falling Apart\"{}'

        },
        --[[unlock = {
            'Be {C:legendary}cool{}',
        }]]
    },
    atlas = 'moon', --atlas' key
    rarity = 'sbeven_Fusion', --rarity: 1 = Common, 2 = Uncommon, 3 = Rare, 4 = Legendary
    --soul_pos = { x = 0, y = 0 },
    cost = 50, --cost
    unlocked = true, --where it is unlocked or not: if true, 
    discovered = true, --whether or not it starts discovered
    blueprint_compat = true, --can it be blueprinted/brainstormed/other
    eternal_compat = true, --can it be eternal
    perishable_compat = true, --can it be perishable
    pos = {x = 0, y = 0}, --position in atlas, starts at 0, scales by the atlas' card size (px and py): {x = 1, y = 0} would mean the sprite is 71 pixels to the right
    credit = {
        art = '@pitisho',
        code = 'Pink Focalors',
        concept = '@pitisho'

    },
    config = {
        extra = {
          slots = 5 -- gives +5 Joker slots
        }
    },      
    calculate = function(self, card, context)
        if context.joker_main then
            G.E_MANAGER:add_event(Event({
                func = function()
                    G.GAME.dollars = G.GAME.dollars + 10
                    play_sound('chips1', 0.9 + math.random()*0.1, 0.7)
                    return true
                end
            }))  
            return {
                e_mult = 1.11,
                e_chips = 1.11,
                message = 'Fated to be...',
                colour = G.C.EDITION
            }
        end
    end,    -- If an extra copy somehow lands in the deck (e.g. via debuff), dissolve it immediately
    add_to_deck = function(self, card, from_debuff)
        if not from_debuff and next(SMODS.find_card('j_sbeven_moon')) then
            card:start_dissolve()
        end
        -- Grant +5 Joker slots
        G.jokers.config.card_limit = G.jokers.config.card_limit + card.ability.extra.slots
    end,
    
    remove_from_deck = function(self, card)
        -- Only spawn the other jokers if not debuffed/destroyed (i.e., sold manually)
        if not card.debuffed and not card.destroyed then
            G.E_MANAGER:add_event(Event({ func = function()
                SMODS.add_card{ key = 'j_sbeven_pearl' }
                SMODS.add_card{ key = 'j_sbeven_sapphire' }
            return true
        end
        }))
        end
        -- Always subtract the joker slots if ability exists
        if card.ability and card.ability.extra and card.ability.extra.slots then
        G.jokers.config.card_limit = G.jokers.config.card_limit - card.ability.extra.slots
        end
    end,
    in_pool = function(self, current_shop_jokers, shop_level)
        for _, owned in ipairs(current_shop_jokers or {}) do
            if owned.key == 'j_sbeven_moon' then
                return false, { allow_duplicates = false }
            end
        end
        return true, { allow_duplicates = false }
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

local csdr = Card.set_debuff
function Card:set_debuff(should_debuff)
	if #SMODS.find_card('j_sbeven_moon') > 0 then
		return false
	elseif (((self.config or {}).center or {}).debuff_immune or (((self.config or {}).center or {}).rarity or 1) == 6) and should_debuff == true then
		card_status_text(self, 'Immune', nil, 0.05*self.T.h, G.C.RED, nil, 0.6, nil, nil, 'bm', 'cancel', 1, 0.9)
		return false
	else
		csdr(self, should_debuff)
	end
end


SMODS.Joker{ --- Bloodstone
    key = 'blood',
    loc_txt = {
        name = '{C:tarot,s:1.2}B{C:green,s:1.2}l{C:tarot,s:1.2}o{C:green,s:1.2}o{C:tarot,s:1.2}d{C:green,s:1.2}s{C:tarot,s:1.2}t{C:green,s:1.2}o{C:tarot,s:1.2}n{C:green,s:1.2}e{}',
        text = {
            '{C:white,X:dark_edition,E:1}^2{} {C:white,X:dark_edition,E:1}Chips&Mult{}',
            'Grants the ability to {C:attention,E:1}sell selected playing cards{}.',
            '{C:tarot,s:0.8}If{} {C:green,s:0.8,E:1}you{} {C:tarot,s:0.8,E:1}really want to understand fusion, I can help you.{}',
            '{C:green,s:0.8,E:1}What do you mean?',
            '{C:tarot,s:0.8,E:1}Let\'s fuse.',
            '{C:green,s:0.8,E:1}Oh my stars!',
            '{C:inactive,s:0.7,E:2}art by @yellowpinks on TikTok',
            '{C:legendary,s:0.7,E:1}- From \"Log Date 7 15 2\"'
        },
    },
    atlas = 'blood',
    rarity = 'sbeven_Fusion',
    cost = 50,
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    pos = { x = 0, y = 0 },
    credit = {
        art     = '@yellowpinks',
        code    = 'Pink Focalors',
        concept = '@yellowpinks',
    },
    config = {
        extra = {
            card_limit = 2
        }
    },
    loc_vars = function(self, info_queue, card)
        return {vars = {card.ability.extra.card_limit}}
    end,
    calculate = function(self, card, context)
        -- only run on individual card scoring passes
        if context.joker_main then
            if context.scoring_name == 'High Card'
            or context.scoring_name == 'Pair' 
            or context.scoring_name == 'Three of a Kind' 
            or context.scoring_name == 'Two Pair'
            or context.scoring_name == 'Four of a Kind'
            or context.scoring_name == 'Flush'
            or context.scoring_name == 'Full House'
            or context.scoring_name == 'Straight'
            or context.scoring_name == 'Straight Flush'
            or context.scoring_name == 'Flush House' then
                return {
                    message = 'Blood Money...',
                    colour  = G.C.EDITION,
                    e_mult  = 2,
                    e_chips = 2,
                }
            end
        end
    end,
    add_to_deck = function(self, card, from_debuff)
        if not from_debuff and next(SMODS.find_card('j_sbeven_blood')) then
            card:start_dissolve()
        end
        G.E_MANAGER:add_event(Event({
            delay = 0,
            func = function()
            G.consumeables.config.card_limit = G.consumeables.config.card_limit + card.ability.extra.card_limit
            SMODS.add_card{ key = "c_sbeven_blood_money", stickers = {"eternal"} }
            return true
        end}))
    end,
    remove_from_deck = function(self, card)
        for _, bm in ipairs(SMODS.find_card('c_sbeven_blood_money')) do
            bm:start_dissolve()
        end
        G.E_MANAGER:add_event(Event({ func = function()
            G.consumeables.config.card_limit = G.consumeables.config.card_limit - card.ability.extra.card_limit
            SMODS.add_card{ key = 'j_sbeven_garnet' }
            SMODS.add_card{ key = 'j_sbeven_peridot' }
            return true
        end }))
    end,
    in_pool = function(self, current_shop_jokers, shop_level)
        for _, owned in ipairs(current_shop_jokers or {}) do
            if owned.key == 'j_sbeven_blood' then
                return false, { allow_duplicates = false }
            end
        end
        return true, { allow_duplicates = false }
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

 
--[[ make sure FusionJokers is loaded
if FusionJokers and FusionJokers.fusions and FusionJokers.fusions.register_on_fusion then
    FusionJokers.fusions:register_on_fusion(function(fusion)
      -- `fusion.result_key` is the joker key that was just created
      if fusion.result_key == 'j_sbeven_blood' then
        -- spawn one negative Blood Money card
        SMODS.add_card{ key = 'c_sbeven_blood_money', edition = 'e_negative' }
      end
    end)
end]]  

SMODS.Joker{ -- Stevonnie
    key = 'stevonnie', --joker key
    loc_txt = {
        name = '{C:legendary,E:1}S{C:hearts}t{C:legendary}e{C:hearts}v{C:legendary}o{C:hearts}n{C:legendary}n{C:hearts}i{C:legendary}e{}',
        text = {
            'Playing cards of {C:attention,E:1}any suit{} each give',
            '{X:mult,C:white,E:1}X7{} Mult and {X:chips,C:white,E:1}X7{} Chips when scored.',
            'If played hand is a {C:attention,E:1}Five of a Kind{} or a {C:attention,E:1}Flush Five{},',
            'create {C:edition,E:1}A Single Pale Rose{}.',
            '{C:enhanced,s:0.8,E:1}Take a moment to think of just{}',
            '{C:enhanced,s:0.8,E:1}Flexibility, love, and trust.{}',
            '{C:legendary,s:0.7,E:1}- From \"Mindful Education\"{}'
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
    credit = {
        art = "Crewniverse",
        code = "Pink Focalors",
        concept = "Pink Focalors"
    },
    config = {
        extra = {
            card_limit = 2 -- EXTRA CONSUMABLE SLOTS
        }
    },
    loc_vars = function(self, info_queue, card)
        return {vars = {card.ability.extra.card_limit}}
    end,
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
    end,-- Prevent more than one copy from spawning in shops
    -- If an extra copy somehow lands in the deck (e.g. via debuff), dissolve it immediately
    add_to_deck = function(self, card, from_debuff)
        if not from_debuff and next(SMODS.find_card('j_sbeven_stevonnie')) then
            card:start_dissolve()
        end
            G.E_MANAGER:add_event(Event({
            delay = 0,
            func = function()
            SMODS.add_card{ key = "c_sbeven_stevonnie_weapons", stickers = {"eternal"} }
            return true
        end}))
        G.E_MANAGER:add_event(Event({func = function()
            G.consumeables.config.card_limit = G.consumeables.config.card_limit + card.ability.extra.card_limit -- EXTRA CONSUMABLES
            return true end }))
    end,
    remove_from_deck = function(self, card)
        G.E_MANAGER:add_event(Event({ func = function()
            SMODS.add_card{ key = 'j_sbeven_steven' }
            SMODS.add_card{ key = 'j_sbeven_connie' }
            return true
        end }))
        for _, bm in ipairs(SMODS.find_card('c_sbeven_stevonnie_weapons')) do
            bm:start_dissolve()
        end
        G.E_MANAGER:add_event(Event({func = function()
            G.consumeables.config.card_limit = G.consumeables.config.card_limit - card.ability.extra.card_limit
            return true end }))
    end,
    in_pool = function(self, current_shop_jokers, shop_level)
        for _, owned in ipairs(current_shop_jokers or {}) do
            if owned.key == 'j_sbeven_stevonnie' then
                return false, { allow_duplicates = false }
            end
        end
        return true, { allow_duplicates = false }
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
            '{X:dark_edition,C:white,E:1}^2.5{} {C:white,E:1,X:dark_edition}Mult{} and {X:gold,C:white,E:1}$50{} when {C:attention}ability is triggered{}.',
            'If played hand is a {C:attention,E:2}Pair{},',
            'create {C:dark_edition,E:1}negative{} {C:attention,E:2}Hanged Man{}, {C:attention,E:2}Mercury{},',
            '{C:attention,E:2}Deja Vu{}, and {C:attention,E:2}Cryptid{} consumables.',
            'If played hand is a {C:attention,E:2}Five of a Kind{} or a {C:attention,E:2}Flush Five{},',
            'create {C:edition,E:1}A Single Pale Rose{}.',
            '{C:green,s:0.8,E:1}You think you can hold me down?! Nobody can! Not anymore.{}',
            '{s:0.7,C:legendary,E:1}- From \"Super Watermelon Island\"{}'
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
    credit = {
        art = "Crewniverse",
        code = "Pink Focalors",
        concept = "Pink Focalors"
    },
    calculate = function(self, card, context)
        -- Spawn consumables if scoring hand matches...
        if context.joker_main and context.scoring_name == 'Pair' then
            G.E_MANAGER:add_event(Event({
                func = function()
                    G.GAME.dollars = G.GAME.dollars + 50
                    play_sound('chips1', 0.9 + math.random()*0.1, 0.7)
                    return true
                end
            }))  
            G.E_MANAGER:add_event(Event({ func = function()
                SMODS.add_card{ key = 'c_hanged_man', edition = 'e_negative' }
                SMODS.add_card{ key = 'c_mercury',    edition = 'e_negative' }
                SMODS.add_card{ key = 'c_deja_vu',    edition = 'e_negative' }
                SMODS.add_card{ key = 'c_cryptid',    edition = 'e_negative' }
                return true
            end }))
            return { message = 'We are Malachite!', colour = G.C.EDITION, e_mult = 2.5 }
        end
    
        if context.joker_main and (context.scoring_name == 'Five of a Kind' 
        or context.scoring_name == 'Flush Five') then
            G.E_MANAGER:add_event(Event({
                func = function()
                    G.GAME.dollars = G.GAME.dollars + 50
                    play_sound('chips1', 0.9 + math.random()*0.1, 0.7)
                    return true
                end
            }))  
            G.E_MANAGER:add_event(Event({ func = function()
                SMODS.add_card{ key = 'j_sbeven_pale_rose', edition = 'e_negative' }
                return true
            end }))
            return { message = 'We are Malachite!', colour = G.C.EDITION, e_mult = 2.5 }
        end
    end,
    remove_from_deck = function(self, card)
        G.E_MANAGER:add_event(Event({ func = function()
            SMODS.add_card{ key = 'j_sbeven_lapis' }
            SMODS.add_card{ key = 'j_sbeven_jasper' }
            return true
        end }))
    end,
    -- Prevent more than one copy from spawning in shops
    in_pool = function(self, current_shop_jokers, shop_level)
        for _, owned in ipairs(current_shop_jokers or {}) do
            if owned.key == 'j_sbeven_malachite' then
                return false, { allow_duplicates = false }
            end
        end
        return true, { allow_duplicates = false }
    end,
    
    -- If an extra copy somehow lands in the deck (e.g. via debuff), dissolve it immediately
    add_to_deck = function(self, card, from_debuff)
        if not from_debuff and next(SMODS.find_card('j_sbeven_malachite')) then
            card:start_dissolve()
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


SMODS.Joker{ -- For Opal
    key = 'opal', --joker key
    loc_txt = {
        name = '{C:dark_edition,E:1}Opal{}',
        text = {
            'Played cards {C:attention,E:2}permanently gain{} {X:mult,C:white,E:1}X0.5{} Mult and give {X:chips,C:white,E:1}X1.75{} Chips when scored,',
            'if played hand is a {C:attention,E:2}Pair{}.',
            'If played hand is a {C:attention,E:2}Five of a Kind{} or a {C:attention,E:2}Flush Five{},',
            'create {C:edition,E:1}A Single Pale Rose{}.',
            '{C:dark_edition,s:0.8,E:1}All{} {C:hearts,s:0.8,E:1}you{} {C:dark_edition,s:0.8}wanna do, is see me turn into...{}',
            '{C:hearts,s:0.8,E:1}A Giant Woman.{}',
            '{C:legendary,s:0.7,E:1}- From \"Giant Woman\"{}'
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
    credit = {
        art = "Crewniverse",
        code = "Pink Focalors",
        concept = "Pink Focalors"
    },
    config = {
        extra = {
            Xchips = 1.75,      -- Enhanced chips multiplier (Amethyst base ~1.25)
            perma_x_mult = 0.5  -- Enhanced permanent mult (Pearl base ~0.2)
        }
    },
    calculate = function(self, card, context)
        if context.individual 
        and context.cardarea == G.play 
        and context.scoring_name == 'Pair' then
            local oc = context.other_card
            -- Apply Amethyst-like chip bonus
            local result = {
                x_chips = 1.75,
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
                e_mult = 2,
            }
        end
    end,-- Prevent more than one copy from spawning in shops
    remove_from_deck = function(self, card)
        G.E_MANAGER:add_event(Event({ func = function()
            SMODS.add_card{ key = 'j_sbeven_pearl' }
            SMODS.add_card{ key = 'j_sbeven_amethyst' }
            return true
        end }))
    end,
    in_pool = function(self, current_shop_jokers, shop_level)
        for _, owned in ipairs(current_shop_jokers or {}) do
            if owned.key == 'j_sbeven_opal' then
                return false, { allow_duplicates = false }
            end
        end
        return true, { allow_duplicates = false }
    end,
    
    -- If an extra copy somehow lands in the deck (e.g. via debuff), dissolve it immediately
    add_to_deck = function(self, card, from_debuff)
        if not from_debuff and next(SMODS.find_card('j_sbeven_opal')) then
            card:start_dissolve()
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


SMODS.Joker{
    key = 'garnet', -- joker key
    center_key = 'garnet', -- center key
    loc_txt = { -- localization text
        name = '{C:tarot,E:1}Garnet{}',
        text = {
            'Each card played in a {C:attention,E:2}Pair{}', 
            'gives {X:mult,C:white,E:1}X8{} Mult, {X:chips,C:white,E:1}X8{} Chips,',
            'and {C:white,X:dark_edition,E:1}^1.5{} {C:white,X:dark_edition,E:1}Chips&Mult{} when {C:attention,E:2}scored{}.',
            '{C:inactive,s:0.8,E:1}This is{} {C:tarot,E:1,s:0.8}Garnet{}. {C:inactive,s:0.8,E:1}Back together.{}',
            '{C:inactive,s:0.8,E1}And{} {C:tarot,s:0.8,E1}I\'m{} {C:inactive,s:0.8,E1}never going down at the hands of the likes of{} {C:diamonds,s:0.8,E1}you{}',
            '{C:inactive,s:0.8,E1}\'Cause{} {C:tarot,s:0.8,E1}I\'m{} {C:inactive,s:0.8,E1}so much better. And every part of{} {C:tarot,s:0.8,E1}me{} {C:inactive,s:0.8,E1}is saying go get{} {C:diamonds,s:0.8,E1}her.{}',
            '{s:0.7,C:legendary,E:1}- From \"Jailbreak\"{}'
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
    credit = {
        art = "Crewniverse",
        code = "Pink Focalors",
        concept = "Pink Focalors"
    },
    config = { extra = { Xmult = 8, Xchips = 8, repetitions = 1 } 
    },
    calculate = function(self, card, context)
        if context.individual 
        and context.cardarea == G.play 
        and context.scoring_name == 'Pair' then
            return {
                x_mult = 8,
                x_chips = 8,
                e_mult = 1.5,
                e_chips = 1.5,
                repetitions = 1,
                extra = { func = function() context.other_card:juice_up(0.5, 0.5) end },
                message = 'Stronger Than You.',
                colour = G.C.EDITION
            }
        end  
    end,-- Prevent more than one copy from spawning in shops
    remove_from_deck = function(self, card)
        G.E_MANAGER:add_event(Event({ func = function()
            SMODS.add_card{ key = 'j_sbeven_ruby' }
            SMODS.add_card{ key = 'j_sbeven_sapphire' }
            return true
        end }))
    end,
    -- Prevent more than one copy from spawning in shops
    in_pool = function(self, current_shop_jokers, shop_level)
        for _, owned in ipairs(current_shop_jokers or {}) do
            if owned.key == 'j_sbeven_garnet' then
                return false, { allow_duplicates = false }
            end
        end
        return true, { allow_duplicates = false }
    end,
    
    -- If an extra copy somehow lands in the deck (e.g. via debuff), dissolve it immediately
    add_to_deck = function(self, card, from_debuff)
        if not from_debuff and next(SMODS.find_card('j_sbeven_garnet')) then
            card:start_dissolve()
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

SMODS.Joker{ --- Captain Lars
    key = 'clars', --joker key
    loc_txt = { -- local text
        name = '{C:hearts,E:1}Lars of the Stars{}', --name of joker
        text = {
          '{C:attention}Level up{} played hand.',
          'When {C:attention}boss blind{} is defeated, {C:attention}summons{} a member of the {C:dark_edition}Off-Colors Crew{}.',
          '{C:inactive,s:0.8}I\'d never surrender to you! Blow us into stardust like you\'ve always dreamed of.',
          '{C:legendary,s:0.7,E:1}- From \"Lars of the Stars\"{}'
        },
        --[[unlock = {
            'Be {C:legendary}cool{}',
        }]]
    },
    atlas = 'CLars', --atlas' key
    rarity = 'sbeven_Off', --rarity: 1 = Common, 2 = Uncommon, 3 = Rare, 4 = Legendary
    --soul_pos = { x = 0, y = 0 },
    cost = 25, --cost
    unlocked = true, --where it is unlocked or not: if true, 
    discovered = true, --whether or not it starts discovered
    blueprint_compat = false, --can it be blueprinted/brainstormed/other
    eternal_compat = true, --can it be eternal
    perishable_compat = false, --can it be perishable
    pos = {x = 0, y = 0}, --position in atlas, starts at 0, scales by the atlas' card size (px and py): {x = 1, y = 0} would mean the sprite is 71 pixels to the right
    credit = {
        art = "Crewniverse",
        code = "Pink Focalors",
        concept = "Pink Focalors"
    },
    calculate = function(self, card, context)
        -- whenever we’re in the “before main evaluation” step, always level up
        if context.before and context.main_eval then
            return {
                level_up = true,
                message  = localize('k_level_up_ex'),
            }
        end
        if context.end_of_round 
        and not context.repetition 
        and not context.individual 
        and not context.game_over then
            local blind = G.GAME.blind
            if blind.boss then
                local choices = {
                    'j_sbeven_pad',
                    'j_sbeven_rutile',
                    'j_sbeven_fluorite',
                    'j_sbeven_rhodonite_off',
                }
                local pick = choices[ love.math.random( #choices ) ]
                SMODS.add_card{ key = pick }
                return { message = "Let\'s go, Crew!", colour = G.C.EDITION }
            end
        end
    end,-- Prevent more than one copy from spawning in shops
    in_pool = function(self, current_shop_jokers, shop_level)
        for _, owned in ipairs(current_shop_jokers or {}) do
            if owned.key == 'j_sbeven_clars' then
                return false, { allow_duplicates = false }
            end
        end
        return true, { allow_duplicates = false }
    end,
    
    -- If an extra copy somehow lands in the deck (e.g. via debuff), dissolve it immediately
    add_to_deck = function(self, card, from_debuff)
        if not from_debuff and next(SMODS.find_card('j_sbeven_clars')) then
            card:start_dissolve()
        end
    end,
    remove_from_deck = function(self, card)
        local spawnedKeys = {
          'j_sbeven_pad',
          'j_sbeven_rutile',
          'j_sbeven_fluorite',
          'j_sbeven_rhodonite_off',
        }
        for _, key in ipairs(spawnedKeys) do
            for _, offColor in ipairs(SMODS.find_card(key)) do
                offColor:start_dissolve()
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


SMODS.Joker{ --- Rhodonite
    key = 'rhodonite_off', --joker key
    loc_txt = { -- local text
        name = '{C:tarot,E:1}Rhodonite{}', --name of joker
        text = {
          'Each {C:attention,E:2}played card{} gives {X:mult,C:white,E:1}X3{} Mult when scored,',
          'and also {C:attention,E:2}permanently gains{} {X:mult,C:white,E:1}X0.25{} Mult,',
          'if played hand is a {C:attention,E:2}Pair{}.',
          '{s:0.8,C:tarot,E:1}Welp... We\'re cracked.{}',
          '{s:0.7,C:legendary,E:1}- From \"Change Your Mind\"{}'
        },
        --[[unlock = {
            'Be {C:legendary}cool{}',
        }]]
    },
    atlas = 'Jokers', --atlas' key
    rarity = 'sbeven_Off', --rarity: 1 = Common, 2 = Uncommon, 3 = Rare, 4 = Legendary
    --soul_pos = { x = 0, y = 0 },
    cost = 25, --cost
    unlocked = true, --where it is unlocked or not: if true, 
    discovered = true, --whether or not it starts discovered
    blueprint_compat = true, --can it be blueprinted/brainstormed/other
    eternal_compat = true, --can it be eternal
    perishable_compat = true, --can it be perishable
    pos = {x = 0, y = 2}, --position in atlas, starts at 0, scales by the atlas' card size (px and py): {x = 1, y = 0} would mean the sprite is 71 pixels to the right
    credit = {
        art = "Crewniverse",
        code = "Pink Focalors",
        concept = "Pink Focalors"
    },
    config = {
        extra = {
            Xmult = 3,            -- temporary mult on scored card (Ruby's effect)
            perma_x_mult = 0.25,   -- permanent mult gain (Pearl's effect)
            slots = 2
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
                x_mult = 3,
                message = 'Captain Lars?!',
                card = oc,
                colour = G.C.MULT,
                func = function() oc:juice_up(0.6, 0.6) end
            }

            -- Pearl-like permanent mult boost
            oc.ability.perma_x_mult = (oc.ability.perma_x_mult or 0) + card.ability.extra.perma_x_mult

            return result
        end
    end,-- Prevent more than one copy from spawning in shops
    remove_from_deck = function(self, card)
        G.jokers.config.card_limit = G.jokers.config.card_limit - card.ability.extra.slots
        G.E_MANAGER:add_event(Event({ func = function()
            SMODS.add_card{ key = 'j_sbeven_ruby' }
            SMODS.add_card{ key = 'j_sbeven_pearl' }
            return true
        end }))
    end,
    in_pool = function(self, current_shop_jokers, shop_level)
        for _, owned in ipairs(current_shop_jokers or {}) do
            if owned.key == 'j_sbeven_rhodonite_off' then
                return false, { allow_duplicates = false }
            end
        end
        return true, { allow_duplicates = false }
    end,
    
    -- If an extra copy somehow lands in the deck (e.g. via debuff), dissolve it immediately
    add_to_deck = function(self, card, from_debuff)
        if not from_debuff and next(SMODS.find_card('j_sbeven_rhodonite_off')) then
            card:start_dissolve()
        end
        G.jokers.config.card_limit = G.jokers.config.card_limit + card.ability.extra.slots
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
            '{X:dark_edition,C:white,E:1}^2{} {C:white,E:1,X:dark_edition}Mult{} and {X:gold,C:white,E:1}$50{} when {C:attention}ability is triggered{}.',
            'If {C:attention}played hand{} contains at least {C:attention}3{} scoring {C:attention}7{},',
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
    credit = {
        art = "Mystic",
        code = "Pink Focalors",
        concept = "Pink Focalors"
    },

	calculate = function(self, card, context)
		if context.joker_main then
			local seven_count = 0
			for i = 1, #context.scoring_hand do
				if context.scoring_hand[i]:get_id() == 7 then
					seven_count = seven_count + 1
				end
			end
			if seven_count >= 3 then
                G.E_MANAGER:add_event(Event({
                    func = function()
                        G.GAME.dollars = G.GAME.dollars + 50
                        play_sound('chips1', 0.9 + math.random()*0.1, 0.7)
                        return true
                    end
                }))  
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
	end,-- Prevent more than one copy from spawning in shops
    remove_from_deck = function(self, card)
        G.E_MANAGER:add_event(Event({ func = function()
            SMODS.add_card{ key = 'j_sbeven_lapis' }
            SMODS.add_card{ key = 'j_sbeven_peridot' }
            return true
        end }))
    end,
    in_pool = function(self, current_shop_jokers, shop_level)
        for _, owned in ipairs(current_shop_jokers or {}) do
            if owned.key == 'j_sbeven_aventurine' then
                return false, { allow_duplicates = false }
            end
        end
        return true, { allow_duplicates = false }
    end,
    
    -- If an extra copy somehow lands in the deck (e.g. via debuff), dissolve it immediately
    add_to_deck = function(self, card, from_debuff)
        if not from_debuff and next(SMODS.find_card('j_sbeven_aventurine')) then
            card:start_dissolve()
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


SMODS.Joker{ -- Rainbow Quartz
    key = 'rainbow', --joker key
    loc_txt = {
        name = '{C:diamonds,s:1.15}R{C:hearts,s:1.15}a{C:diamonds,s:1.15}i{C:hearts,s:1.15}n{C:diamonds,s:1.15}b{C:hearts,s:1.15}o{C:diamonds,s:1.15}w{C:hearts,s:1.15} {C:diamonds,s:1.15}Q{C:hearts,s:1.15}u{C:diamonds,s:1.15}a{C:hearts,s:1.15}r{C:diamonds,s:1.15}t{C:hearts,s:1.15}z{}',
        text = {
            'Playing cards of {C:diamonds,E:2}Diamonds{} suit',
            'each give {X:mult,C:white,E:1}X5{} Mult, {C:white,X:dark_edition,E:1}^1.2{} {C:white,X:dark_edition,E:1}Mult{} and {X:gold,C:white,E:1}$5{} when scored.',
            'All playing cards also {C:attention,E:1}permanently gain{}',
            '{X:mult,C:white,E:1}X0.75{} Mult when scored.',
            'Creates a {C:dark_edition,E:1}negative{} {C:attention,E:2}The Star{},',
            'if played hand contains a {C:attention,E:2}Flush{}.',
            '{C:purple,s:0.8,E:1}What can I do for you?{}',
            '{C:purple,s:0.8,E:1}What can I that no one else can do?{}',
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
    credit = {
        art = "Crewniverse",
        code = "Pink Focalors",
        concept = "Pink Focalors"
    },
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
                or context.scoring_name == 'Straight Flush'
                or context.scoring_name == 'Flush House'
                or context.scoring_name == 'Flush Five')
        then
            G.E_MANAGER:add_event(Event({
                func = function()
                    G.GAME.dollars = G.GAME.dollars + 5
                    play_sound('chips1', 0.9 + math.random()*0.1, 0.7)
                    return true
                end
            }))            
            G.E_MANAGER:add_event(Event({
            func = function()
                SMODS.add_card{ key = 'c_star', edition = 'e_negative' }
                return true
            end
        }))
        end
      
        ----------------------------------------
        -- PER‐CARD PASS: apply permanent bonus + Diamonds check
        if context.individual and context.cardarea == G.play then
          local scored = context.other_card
      
          -- 1) Permanent +0.75 on every scored card
          scored.ability.perma_x_mult = (scored.ability.perma_x_mult or 0) + perma
      
          -- 2) If that card is Diamonds suit, give temporary +5 Mult
          if scored.base.suit == 'Diamonds' then
            G.E_MANAGER:add_event(Event({
                func = function()
                    G.GAME.dollars = G.GAME.dollars + 3
                    play_sound('chips1', 0.9 + math.random()*0.1, 0.7)
                    return true
                end
            }))            
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
    -- Prevent more than one copy from spawning in shops
    remove_from_deck = function(self, card)
        G.E_MANAGER:add_event(Event({ func = function()
            SMODS.add_card{ key = 'j_sbeven_pearl' }
            SMODS.add_card{ key = 'j_sbeven_rose' }
            return true
        end }))
    end,
    in_pool = function(self, current_shop_jokers, shop_level)
        for _, owned in ipairs(current_shop_jokers or {}) do
            if owned.key == 'j_sbeven_rainbow' then
                return false, { allow_duplicates = false }
            end
        end
        return true, { allow_duplicates = false }
    end,

    -- If an extra copy somehow lands in the deck (e.g. via debuff), dissolve it immediately
    add_to_deck = function(self, card, from_debuff)
        if not from_debuff and next(SMODS.find_card('j_sbeven_rainbow')) then
            card:start_dissolve()
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
            'Playing cards of {C:diamonds,E:2}Diamonds{} and {C:hearts,E:2}Hearts{} suits',
            'each give {X:mult,C:white,E:1}X3{} Mult when scored.',
            'All playing cards also {C:attention,E:1}permanently gain{}',
            '{X:mult,C:white,E:1}X0.5{} Mult when scored.',
            'Creates a {C:dark_edition,E:1}negative{} {C:attention,E:2}The Star{} and {C:attention,E:2}The Sun{},',
            'if played hand contains a {C:attention,E:2}Flush{}.',
            '{C:mult,s:0.8,E:1}Well, what do you know? It\'s Rainbow 2.0!{}',
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
    credit = {
        art = "Crewniverse",
        code = "Pink Focalors",
        concept = "Pink Focalors"
    },
    calculate = function(self, card, context)
        local cfg   = self.config.extra or {}
        local perma = cfg.perma_x_mult or 0.5     -- 0.75
        local tmp   = cfg.Xmult        or 3     -- 5
      
        ----------------------------------------
        -- MAIN HAND PASS: spawn negative Star on any Flush
        if context.joker_main
           and (context.scoring_name == 'Flush'
                or context.scoring_name == 'Straight Flush'
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
        -- Prevent more than one copy from spawning in shops
    remove_from_deck = function(self, card)
        G.E_MANAGER:add_event(Event({ func = function()
            SMODS.add_card{ key = 'j_sbeven_pearl' }
            SMODS.add_card{ key = 'j_sbeven_steven' }
            return true
        end }))
    end,    
    in_pool = function(self, current_shop_jokers, shop_level)
        for _, owned in ipairs(current_shop_jokers or {}) do
            if owned.key == 'j_sbeven_rainbow2' then
                return false, { allow_duplicates = false }
            end
        end
        return true, { allow_duplicates = false }
    end,

    -- If an extra copy somehow lands in the deck (e.g. via debuff), dissolve it immediately
    add_to_deck = function(self, card, from_debuff)
        if not from_debuff and next(SMODS.find_card('j_sbeven_rainbow2')) then
            card:start_dissolve()
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


SMODS.Joker{ -- Smokey Quartz
    key = 'smokey', --joker key
    loc_txt = {
        name = '{C:default,s:1.4}S{C:inactive,s:1.4}m{C:default,s:1.4}o{C:inactive,s:1.4}k{C:default,s:1.4}y{C:inactive,s:1.4} {C:default,s:1.4}Q{C:inactive,s:1.4}u{C:default,s:1.4}a{C:inactive,s:1.4}r{C:default,s:1.4}t{C:inactive,s:1.4}z{}',
        text = {
            'Playing cards of {C:hearts,E:1}Hearts{} and {C:diamonds,E:1}Diamonds{} suits',
            'each give {X:mult,C:white,E:1}X4{} Mult and {X:chips,C:white,E:1}X4{} Chips when scored.',
            'If played hand is a {C:attention,E:2}Five of a Kind{} or a {C:attention,E:2}Flush Five{},',
            'create {C:edition,E:1}A Single Pale Rose{}.',
            '{C:enhanced,s:0.8,E:1}I think a Rose Quartz and an Amethyst make a... Smoky Quartz!{}',
            '{C:legendary,s:0.7,E:1}- From \"Earthlings\"{}'

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
    credit = {
        art = "Crewniverse",
        code = "Pink Focalors",
        concept = "Pink Focalors"
    },
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
    end,-- Prevent more than one copy from spawning in shops
    remove_from_deck = function(self, card)
        G.E_MANAGER:add_event(Event({ func = function()
            SMODS.add_card{ key = 'j_sbeven_steven' }
            SMODS.add_card{ key = 'j_sbeven_amethyst' }
            return true
        end }))
    end,
    in_pool = function(self, current_shop_jokers, shop_level)
        for _, owned in ipairs(current_shop_jokers or {}) do
            if owned.key == 'j_sbeven_smokey' then
                return false, { allow_duplicates = false }
            end
        end
        return true, { allow_duplicates = false }
    end,
    
    -- If an extra copy somehow lands in the deck (e.g. via debuff), dissolve it immediately
    add_to_deck = function(self, card, from_debuff)
        if not from_debuff and next(SMODS.find_card('j_sbeven_smokey')) then
            card:start_dissolve()
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


SMODS.Joker{ -- Sunstone
    key = 'sunstone', --joker key
    loc_txt = {
        name = '{C:hearts}S{C:diamonds}u{C:hearts}n{C:diamonds}s{C:hearts}t{C:diamonds}o{C:hearts}n{C:diamonds}e{}',
        text = {
            'Played cards of {C:diamonds,E:2}Diamonds{} and {C:hearts,E:2}Hearts{} suits',
            'each give {X:mult,C:white,E:1}X10{} Mult and {X:chips,C:white,E:1}X10{} Chips when scored.',
            'Creates a {C:dark_edition,E:1}negative{} {C:attention,E:2}The Star{} and {C:attention,E:2}The Sun{},',
            'if played hand contains a {C:attention,E:2}Flush{}.',
            '{C:diamonds,s:0.8,E:1}Chillax, my dudes. Your rockin\' pal{} {C:diamonds,s:0.8,E:1}Sunstone{} {C:diamonds,s:0.8,E:1}is holdin\' it down.{}',
            '{C:legendary,s:0.7,E:1}- From \"Change Your Mind\"{}'
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
    credit = {
        art = "Crewniverse",
        code = "Pink Focalors",
        concept = "Pink Focalors"
    },
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
    end,-- Prevent more than one copy from spawning in shops
    remove_from_deck = function(self, card)
        G.E_MANAGER:add_event(Event({ func = function()
            SMODS.add_card{ key = 'j_sbeven_steven' }
            SMODS.add_card{ key = 'j_sbeven_garnet' }
            return true
        end }))
    end,
    in_pool = function(self, current_shop_jokers, shop_level)
        for _, owned in ipairs(current_shop_jokers or {}) do
            if owned.key == 'j_sbeven_sunstone' then
                return false, { allow_duplicates = false }
            end
        end
        return true, { allow_duplicates = false }
    end,
    
    -- If an extra copy somehow lands in the deck (e.g. via debuff), dissolve it immediately
    add_to_deck = function(self, card, from_debuff)
        if not from_debuff and next(SMODS.find_card('j_sbeven_sunstone')) then
            card:start_dissolve()
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

SMODS.Joker{ -- Sardonyx
    key = 'sardonyx', --joker key
    loc_txt = {
        name = '{C:gold,s:1.4}S{C:diamonds,s:1.4}a{C:gold,s:1.4}r{C:diamonds,s:1.4}d{C:gold,s:1.4}o{C:diamonds,s:1.4}n{C:gold,s:1.4}y{C:diamonds,s:1.4}x{}',
        text = {
            'Playing cards each give {X:mult,C:white,E:1}X12{} Mult and {X:chips,C:white,E:1}X12{} Chips when scored,',
            'if played hand contains a {C:attention,E:2}Three of a Kind{}.',
            'Playing cards also {C:attention,E:2}permanently gain{} {X:mult,C:white,E:1}X0.75{} Mult when scored.',
            'If played hand is a {C:attention,E:2}Five of a Kind{} or a {C:attention,E:2}Flush Five{},',
            'create {C:edition,E:1}A Single Pale Rose{}.',
            '{C:diamonds,s:0.8,E:1}Good evening, everybody! This is the lovely Sardonyx,{}',
            '{C:diamonds,s:0.8,E:1}coming to you a-live from the soon-to-be former Communication Hub!{}',
            '{C:diamonds,s:0.8,E:1}How are y\'all doin\' tonight?{}',
            '{C:legendary,s:0.7,E:1}- From \"Cry for Help\"{}'
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
    credit = {
        art = "Crewniverse",
        code = "Pink Focalors",
        concept = "Pink Focalors"
    },
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
                func = function() oc:juice_up(0.5, 0.5) end,
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
            e_mult = 3,
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
    end,-- Prevent more than one copy from spawning in shops
    in_pool = function(self, current_shop_jokers, shop_level)
        for _, owned in ipairs(current_shop_jokers or {}) do
            if owned.key == 'j_sbeven_sardonyx' then
                return false, { allow_duplicates = false }
            end
        end
        return true, { allow_duplicates = false }
    end,
    remove_from_deck = function(self, card)
        G.E_MANAGER:add_event(Event({ func = function()
            SMODS.add_card{ key = 'j_sbeven_garnet' }
            SMODS.add_card{ key = 'j_sbeven_pearl' }
            return true
        end }))
    end,
    -- If an extra copy somehow lands in the deck (e.g. via debuff), dissolve it immediately
    add_to_deck = function(self, card, from_debuff)
        if not from_debuff and next(SMODS.find_card('j_sbeven_sardonyx')) then
            card:start_dissolve()
        end
    end
    
}


SMODS.Joker{ -- Sugilite
    key = 'sugilite', --joker key
    loc_txt = {
        name = '{C:purple,s:1.4}S{C:tarot,s:1.4}u{C:purple,s:1.4}g{C:tarot,s:1.4}i{C:purple,s:1.4}l{C:tarot,s:1.4}i{C:purple,s:1.4}t{C:tarot,s:1.4}e{}',
        text = {
            'Each played cards give {X:mult,C:white,E:1}X15{} Mult and {X:chips,C:white,E:1}X15{} Chips when scored,',
            'if played hand contains a {C:attention,E:2}Three of a Kind{}.',
            'Each played cards also {C:attention,E:2}permanently gains{} {X:chips,C:white,E:1}X0.75{} Mult when scored.',
            'If played hand is a {C:attention,E:2}Five of a Kind{} or a {C:attention,E:2}Flush Five{},',
            'create {C:edition,E:1}A Single Pale Rose{}.',
            '{C:tarot,s:0.8,E:1}You think you\'re something?{}',
            '{C:tarot,s:0.8,E:1}You ain\'t nothing!{}',
            '{C:legendary,s:0.7,E:1}- From \"Coach Steven\"{}'
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
    credit = {
        art = "Crewniverse",
        code = "Pink Focalors",
        concept = "Pink Focalors"
    },
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
    remove_from_deck = function(self, card)
        G.E_MANAGER:add_event(Event({ func = function()
            SMODS.add_card{ key = 'j_sbeven_garnet' }
            SMODS.add_card{ key = 'j_sbeven_amethyst' }
            return true
        end }))
    end,
    in_pool = function(self, current_shop_jokers, shop_level)
        for _, owned in ipairs(current_shop_jokers or {}) do
            if owned.key == 'j_sbeven_sugilite' then
                return false, { allow_duplicates = false }
            end
        end
        return true, { allow_duplicates = false }
    end,
    -- If an extra copy somehow lands in the deck (e.g. via debuff), dissolve it immediately
    add_to_deck = function(self, card, from_debuff)
        if not from_debuff and next(SMODS.find_card('j_sbeven_sugilite')) then
            card:start_dissolve()
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
            'Each played cards give {X:mult,C:white,E:1}X25{} Mult and {X:chips,C:white,E:1}X25{} Chips',
            'and {C:white,X:dark_edition,E:1}^1.5{} {C:white,X:dark_edition,E:1}Chips&Mult{} when scored,',
            'if played hand contains a {C:attention,E:2}Four of a Kind{}.',
            'Playing cards also {C:attention,E:2}permanently gain{} {X:mult,C:white,E:1}X1{} Mult and', 
            '{X:chips,C:white,E:1}X1{} Chips when scored.',
            'If played hand is a {C:attention,E:2}Five of a Kind{} or a {C:attention,E:2}Flush Five{},',
            'create {C:edition,E:1}A Single Pale Rose{} and gives {X:dark_edition,C:white,E:1}^2{} {C:white,X:dark_edition,E:1}Chips&Mult{}.',
            '{C:tarot,s:0.8,E:1}You{} {C:diamonds,s:0.8,E:2}t{}{C:blue,s:0.8,E:2}w{C:diamonds,s:0.8,E:2}o{} {C:tarot,s:0.8,E:1}should spennd some time apart.{}',
            '{C:legendary,s:0.7,E:1}- From \"Super Watermelon Island\"{}'
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
    credit = {
        art = "Crewniverse",
        code = "Pink Focalors",
        concept = "Pink Focalors"
    },
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
    end,-- Prevent more than one copy from spawning in shops
    in_pool = function(self, current_shop_jokers, shop_level)
        for _, owned in ipairs(current_shop_jokers or {}) do
            if owned.key == 'j_sbeven_alex' then
                return false, { allow_duplicates = false }
            end
        end
        return true, { allow_duplicates = false }
    end,
    
    -- If an extra copy somehow lands in the deck (e.g. via debuff), dissolve it immediately
    add_to_deck = function(self, card, from_debuff)
        if not from_debuff and next(SMODS.find_card('j_sbeven_alex')) then
            card:start_dissolve()
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


SMODS.Joker{
    key = 'obsidian',
    loc_txt = {
        name = '{C:legendary,E:1,s:1.8}O{C:hearts,E:1,s:1.8}b{C:planet,E:1,s:1.8}s{C:purple,E:1,s:1.8}i{C:tarot,E:1,s:1.8}d{C:inactive,E:1,s:1.8}i{C:legendary,E:1,s:1.8}a{C:hearts,E:1,s:1.8}n{}',
        text = {
            'Each played card gives {X:mult,C:white,E:1}X50{} Mult and {X:chips,C:white,E:1}X50{} Chips',
            'and {C:white,X:dark_edition,E:1}^2{} {C:white,X:dark_edition,E:1}Chips&Mult{} when scored,',
            'if played hand contains a {C:attention,E:2}Five of a Kind{}.',
            'Playing cards also {C:attention,E:2}permanently gain{} {X:mult,C:white,E:1}X2{} Mult and',
            '{X:chips,C:white,E:1}X2{} Chips when scored.',
            'If played hand is a {C:attention,E:2}Five of a Kind{} or a {C:attention,E:2}Flush Five{},',
            'create {C:dark_edition,E:1}negative{} {C:attention,E:2}Black Hole{},',
            'a {C:dark_edition,E:1}negative{} {C:attention,E:2}Cryptid{},',
            'a {C:dark_edition,E:1}negative{} {C:attention,E:2}The Soul{}',
            'and gives {X:dark_edition,C:white,E:1}^3{} {C:white,X:dark_edition,E:1}Chips&Mult{}.',
            '{C:green,s:0.8,E:1}They\'re huuuuge!{}',
            '{C:inactive,s:0.8,E:1}amazing art by @jasbear.art on TikTok{}',
            '{C:legendary,s:0.7,E:1}- From \"Change Your Mind\"{}'
        }
    },
    atlas = 'Obsidian',
    rarity = 'sbeven_PFusion',
    cost = 750,
    unlocked = true,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    perishable_compat = false,
    pos = {x = 0, y = 0},
    credit = {
        art = "@jasbear.art",
        code = "Pink Focalors",
        concept = "@jasbear.art"
    },
    config = {
        extra = {
            Xmult = 50,
            Xchips = 50,
            repetitions = 2,
            perma_x_mult = 2,
            perma_x_chips = 2,
            card_limit = 2
        }
    },
    loc_vars = function(self, info_queue, center)
        local vars = {0, 0, 0, 0}
        if center and center.ability and center.ability.extra then
            vars = {
                center.ability.extra.Xmult or 0,
                center.ability.extra.Xchips or 0,
                center.ability.extra.perma_x_mult or 0,
                center.ability.extra.perma_x_chips or 0,
                center.ability.extra.card_limit or 2
            }
        end
        return { vars = vars }
    end,
    calculate = function(self, card, context)
        local extra = card.ability and card.ability.extra or {}

        if context.individual and context.cardarea == G.play and context.other_card then
            local oc = context.other_card
            oc.ability = oc.ability or {}

            -- Apply permanent multipliers
            oc.ability.perma_x_mult = (oc.ability.perma_x_mult or 0) + (extra.perma_x_mult or 0)
            oc.ability.perma_x_chips = (oc.ability.perma_x_chips or 0) + (extra.perma_x_chips or 0)

            if context.scoring_name == 'Five of a Kind' or context.scoring_name == 'Flush Five' then
                return {
                    x_mult = extra.Xmult or 50,
                    x_chips = extra.Xchips or 50,
                    e_chips = 2,
                    e_mult = 2,
                    card = oc,
                    colour = G.C.EDITION,
                    message = 'Change Your Mind!',
                    func = function() oc:juice_up(0.5, 0.5) end
                }
            end
        end

        if context.joker_main and (context.scoring_name == 'Five of a Kind' or context.scoring_name == 'Flush Five') then
            G.E_MANAGER:add_event(Event({ func = function()
                SMODS.add_card{ key = 'c_black_hole', edition = 'e_negative' }
                SMODS.add_card{ key = 'c_soul', edition = 'e_negative' }
                SMODS.add_card{ key = 'c_cryptid', edition = 'e_negative' }
                return true
            end }))
            return {
                message = 'The Crystal Temple...',
                colour = G.C.EDITION,
                e_mult = 3,
                e_chips = 3
            }
        end
    end,
    in_pool = function(self, current_shop_jokers, shop_level)
        for _, owned in ipairs(current_shop_jokers or {}) do
            if owned.key == 'j_sbeven_obsidian' then
                return false, { allow_duplicates = false }
            end
        end
        return true, { allow_duplicates = false }
    end,
    add_to_deck = function(self, card, from_debuff)
        if not from_debuff and next(SMODS.find_card('j_sbeven_obsidian')) then
            card:start_dissolve()
        end
        G.E_MANAGER:add_event(Event({
            delay = 0,
            func = function()
            G.consumeables.config.card_limit = G.consumeables.config.card_limit + card.ability.extra.card_limit
            SMODS.add_card{ key = "c_sbeven_obsidian_sword", stickers = {"eternal"} }
            return true
        end}))
    end,
    remove_from_deck = function(self, card)
        for _, bm in ipairs(SMODS.find_card('c_sbeven_obsidian_sword')) do
            bm:start_dissolve()
        end
        G.E_MANAGER:add_event(Event({ func = function()
            G.consumeables.config.card_limit = G.consumeables.config.card_limit - card.ability.extra.card_limit
            return true
        end }))
    end,
    set_badges = function(self, card, badges)
        badges[#badges + 1] = create_badge("Steven Universe", G.C.PURPLE, G.C.EDITION, 1)
    end
}



SMODS.Joker{ --Zebra
    key = 'zebra', --joker key
    loc_txt = {
        name = '{C:diamonds}Z{C:gold}e{C:diamonds}b{C:gold}r{C:diamonds}a{C:gold} {C:diamonds}J{C:gold}a{C:diamonds}s{C:gold}p{C:diamonds}e{C:gold}r{}',
        text = {
            '{C:white,X:dark_edition,s:1.25,E:1}^1.75{} {C:white,X:mult}Mult{} and {C:white,X:dark_edition,s:1.25,E:1}^1.5{} {C:white,X:chips}Chips{} if played hand contains a {C:attention}Pair{}.',
            '{C:diamonds,s:0.8,E:2}I\'ve been fighting since I broke free from the Earth\'s crust!{}',
            '{C:diamonds,s:0.8,E:2}Because of what{} {C:hearts,s:0.8,E:1}you{} {C:diamonds,s:0.8,E:2}did to my colony,{}',
            '{C:diamonds,s:0.8,E:}Because of what{} {C:hearts,s:0.8,E:1}you{} {C:diamonds,s:0.8,E:2}did to my planet,{}',
            '{C:diamonds,s:0.8,E:2}Because of what{} {C:hearts,s:0.8,E:1}you{} {C:diamonds,s:0.8,E:2}did to my{} {C:hearts,s:0.8,E:1}Diamond!{}',
            '{C:legendary,s:0.7,E:1}- From \"Earthlings\"{}'
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
    credit = {
        art = "Crewniverse",
        code = "Pink Focalors",
        concept = "Pink Focalors"
    },
    calculate = function(self, card, context)
        -- Global Joker-effects pass (once per hand)
        if context.cardarea == G.jokers and context.individual then
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
    end,-- Prevent more than one copy from spawning in shops
    in_pool = function(self, current_shop_jokers, shop_level)
        for _, owned in ipairs(current_shop_jokers or {}) do
            if owned.key == 'j_sbeven_zebra' then
                return false, { allow_duplicates = false }
            end
        end
        return true, { allow_duplicates = false }
    end,
    
    -- If an extra copy somehow lands in the deck (e.g. via debuff), dissolve it immediately
    add_to_deck = function(self, card, from_debuff)
        if not from_debuff and next(SMODS.find_card('j_sbeven_zebra')) then
            card:start_dissolve()
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
            'Each playing card gives {E:1,C:white,X:dark_edition,s:1.25}^^1.1{} {X:dark_edition,C:edition,E:1}Chips&Mult{}',
            'if played hand contains a {C:attention,E:2}High Card{}.',
            '{C:hearts,s:0.8,E:2}No! No-n-n-n-no! Th-Th-This isn\'t happening...! I didn\'t think about shattering{} {C:edition,s:0.8}White{}.',
            '{C:hearts,s:0.8,E:2}I-I-I didn\'t shatter{} {C:diamonds,s:0.8}Jasper{}. {C:hearts,s:0.8}I didn\'t fight with Dad.',
            '{C:hearts,s:0.8,E:2}I-I\'m Steven Universe! I\'m fine. I\'m fine!',
            '{C:legendary,s:0.7,E:1}- From \"Everything\'s Fine\"{}'

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
    credit = {
        art = "Crewniverse",
        code = "Pink Focalors",
        concept = "Pink Focalors"
    },
    config = {
        extra = { slots = 4 }
    },
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
                    message  = 'I\'m a monster...',
                    ee_mult = 1.1,
                    ee_chips = 1.1,
                    colour = G.C.EDITION,
                    card = card
                }
            end
        end
    end,-- Prevent more than one copy from spawning in shops
    in_pool = function(self, current_shop_jokers, shop_level)
        for _, owned in ipairs(current_shop_jokers or {}) do
            if owned.key == 'j_sbeven_monster' then
                return false, { allow_duplicates = false }
            end
        end
        return true, { allow_duplicates = false }
    end,
    remove_from_deck = function(self, card)
        if card.ability and card.ability.extra and card.ability.extra.slots then
        G.jokers.config.card_limit = G.jokers.config.card_limit + card.ability.extra.slots
        end
    end,
    -- If an extra copy somehow lands in the deck (e.g. via debuff), dissolve it immediately
    add_to_deck = function(self, card, from_debuff)
        if not from_debuff and next(SMODS.find_card('j_sbeven_monster')) then
        card:start_dissolve()
        end
        if card.ability and card.ability.extra and card.ability.extra.slots then
        G.jokers.config.card_limit = G.jokers.config.card_limit - card.ability.extra.slots
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
            '{C:hearts,s:0.8,E:1}Your mother\'s Pearls{} {C:hearts,s:0.8,E:2}never had the whole picture.{}',
            '{C:hearts,s:0.8,E:2}One knew{} {C:hearts,s:0.8,E:1}your mother{} {C:hearts,s:0.8,E:2}was trying to change,{}',
            '{C:hearts,s:0.8,E:2}but she couldn\'t understand why.{}',
            '{C:hearts,s:0.8,E:2}The other never expected her to change at all.{}',
            '{C:hearts,s:0.8,E:2}Now, I get to understand everything.{}',
            '{C:hearts,s:0.8,E:2}Now, they finally get to have each other.{}',
            '{C:legendary,s:0.7,E:1}- From \"Volleyball\"{}'

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
    credit = {
        art = "Crewniverse",
        code = "Pink Focalors",
        concept = "Pink Focalors"
    },
    config = {
        extra = {
            perma_x_mult = 0.5, --configurable value
            perma_x_chips = 0.5, --configurable value
            card_limit = 2,
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
    end,-- Prevent more than one copy from spawning in shops
    remove_from_deck = function(self, card)
        for _, bm in ipairs(SMODS.find_card('c_sbeven_drill_wand')) do
            bm:start_dissolve()
        end
        G.E_MANAGER:add_event(Event({ func = function()
            SMODS.add_card{ key = 'j_sbeven_pearl' }
            SMODS.add_card{ key = 'j_sbeven_volleyball' }
            G.consumeables.config.card_limit = G.consumeables.config.card_limit - card.ability.extra.card_limit
            return true
        end }))
    end,
    in_pool = function(self, current_shop_jokers, shop_level)
        for _, owned in ipairs(current_shop_jokers or {}) do
            if owned.key == 'j_sbeven_mega' then
                return false, { allow_duplicates = false }
            end
        end
        return true, { allow_duplicates = false }
    end,
    
    -- If an extra copy somehow lands in the deck (e.g. via debuff), dissolve it immediately
    add_to_deck = function(self, card, from_debuff)
        if not from_debuff and next(SMODS.find_card('j_sbeven_mega')) then
            card:start_dissolve()
        end
        G.E_MANAGER:add_event(Event({
            delay = 0,
            func = function()
            G.consumeables.config.card_limit = G.consumeables.config.card_limit + card.ability.extra.card_limit
            SMODS.add_card{ key = "c_sbeven_drill_wand", stickers = {"eternal"} }
            return true
        end}))
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

SMODS.Joker{ -- Black Diamond
    key = 'black', --joker key
    loc_txt = {
        name = '{C:dark_edition,E:1,s:1.5}Carbonado{}',
        text = {
            '{C:attention}Immediately{} defeat selected {C:attention}blind{}.',
            '{S:0.95,E:1}The Wasteland Queen,{} {C:dark_edition,s:0.95,E:1}Black Diamond{}.', 
            '{C:inactive,s:0.8,E:1}In the beginning, there were two.{}',
            '{C:inactive,s:0.8,E:1}One formed in Light, and one in Dark.{}',
            '{C:inactive,s:0.8,E:1}Designed to perfectly balance each other.',
            '{C:legendary,s:0.7,E:1}- From \"Carbonado\'s Backstory by artifiziell\"{}'
        }
    },
    atlas = 'Black', --atlas' key
    rarity = 'sbeven_Unobtainable', --rarity: 1 = Common, 2 = Uncommon, 3 = Rare, 4 = Legendary
    --soul_pos = { x = 0, y = 0 },
    cost = 1e100,
    unlocked = true,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    perishable_compat = false,
    pos = {x = 0, y = 0}, --position in atlas, starts at 0, scales by the atlas' card size (px and py): {x = 1, y = 0} would mean the sprite is 71 pixels to the right
    credit = {
        art = "artifiziell",
        code = "Pink Focalors",
        concept = "Pink Focalors"
    },
calculate = function(self, card, context)
    if context.setting_blind and not context.blueprint then
        G.E_MANAGER:add_event(Event({
            trigger  = 'after',
            delay    = 0,
            blocking = false,
            func     = function()
                if G.STATE == G.STATES.SELECTING_HAND then --edit
                    G.GAME.chips     = G.GAME.blind.chips
                    G.STATE          = G.STATES.HAND_PLAYED
                    G.STATE_COMPLETE = true
                    end_round()
                    return true
                end
            end
        }))
    end
    end,
    add_to_deck = function(self, card, from_debuff)
        if not from_debuff and next(SMODS.find_card('j_sbeven_black')) then
            card:start_dissolve()
        end
    end,
    
    -- Add the "UNIVERSE" badge at the bottom of the card
    set_badges = function(self, card, badges)
        badges[#badges + 1] = create_badge(
            "?????",          -- Text displayed on the badge
            G.C.BLACK,          -- Badge background color
            G.C.EDITION,           -- Text color
            1                    -- Scaling factor (default size)
        )
    end,

}

-------------------------------------------------------------------------------
-- 1) Define the Blood Money ConsumableType
-------------------------------------------------------------------------------
SMODS.ConsumableType{
    key             = 'BloodMoneyType',   -- must match set below
    collection_rows = {5,5},              -- pages in collection UI (optional)
    primary_colour  = G.C.RED,            -- badge background
    secondary_colour= G.C.BLACK,          -- badge outline/text
    loc_txt = {
      collection   = 'Ability Cards',   -- which collection it appears under
      name         = 'Ability',           -- name on the badge
      undiscovered = {
        name = 'Hidden Ability',      -- before it’s discovered
        text = { 'Obtain a Joker with this ability to unlock.' }
      },
    },
    shop_rate = 0    -- never shows up in normal shop
  }
  
  -------------------------------------------------------------------------------
  -- 2) Define the Blood Money Consumable
  -------------------------------------------------------------------------------
SMODS.Consumable{
    key   = 'blood_money',
    set   = 'BloodMoneyType',
    atlas = 'bloodM',
    pos   = { x = 0, y = 0 },
  
    loc_txt = {
      name = '{C:tarot}B{C:green}l{C:tarot}o{C:green}o{C:tarot}d{C:green} {C:tarot}M{C:green}o{C:tarot}n{C:green}e{C:tarot}y{}',
      text = {
        '{C:dark_edition,E:1}Destroy{} up to {C:attention}5{} selected cards.',
        'Gain {C:white,X:gold,E:1}$3{} per card destroyed.'
      }
    },
    cost = 1e5,
    credit = {
        art     = '@yellowpinks',
        code    = 'Pink Focalors',
        concept = '@yellowpinks',
    },
    config = {
      extra = {
        destroy_max = 5,
        dollar_per   = 5,
      }
    },
  
    loc_vars = function(self, info_queue, center)
      return { vars = { center.ability.extra.destroy_max } }
    end,
  
    can_use = function(self, card)
      local n = #G.hand.highlighted
      return (n > 0 and n <= card.ability.extra.destroy_max)
    end,
  
    use = function(self, card, area, copier)
      local hl = G.hand.highlighted
      local n  = #hl
      if n == 0 then return end
  
      -- Remove highlighted cards in reverse order:
      for i = n, 1, -1 do
        local c = hl[i]
        if c ~= card then
          G.hand:remove_card(c)
          G.discard:emplace(c)
          c:start_dissolve()
        end
      end
  
      -- Award money
      local total = n * card.ability.extra.dollar_per
      ease_dollars(total)
    end,
  
    keep_on_use = function(self, card)
      return true
    end,
    in_pool = function(self, current_shop_cards, shop_level)
        return false, { allow_duplicates = false }
      end,
    add_to_deck = function(self, card, from_debuff)
      if not from_debuff then
        local has_blood = (#SMODS.find_card('j_sbeven_blood') > 0)
        if not has_blood then
          card:start_dissolve()
        end
        if not from_debuff and next(SMODS.find_card('c_sbeven_blood_money')) then
            card:start_dissolve()
        end  
      end
    end,
    
    in_pool = function(self, current_shop_cards, shop_level)
      for _, c in ipairs(current_shop_cards or {}) do
        if c.key == 'c_sbeven_blood_money' then
          return false, { allow_duplicates = false }
        end
      end
      return true, { allow_duplicates = false }
    end,
    calculate = function(self, card, context)
        if context.selling then
            return { sell = 0 }
        end
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

SMODS.Consumable{
    key = 'rejuvenator',
    set = 'BloodMoneyType',
    atlas = 'Rejuvenator',
    pos = { x = 0, y = 0 },
    loc_txt = {
      name = '{C:red}Spinel\'s Rejuvenator{}',
      text = {
        '{C:dark_edition}Rejuvenates{} a selected Joker.',
        '{C:inactive,s:0.8}(Removes all editions and stickers.){}'
      }
    },
    cost = 1e5,
    credit = {
      art = 'Crewniverse',
      code = 'Pink Focalors',
      concept = 'Pink Focalors',
    },
    can_use = function(self)
        local sel = G.jokers and G.jokers.highlighted or {}
        return #sel == 1
      end,
    
      use = function(self)
        local sel = G.jokers.highlighted
        if #sel ~= 1 then return end
        local target = sel[1]
    
        -- 2) Clear the edition if present
        if target.edition then
          target:set_edition(nil, true)
        end
        for k, v in pairs(SMODS.Stickers) do
            target.ability[k] = nil
            end
        target:juice_up(0.3, 0.3)
    end,
    keep_on_use = function()
        return true 
    end,
    in_pool = function(self, current_shop_cards, shop_level)
        return false, { allow_duplicates = false }
    end,
    add_to_deck = function(self, card, from_debuff)
        if not from_debuff then
          local has_blood = (#SMODS.find_card('j_sbeven_spinel') > 0)
          if not has_blood then
            card:start_dissolve()
          end
          if not from_debuff and next(SMODS.find_card('c_sbeven_rejuvenator')) then
              card:start_dissolve()
          end  
        end
    end,

    -- Optional: Steven Universe badge
    set_badges = function(self, card, badges)
      badges[#badges + 1] = create_badge(
        "Steven Universe",
        G.C.PURPLE,
        G.C.EDITION,
        1
      )
    end,
}

SMODS.Consumable{
    key = 'steven_shield', --key
    set = 'BloodMoneyType', --the set of the card: corresponds to a consumable type
    atlas = 'StevenS', --atlas
    pos = {x = 0, y = 0}, --position in atlas
    loc_txt = {
        name = '{C:hearts,E:1}Steven\'s Shield{}',
        text = { --text of card
            'Changes the {C:attention}suit{} of up to {C:attention}3{}',
            'selected playing cards to {C:diamonds}Diamonds{} suit.'
        }
    },
    credit = {
      art = 'Crewniverse',
      code = 'Pink Focalors',
      concept = 'Pink Focalors',
    },
    config = {
        maxSelected = 3
    },
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.maxSelected } }
    end,

    can_use = function(self, card)
        -- only in hand or play-draw states, and 1 ≤ highlighted ≤ maxSelected
        local n = #G.hand.highlighted
        return n >= 1
           and n <= card.ability.maxSelected
    end,

    use = function(self, card, area, copier)
        for i, c in ipairs(G.hand.highlighted) do
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay   = 0.2 * i,
                func    = function()
                    -- flip animation if desired
                    c:flip()
                    G.E_MANAGER:add_event(Event({
                        trigger = 'after',
                        delay = 0.1,
                        func = function()
                            SMODS.change_base(c, "Diamonds", nil)
                            c:flip()
                            return true
                        end
                    }))
                    return true
                end
            }))
        end

        -- unhighlight afterward
        G.E_MANAGER:add_event(Event({
            trigger = 'after',
            delay   = 0.2 * (#G.hand.highlighted + 1),
            func    = function()
                G.hand:unhighlight_all()
                return true
            end
        }))

        -- keep in deck (don’t consume)
        delay(0.2 * (#G.hand.highlighted + 2))
    end,
    add_to_deck = function(self, card, from_debuff)
      if not from_debuff then
        local has_blood = (#SMODS.find_card('j_sbeven_steven') > 0)
        if not has_blood then
          card:start_dissolve()
        end
        if not from_debuff and next(SMODS.find_card('c_sbeven_steven_shield')) then
            card:start_dissolve()
        end  
      end
    end,
    keep_on_use = function() return true end,
    in_pool      = function() return false end,
    set_badges = function(self, card, badges)
        badges[#badges + 1] = create_badge(
            "Steven Universe",
            G.C.PURPLE,
            G.C.EDITION,
            1
        )
    end,
}

SMODS.Consumable{
    key = 'connie_sword', --key
    set = 'BloodMoneyType', --the set of the card: corresponds to a consumable type
    atlas = 'ConnieW', --atlas
    pos = {x = 0, y = 0}, --position in atlas
    loc_txt = {
        name = '{C:legendary,E:1}Connie\'s Sword{}',
        text = { --text of card
            'Changes the {C:attention}suit{} of up to {C:attention}3{}',
            'selected playing cards to {C:spades}Spades{} suit.'
        }
    },
    credit = {
      art = 'Crewniverse',
      code = 'Pink Focalors',
      concept = 'Pink Focalors',
    },
    config = {
        maxSelected = 3
    },
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.maxSelected } }
    end,

    can_use = function(self, card)
        -- only in hand or play-draw states, and 1 ≤ highlighted ≤ maxSelected
        local n = #G.hand.highlighted
        return n >= 1
           and n <= card.ability.maxSelected
    end,

    use = function(self, card, area, copier)
        for i, c in ipairs(G.hand.highlighted) do
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay   = 0.2 * i,
                func    = function()
                    -- flip animation if desired
                    c:flip()
                    G.E_MANAGER:add_event(Event({
                        trigger = 'after',
                        delay = 0.1,
                        func = function()
                            SMODS.change_base(c, "Spades", nil)
                            c:flip()
                            return true
                        end
                    }))
                    return true
                end
            }))
        end

        -- unhighlight afterward
        G.E_MANAGER:add_event(Event({
            trigger = 'after',
            delay   = 0.2 * (#G.hand.highlighted + 1),
            func    = function()
                G.hand:unhighlight_all()
                return true
            end
        }))

        -- keep in deck (don’t consume)
        delay(0.2 * (#G.hand.highlighted + 2))
    end,
    add_to_deck = function(self, card, from_debuff)
      if not from_debuff then
        local has_blood = (#SMODS.find_card('j_sbeven_connie') > 0)
        if not has_blood then
          card:start_dissolve()
        end
        if not from_debuff and next(SMODS.find_card('c_sbeven_connie_sword')) then
            card:start_dissolve()
        end  
      end
    end,
    keep_on_use = function() return true end,
    in_pool      = function() return false end,
    set_badges = function(self, card, badges)
        badges[#badges + 1] = create_badge(
            "Steven Universe",
            G.C.PURPLE,
            G.C.EDITION,
            1
        )
    end,
}

SMODS.Consumable{
    key = 'stevonnie_weapons', --key
    set = 'BloodMoneyType', --the set of the card: corresponds to a consumable type
    atlas = 'StevonnieW', --atlas
    pos = {x = 0, y = 0}, --position in atlas
    loc_txt = {
        name = '{C:legendary,E:1}Stevonnie\'s{}{C:enhanced,E:1}Sword{}&{C:hearts,E:1}Shield{}',
        text = { --text of card
            'Add the {C:dark_edition}negative{} edition to',
            'up to {C:attention}5{} selected playing cards.'
        }
    },
    cost = 1e5,
    config = {
        extra = {
            cards = 5, --configurable value
        }
    },
    credit = {
      art = 'Crewniverse',
      code = 'Pink Focalors',
      concept = 'Pink Focalors',
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
    end,
    keep_on_use = function() return true 
    end,
    add_to_deck = function(self, card, from_debuff)
      if not from_debuff then
        local has_blood = (#SMODS.find_card('j_sbeven_stevonnie') > 0)
        if not has_blood then
          card:start_dissolve()
        end
        if not from_debuff and next(SMODS.find_card('c_sbeven_stevonnie_weapons')) then
            card:start_dissolve()
        end  
      end
    end,
    in_pool = function() return false end,

    add_to_deck = function() end,

    draw_steps = function(self, card)
        local steps = SMODS.__olde_draw_steps(self, card)
        for i = #steps, 1, -1 do
            if steps[i].tag == 'edition' then
                table.remove(steps, i)
            end
        end
        return steps
    end,
    set_badges = function(self, card, badges)
        badges[#badges+1] = create_badge("Steven Universe", G.C.PURPLE, G.C.EDITION, 1)
    end,
}

SMODS.Consumable{
    key = 'ribbon_wand', --key
    set = 'BloodMoneyType', --the set of the card: corresponds to a consumable type
    atlas = 'RibbonWand', --atlas
    pos = {x = 0, y = 0}, --position in atlas
    loc_txt = {
        name = '{C:red,E:1}Volleyball\'s Ribbon Wand{}',
        text = { --text of card
            'Changes the {C:attention}suit{} of up to {C:attention}3{}',
            'selected playing cards to {C:hearts}Hearts{} suit.'
        }
    },
    credit = {
      art = 'Crewniverse',
      code = 'Pink Focalors',
      concept = 'Pink Focalors',
    },
    config = {
        maxSelected = 3
    },
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.maxSelected } }
    end,

    can_use = function(self, card)
        -- only in hand or play-draw states, and 1 ≤ highlighted ≤ maxSelected
        local n = #G.hand.highlighted
        return n >= 1
           and n <= card.ability.maxSelected
    end,

    use = function(self, card, area, copier)
        for i, c in ipairs(G.hand.highlighted) do
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay   = 0.2 * i,
                func    = function()
                    -- flip animation if desired
                    c:flip()
                    G.E_MANAGER:add_event(Event({
                        trigger = 'after',
                        delay = 0.1,
                        func = function()
                            SMODS.change_base(c, "Hearts", nil)
                            c:flip()
                            return true
                        end
                    }))
                    return true
                end
            }))
        end

        -- unhighlight afterward
        G.E_MANAGER:add_event(Event({
            trigger = 'after',
            delay   = 0.2 * (#G.hand.highlighted + 1),
            func    = function()
                G.hand:unhighlight_all()
                return true
            end
        }))

        -- keep in deck (don’t consume)
        delay(0.2 * (#G.hand.highlighted + 2))
    end,
    add_to_deck = function(self, card, from_debuff)
      if not from_debuff then
        local has_blood = (#SMODS.find_card('j_sbeven_volleyball') > 0)
        if not has_blood then
          card:start_dissolve()
        end
        if not from_debuff and next(SMODS.find_card('c_sbeven_ribbon_wand')) then
            card:start_dissolve()
        end  
      end
    end,
    keep_on_use = function() return true end,
    in_pool      = function() return false end,
    set_badges = function(self, card, badges)
        badges[#badges + 1] = create_badge(
            "Steven Universe",
            G.C.PURPLE,
            G.C.EDITION,
            1
        )
    end,
}

SMODS.Consumable{
    key = 'drill_wand', --key
    set = 'BloodMoneyType', --the set of the card: corresponds to a consumable type
    atlas = 'DrillWand', --atlas
    pos = {x = 0, y = 0}, --position in atlas
    loc_txt = {
        name = '{C:red,E:1}Mega Pearl\'s Ribbon-Drill Wand{}',
        text = { --text of card
            'Applies the {C:attention}polychrome{} edition',
            'to up to {C:attention}5{} selected playing cards.'
        }
    },
    credit = {
      art = 'Crewniverse',
      code = 'Pink Focalors',
      concept = 'Pink Focalors',
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

            G.hand.highlighted[i]:set_edition({polychrome = true},true)

            --set their edition to negative
        end

    end,
    keep_on_use = function() return true 
    end,
    add_to_deck = function(self, card, from_debuff)
      if not from_debuff then
        local has_blood = (#SMODS.find_card('j_sbeven_mega') > 0)
        if not has_blood then
          card:start_dissolve()
        end
        if not from_debuff and next(SMODS.find_card('c_sbeven_drill_wand')) then
            card:start_dissolve()
        end  
      end
    end,
    in_pool = function() return false end,

    add_to_deck = function() end,

    draw_steps = function(self, card)
        local steps = SMODS.__olde_draw_steps(self, card)
        for i = #steps, 1, -1 do
            if steps[i].tag == 'edition' then
                table.remove(steps, i)
            end
        end
        return steps
    end,
    set_badges = function(self, card, badges)
        badges[#badges+1] = create_badge("Steven Universe", G.C.PURPLE, G.C.EDITION, 1)
    end,
}


SMODS.Consumable{
    key = 'obsidian_sword', --key
    set = 'BloodMoneyType', --the set of the card: corresponds to a consumable type
    atlas = 'ObsidianSword', --atlas
    pos = {x = 0, y = 0}, --position in atlas
    loc_txt = {
        name = '{C:legendary}O{C:hearts}b{C:planet}s{C:purple}i{C:tarot}d{C:inactive}i{C:legendary}a{C:hearts}n{C:planet}\'{C:purple}s{C:tarot}{C:inactive}G{C:legendary}r{C:hearts}e{C:planet}a{C:purple}t{C:tarot}s{C:inactive}w{C:legendary}o{C:hearts}r{C:planet}d',
        text = { --text of card
            '{C:dark_edition}Destroys{} selected {C:attention}playing cards{}.',
            'Gain {C:white,X:gold}$25{} per destroyed card.',
            '{C:inactive,s:0.8,E:1}amazing art by @jasbear.art on TikTok{}'
        }
    },
    credit = {
      art = '@jasbear.art',
      code = 'Pink Focalors',
      concept = '@jasbear.art',
    },
    cost = 1e10,
    config = {
      extra = {
        destroy_max = 5,
        dollar_per   = 25,
      }
    },
  
    loc_vars = function(self, info_queue, center)
      return { vars = { center.ability.extra.destroy_max } }
    end,
  
    can_use = function(self, card)
      local n = #G.hand.highlighted
      return (n > 0 and n <= card.ability.extra.destroy_max)
    end,
  
    use = function(self, card, area, copier)
      local hl = G.hand.highlighted
      local n  = #hl
      if n == 0 then return end
  
      -- Remove highlighted cards in reverse order:
      for i = n, 1, -1 do
        local c = hl[i]
        if c ~= card then
          G.hand:remove_card(c)
          G.discard:emplace(c)
          c:start_dissolve()
        end
      end
  
      -- Award money
      local total = n * card.ability.extra.dollar_per
      ease_dollars(total)
    end,
  
    keep_on_use = function(self, card)
      return true
    end,
    in_pool = function(self, current_shop_cards, shop_level)
        return false, { allow_duplicates = false }
      end,
    add_to_deck = function(self, card, from_debuff)
      if not from_debuff then
        local has_blood = (#SMODS.find_card('j_sbeven_obsidian') > 0)
        if not has_blood then
          card:start_dissolve()
        end
        if not from_debuff and next(SMODS.find_card('c_sbeven_obsidian_sword')) then
            card:start_dissolve()
        end  
      end
    end,
    
    in_pool = function(self, current_shop_cards, shop_level)
      for _, c in ipairs(current_shop_cards or {}) do
        if c.key == 'c_sbeven_obsidian_sword' then
          return false, { allow_duplicates = false }
        end
      end
      return true, { allow_duplicates = false }
    end,
    calculate = function(self, card, context)
        if context.selling then
            return { sell = 0 }
        end
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



  -- Pot Of Jokes calculate function (from Cryptid)
--[[calculate = function(self, card, context)
    if context.end_of_round and not context.individual and not context.repetition and not context.blueprint then
        if
            to_big(card.ability.extra.h_size) + to_big(card.ability.extra.h_mod)
            >= to_big(card.ability.immutable.h_mod_max)
        then
            card.ability.extra.h_size = card.ability.immutable.h_mod_max
            card.ability.extra.h_mod = 0

            -- Fallback for if Pot of Jokes comes into this calcuate function with large h_size
            if card.ability.immutable.h_added < card.ability.immutable.h_mod_max then
                local delta = card.ability.immutable.h_mod_max - card.ability.immutable.h_added

                G.hand:change_size(delta)

                card.ability.immutable.h_added = card.ability.immutable.h_mod_max
            end
        end

        local delta = math.min(
            math.max(0, card.ability.immutable.h_mod_max - card.ability.extra.h_size),
            card.ability.extra.h_mod
        )

        G.hand:change_size(delta)

        card.ability.extra.h_size = card.ability.extra.h_size + card.ability.extra.h_mod
        card.ability.immutable.h_added = card.ability.immutable.h_added + delta

        return {
            message = localize({ type = "variable", key = "a_handsize", vars = { card.ability.extra.h_mod } }),
            colour = G.C.FILTER,
            card = card,
        }
    end
end,
add_to_deck = function(self, card, from_debuff)
    G.hand:change_size(math.min(card.ability.immutable.h_mod_max, card.ability.extra.h_size))
end,
remove_from_deck = function(self, card, from_debuff)
    G.hand:change_size(-1 * math.min(card.ability.immutable.h_mod_max, card.ability.extra.h_size))
end,]]
----------------------------------------------
------------MOD CODE END----------------------
    
