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


SMODS.Atlas{ --- for Padparadscha only atm (she's not even in the game lol)
    key = 'Jokers', --atlas key
    path = 'Jokers.png', --atlas' path in (yourMod)/assets/1x or (yourMod)/assets/2x
    px = 71, --width of one card
    py = 95 -- height of one card
}

-- SMODS.Atlas{ -- For the Crystal Gems (i tried for like and hour to put all of them in 1 atlas. i gave up.)
--    key = 'Gems', --atlas key
--   path = 'Gems.png', --atlas' path in (yourMod)/assets/1x or (yourMod)/assets/2x
--    px = 71, --width of one card
--    py = 95 -- height of one card
--}

SMODS.Atlas{ --- for The Diamonds
    key = 'Diamonds', --atlas key
    path = 'Diamonds.png', --atlas' path in (yourMod)/assets/1x or (yourMod)/assets/2x
    px = 71, --width of one card
    py = 95 -- height of one card
}

SMODS.Atlas{ --- for Padparadscha only atm (she's not even in the game lol)
    key = 'Steven', --atlas key
    path = 'Steven.png', --atlas' path in (yourMod)/assets/1x or (yourMod)/assets/2x
    px = 71, --width of one card
    py = 95 -- height of one card
}

SMODS.Atlas{ --- for Rose
    key = 'Rose', --atlas key
    path = 'Rose.png', --atlas' path in (yourMod)/assets/1x or (yourMod)/assets/2x
    px = 71, --width of one card
    py = 95 -- height of one card
}

SMODS.Atlas{ --- for Jasper
    key = 'Jasper', --atlas key
    path = 'Jasper.png', --atlas' path in (yourMod)/assets/1x or (yourMod)/assets/2x
    px = 71, --width of one card
    py = 95 -- height of one card
}

SMODS.Atlas{ --- for Rhodonite
    key = 'Rhodonite', --atlas key
    path = 'Rhodonite.png', --atlas' path in (yourMod)/assets/1x or (yourMod)/assets/2x
    px = 71, --width of one card
    py = 95 -- height of one card
}

SMODS.Atlas{ --- for Bubble Buddies
    key = 'Bubble', --atlas key
    path = 'Bubble.png', --atlas' path in (yourMod)/assets/1x or (yourMod)/assets/2x
    px = 71, --width of one card
    py = 95 -- height of one card
}

SMODS.Atlas{ --- for Spinel
    key = "Spinel", --atlas key
    path = "Spinel.png", --atlas' path in (yourMod)/assets/1x or (yourMod)/assets/2x
    px = 71, --width of one card
    py = 95 -- height of one card
}

SMODS.Atlas{ --- for Peridot
    key = "Peridot", --atlas key
    path = "Peridot.png", --atlas' path in (yourMod)/assets/1x or (yourMod)/assets/2x
    px = 71, --width of one card
    py = 95 -- height of one card
}

SMODS.Atlas{ --- for Lapis Lazuli
    key = "Lapis", --atlas key
    path = "Lapis.png", --atlas' path in (yourMod)/assets/1x or (yourMod)/assets/2x
    px = 71, --width of one card
    py = 95 -- height of one card
}

SMODS.Atlas{ --- for Cracked Lapis Lazuli
    key = "Cracked_Lapis", --atlas key
    path = "cracked_lapis.png", --atlas' path in (yourMod)/assets/1x or (yourMod)/assets/2x
    px = 71, --width of one card
    py = 95 -- height of one card
}

SMODS.Atlas{ --- for Garnet
    key = "Garnet", --atlas key
    path = "Garnet.png", --atlas' path in (yourMod)/assets/1x or (yourMod)/assets/2x
    px = 71, --width of one card
    py = 95 -- height of one card
}

SMODS.Atlas{ --- for Pearl
    key = "Pearl", --atlas key
    path = "Pearl.png", --atlas' path in (yourMod)/assets/1x or (yourMod)/assets/2x
    px = 71, --width of one card
    py = 95 -- height of one card
}

SMODS.Atlas{ --- for PaleRose
    key = "PaleRose", --atlas key
    path = "PaleRose.png", --atlas' path in (yourMod)/assets/1x or (yourMod)/assets/2x
    px = 71, --width of one card
    py = 95 -- height of one card
}

SMODS.Atlas{ --- for Ruby
    key = "Ruby", --atlas key
    path = "Ruby.png", --atlas' path in (yourMod)/assets/1x or (yourMod)/assets/2x
    px = 71, --width of one card
    py = 95 -- height of one card
}

SMODS.Atlas{ --- for Sapphire
    key = "Sapphire", --atlas key
    path = "Sapphire.png", --atlas' path in (yourMod)/assets/1x or (yourMod)/assets/2x
    px = 71, --width of one card
    py = 95 -- height of one card
}

SMODS.Atlas{ --- for Connie
    key = "Connie", --atlas key
    path = "Connie.png", --atlas' path in (yourMod)/assets/1x or (yourMod)/assets/2x
    px = 71, --width of one card
    py = 95 -- height of one card
}

SMODS.Atlas{ --- for Stevonnie
    key = "Stevonnie", --atlas key
    path = "Stevonnie.png", --atlas' path in (yourMod)/assets/1x or (yourMod)/assets/2x
    px = 71, --width of one card
    py = 95 -- height of one card
}

SMODS.Atlas{ --- for Sapphire
    key = "Amethyst", --atlas key
    path = "Amethyst.png", --atlas' path in (yourMod)/assets/1x or (yourMod)/assets/2x
    px = 71, --width of one card
    py = 95 -- height of one card
}


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
    atlas = 'Diamonds', --atlas' key
    rarity = 4, --rarity: 1 = Common, 2 = Uncommon, 3 = Rare, 4 = Legendary
    -- soul_pos = { x = 0, y = 2 },
    cost = 20, --cost
    unlocked = true, --where it is unlocked or not: if true, 
    discovered = true, --whether or not it starts discovered
    blueprint_compat = true, --can it be blueprinted/brainstormed/other
    eternal_compat = true, --can it be eternal
    perishable_compat = false, --can it be perishable
    pos = {x = 0, y = 0}, --position in atlas, starts at 0, scales by the atlas' card size (px and py): {x = 1, y = 0} would mean the sprite is 71 pixels to the right
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
        if context.end_of_round and not context.repetition and not context.individual and not context.game_over then
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
    in_pool = function(self,wawa,wawa2)
        --whether or not this card is in the pool, return true if it is, return false if its not
        return true
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
    atlas = 'Diamonds', --atlas' key
    rarity = 4, --rarity: 1 = Common, 2 = Uncommon, 3 = Rare, 4 = Legendary
    --soul_pos = { x = 0, y = 0 },
    cost = 25, --cost
    unlocked = true, --where it is unlocked or not: if true, 
    discovered = true, --whether or not it starts discovered
    blueprint_compat = true, --can it be blueprinted/brainstormed/other
    eternal_compat = true, --can it be eternal
    perishable_compat = true, --can it be perishable
    pos = {x = 2, y = 0}, --position in atlas, starts at 0, scales by the atlas' card size (px and py): {x = 1, y = 0} would mean the sprite is 71 pixels to the right
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
    in_pool = function(self,wawa,wawa2)
        --whether or not this card is in the pool, return true if it is, return false if its not
        return true
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
    atlas = 'Diamonds', --atlas' key
    rarity = 4, --rarity: 1 = Common, 2 = Uncommon, 3 = Rare, 4 = Legendary
    --soul_pos = { x = 0, y = 0 },
    cost = 20, --cost
    unlocked = true, --where it is unlocked or not: if true, 
    discovered = true, --whether or not it starts discovered
    blueprint_compat = true, --can it be blueprinted/brainstormed/other
    eternal_compat = true, --can it be eternal
    perishable_compat = true, --can it be perishable
    pos = {x = 1, y = 0}, --position in atlas, starts at 0, scales by the atlas' card size (px and py): {x = 1, y = 0} would mean the sprite is 71 pixels to the right
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
    in_pool = function(self,wawa,wawa2)
        --whether or not this card is in the pool, return true if it is, return false if its not
        return true
    end,
    
}


SMODS.Joker{ -- Pink Diamond
    key = 'pinkdiamond', --joker key
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
    atlas = 'Diamonds', --atlas' key
    rarity = 4, --rarity: 1 = Common, 2 = Uncommon, 3 = Rare, 4 = Legendary
    --soul_pos = { x = 0, y = 0 },
    cost = 10, --cost
    unlocked = true, --where it is unlocked or not: if true,
    discovered = true, --whether or not it starts discovered
    blueprint_compat = true, --can it be blueprinted/brainstormed/other
    eternal_compat = true, --can it be eternal
    perishable_compat = false, --can it be perishable
    pos = {x = 3, y = 0}, --position in atlas, starts at 0, scales by the atlas' card size (px and py): {x = 1, y = 0} would mean the sprite is 71 pixels to the right
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

    in_pool = function(self,wawa,wawa2)
        --whether or not this card is in the pool, return true if it is, return false if its not
        return true
    end,

}


SMODS.Joker{ -- Rose Quartz
    key = 'rose', --joker key
    loc_txt = {
        name = '{C:hearts}Rose Quartz{}',
        text = {
            'Leader of the Crystal Gems.'
        }
    },
    atlas = 'Rose', --atlas' key
    rarity = 4,
    cost = 25,
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = false,
    pos = {x = 0, y = 0}, --position in atlas, starts at 0, scales by the atlas' card size (px and py): {x = 1, y = 0} would mean the sprite is 71 pixels to the right

}


SMODS.Joker{ -- Steven Universe
    key = 'steven', --joker key
    loc_txt = {
        name = '{C:hearts}Steven Universe{}',
        text = {
            'No ability atm.',
            '{C:hearts,s:0.8}Life and Death and Love and Birth,{}',
            '{C:hearts,s:0.8}and Peace and War on the planet Earth.{}',
            '{C:legendary,s:0.7}- From \"It Could\'ve Been Great\"{}'
        }
    },
    atlas = 'Steven', --atlas' key
    rarity = 4,
    cost = 25,
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = false,
    pos = {x = 0, y = 0}, --position in atlas, starts at 0, scales by the atlas' card size (px and py): {x = 1, y = 0} would mean the sprite is 71 pixels to the right

}


SMODS.Joker{ -- Connie Maheswaran
    key = 'Connie', --joker key
    loc_txt = {
        name = '{C:legendary}Connie Maheswaran{}',
        text = {
            '{s:0.8,C:enhanced}I want to, Steven. I want to be a part of your universe.{}',
            '{C:legendary,s:0.7}- From \"Full Disclosure\"{}'
        }
    },
    atlas = 'Connie', --atlas' key
    rarity = 4,
    cost = 25,
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = false,
    pos = {x = 0, y = 0}, --position in atlas, starts at 0, scales by the atlas' card size (px and py): {x = 1, y = 0} would mean the sprite is 71 pixels to the right

}


SMODS.Joker{ -- Stevonnie
    key = 'Stevonnie', --joker key
    loc_txt = {
        name = '{C:legendary}Stevonnie{}',
        text = {
            '{C:enhanced,E:1,s:0.8}An{} {C:edition,E:1,s:0.8}Experience{}.',
            '{C:legendary,s:0.7}- From \"Alone Together\"{}'
        }
    },
    atlas = 'Stevonnie', --atlas' key
    rarity = 4,
    cost = 25,
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = false,
    pos = {x = 0, y = 0}, --position in atlas, starts at 0, scales by the atlas' card size (px and py): {x = 1, y = 0} would mean the sprite is 71 pixels to the right

}


SMODS.Joker{ -- Steven Universe
    key = 'jasper', --joker key
    loc_txt = {
        name = '{C:diamonds}Jasper{}',
        text = {
            '{C:diamonds,s:0.8}Perfect Gem{}'
        }
    },
    atlas = 'Jasper', --atlas' key
    rarity = 4,
    cost = 25,
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = false,
    pos = {x = 0, y = 0}, --position in atlas, starts at 0, scales by the atlas' card size (px and py): {x = 1, y = 0} would mean the sprite is 71 pixels to the right

}


-- Joker: Pearl
SMODS.Joker{
    key = 'pearl',
    loc_txt = {
        name = '{X:red,C:white}Pearl{}',
        text = {
            'Playing cards {C:attention}permanently gain{} {X:mult,C:white}x0.2{} Mult when scored.{}',
            '{C:inactive,s:0.8}Everything I ever did, I did for{} {C:inactive,C:hearts,E:1,s:0.8}her.{}',
            '{C:inactive,s:0.8}Now{} {C:inactive,C:hearts,E:1,s:0.8}she\'s{} {C:inactive,s:0.8}gone, but I\'m still here.{}',
            '{C:inactive,s:0.8}Sometimes, I wonder if{} {C:inactive,C:hearts,E:1,s:0.8}she{} {C:inactive,s:0.8}can see me through your eyes.{}',
            '{C:inactive,s:0.8}What would{} {C:inactive,C:hearts,E:1,s:0.8}she{} {C:inactive,s:0.8}think of me now?{}',
            '{C:inactive,s:0.7,C:legendary}- From \"Rose\'s Scabbard\"{}'
        }
    },
    atlas = 'Pearl', --atlas' key
    rarity = 4,
    cost = 25,
    unlocked = true,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    perishable_compat = false,
    pos = {x = 0, y = 0}, --position in atlas, starts at 0, scales by the atlas' card size (px and py): {x = 1, y = 0} would mean the sprite is 71 pixels to the right

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

    -- Always available in the pool
    in_pool = function(self, ...)
        return true
    end,
}


SMODS.Joker{ -- pale rose
    key = 'pale_rose',
    loc_txt = {
        name = '{C:hearts}A Single Pale Rose{}',
        text = {
            'After {C:attention}defeating{} a {C:enhancement}blind{},',
            'makes a random {C:attention}non-editioned Joker{}',
            '{C:dark_edition}negative{} or {C:edition}polychrome{}.',
            '{C:enhanced,s:0.8}I always thought I might be bad,{}',
            '{C:enhanced,s:0.8}Now I\'m sure that it\'s true.{}',
            '{C:enhanced,s:0.8}Cause I think you\'re so good, and I\'m nothing like you.{}',
            '{C:inactive,s:0.7,C:legendary}- From \"Love Like You\"{}'
        },
    },
    atlas = 'PaleRose', --atlas' key
    rarity = 4,
    cost = 12,
    unlocked = true,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    perishable_compat = false,
    pos = { x = 0, y = 0 },

    -- No more config.extra or loc_vars

    calculate = function(self, card, context)
        -- Only once per shop cycle, and not per-card repetition
        if context.end_of_round and not context.repetition and not context.individual then
            -- Build pool of Jokers without an edition
            local pool = {}
            for _, j in ipairs(G.jokers.cards) do
                if not j.edition then
                    table.insert(pool, j)
                end
            end

            if #pool > 0 then
                -- Choose one Joker and one edition at random
                local choice = pseudorandom_element(pool)
                local editions = {
                    'e_polychrome',
                    'e_negative',
                    -- add any others you want here
                }
                local ed_key = pseudorandom_element(editions)

                -- Apply and juice
                choice:set_edition(ed_key, true)
                choice:juice_up(0.5, 0.5)

                return {
                    card = choice,
                    message = 'Do it for her.',
                    colour = G.C.EDITION,
                }
            end
        end
    end,

    in_pool = function(self,wawa,wawa2)
        return true
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
    atlas = 'Cracked_Lapis', --atlas' key
    rarity = 3, --rarity: 1 = Common, 2 = Uncommon, 3 = Rare, 4 = Legendary
    --soul_pos = { x = 0, y = 0 },
    cost = 6, --cost
    unlocked = true, --where it is unlocked or not: if true, 
    discovered = true, --whether or not it starts discovered
    blueprint_compat = true, --can it be blueprinted/brainstormed/other
    eternal_compat = true, --can it be eternal
    perishable_compat = true, --can it be perishable
    pos = {x = 0, y = 0}, --position in atlas, starts at 0, scales by the atlas' card size (px and py): {x = 1, y = 0} would mean the sprite is 71 pixels to the right
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
    in_pool = function(self,wawa,wawa2)
        --whether or not this card is in the pool, return true if it is, return false if its not
        return true
    end,
    
}


SMODS.Joker{ -- Lapis Lazuli
    key = 'lapis', -- joker key
    loc_txt = {
        name = '{C:blue}Lapis Lazuli{}', -- name of joker
        text = {
            "Just {C:white,X:mult}X#1#{} Mult for now.",
            '{C:inactive,C:blue,s:0.8}I\'ve felt worse...{}',
            '{C:inactive,s:0.7,C:legendary}- From \"Reunited\"{}'
        }
   },
    config = {
        extra = {
            Xmult = 5 --configurable value
        }
    },
    loc_vars = function(self, info_queue, card)
        return {vars = {card.ability.extra.Xmult}} --#1# is replaced with card.ability.extra.Xmult
    end,
    rarity = 3,
    atlas = 'Lapis', -- atlas' key
    pos = { x = 0, y = 0 },
    cost = 10,
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,

   calculate = function(self, card, context)
        if context.joker_main then
            return {
               Xmult_mod = card.ability.extra.Xmult,
               message = localize { type = 'variable', key = 'Xmult', vars = {card.ability.extra.Xmult} },
           }
       end
   end,
   in_pool = function(self, wawa, wawa2)
        --whether or not this card is in the pool, return true if it is, return false if its not
        return true
    end,     
}


SMODS.Joker {
	key = 'peridot', -- joker key
	loc_txt = {
		name = '{C:green,E:1}Peridot{}', -- name of joker
		text = {
			"If {C:attention}played hand{} contains at least {C:attention}3{} scoring {C:attention}7s{},",
			"create {C:attention}3{} {C:dark_edition}Negative{} Consumables",
            "{C:inactive,s:0.8}I think you\'re all insane!{}",
            "{C:inactive,s:0.8}But I guess I am too.{}",
            "{C:inactive,s:0.8}Anybody would be{}",
            "{C:inactive,s:0.8}If they were stuck on Earth with you!{}",
            '{C:inactive,s:0.7,C:legendary}- From \"It Could\'ve Been Great\"{}'

		}
	},
	loc_vars = function(self, info_queue, card)
		info_queue[#info_queue + 1] = G.P_CENTERS.e_negative
	end,
	rarity = 3,
	atlas = 'Peridot', -- atlas' key
	pos = { x = 0, y = 0 },
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
			if seven_count >= 3 then
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
    in_pool = function(self, wawa, wawa2)
        --whether or not this card is in the pool, return true if it is, return false if its not
        return true
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
    atlas = 'Spinel', --atlas' key
    rarity = 4, --rarity: 1 = Common, 2 = Uncommon, 3 = Rare, 4 = Legendary
    --soul_pos = { x = 0, y = 0 },
    cost = 12, --cost
    unlocked = true, --where it is unlocked or not: if true, 
    discovered = true, --whether or not it starts discovered
    blueprint_compat = true, --can it be blueprinted/brainstormed/other
    eternal_compat = true, --can it be eternal
    perishable_compat = true, --can it be perishable
    pos = {x = 0, y = 0}, --position in atlas, starts at 0, scales by the atlas' card size (px and py): {x = 1, y = 0} would mean the sprite is 71 pixels to the right
    config = { 
      extra = {
        chips = 77777 --configurable value
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
				message = 'Best Friends!', 
				colour = G.C.CHIPS
				}
        end
    end,
    in_pool = function(self,wawa,wawa2)
        --whether or not this card is in the pool, return true if it is, return false if its not
        return true
    end,
    
}


--SMODS.Joker{ --Bubble Buddies
--    key = 'bubble', --joker key
--    loc_txt = { -- local text
--        name = '{C:spectral}Bubble Buddies{}', --name of joker
--        text = {
--          'Played {C:attention}7s{} are retriggered',
--          '{C:dark_edition}#1#{} times',
---          '{C:inactive,C:tarot,s:0.8}Hey! Don\'t mess with his funky flow.{}',
--          '{C:inactive,s:0.7,C:legendary}- From \"Bubble Buddies\"{}'
--        },
        --[[unlock = {
            'Be {C:legendary}cool{}',
        }]]
 --   },
--    atlas = 'Bubble', --atlas' key
--    rarity = 3, --rarity: 1 = Common, 2 = Uncommon, 3 = Rare, 4 = Legendary
--    --soul_pos = { x = 0, y = 0 },
--    cost = 12, --cost
--    unlocked = true, --where it is unlocked or not: if true, 
--    discovered = true, --whether or not it starts discovered
--    blueprint_compat = true, --can it be blueprinted/brainstormed/other
--    eternal_compat = true, --can it be eternal
--    perishable_compat = true, --can it be perishable
--    pos = {x = 0, y = 0}, --position in atlas, starts at 0, scales by the atlas' card size (px and py): {x = 1, y = 0} would mean the sprite is 71 pixels to the right
--    config = { 
--      extra = {
--        repetitions = 7 --configurable value
--      }
--    },
--    loc_vars = function(self,info_queue,center)
--        return {vars = {center.ability.extra.repetitions}} --#1# is replaced with card.ability.extra.Xmult
--    end,
--    check_for_unlock = function(self, args)
--        if args.type == 'derek_loves_you' then --not a real type, just a joke
---            unlock_card(self)
--        end
--        unlock_card(self) --unlocks the card if it isnt unlocked
--    end,
--    calculate = function(self,card,context)
--        if context.cardarea == G.play and context.repetition and not context.repetition_only then
--			if (context.other_card:get_id() == 7) then
--			return {
--				message = 'Buddies!',
--				repetitions = card.ability.extra.repetitions,
--				card = context.other_card
--				}
--				end
--				end
---   end,
--    in_pool = function(self,wawa,wawa2)
--        --whether or not this card is in the pool, return true if it is, return false if its not
--        return true
--    end,
--    
--}


SMODS.Joker{ -- Ruby
    key = 'ruby', -- joker key
    center_key = 'ruby', -- center key
    loc_txt = {
        name = '{C:rare}Ruby{}', -- name of joker
        text = {
            'Each played card gives {C:white,X:mult}X#1#{} Mult,', 
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
    rarity = 3,
    atlas = 'Ruby', -- atlas' key
    pos = { x = 0, y = 0 },
    cost = 10,
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
   in_pool = function(self, wawa, wawa2)
        --whether or not this card is in the pool, return true if it is, return false if its not
        return true
    end,     
}


SMODS.Joker{ -- Sapphire
    key = 'sapphire', --joker key
    center_key = 'sapphire', -- center key
    loc_txt = { -- local text
        name = '{C:planet}Sapphire{}', --name of joker
        text = {
            '{C:attention}Retrigger{} all {C:attention}played cards{}',
            'if played hand is a {C:attention}Pair{}.',
            '{C:inactive,C:planet,s:0.8}I\'ve never had more than one!{}',
            '{C:inactive,C:planet,s:0.8}It was nice.{}',
            '{C:inactive,s:0.7,C:legendary}- From \"The Answer\"{}'
        } 
         --[[unlock = {
                'Be {C:legendary}cool{}',
          }]]
    },
    atlas = 'Sapphire', --atlas' key
    rarity = 3, --rarity: 1 = Common, 2 = Uncommon, 3 = Rare, 4 = Legendary
    --soul_pos = { x = 0, y = 0 },
    cost = 10, --cost
    unlocked = true, --where it is unlocked or not: if true,
    discovered = true, --whether or not it starts discovered
    blueprint_compat = true, --can it be blueprinted/brainstormed/other
    eternal_compat = true, --can it be eternal
    perishable_compat = false, --can it be perishable
    pos = {x = 0, y = 0}, --position in atlas, starts at 0, scales by the atlas' card size (px and py): {x = 1, y = 0} would mean the sprite is 71 pixels to the right
    config = { 
      extra = {
        repetitions = 1 --configurable value
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
        if context.cardarea == G.play and context.scoring_name == 'Pair' and context.repetition and not context.repetition_only then
            return {
                message = 'Such is fate.',
                repetitions = card.ability.extra.repetitions,
                card = context.other_card
            }
        end
    end,

    in_pool = function(self,wawa,wawa2)
        --whether or not this card is in the pool, return true if it is, return false if its not
        return true
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
    atlas = 'Amethyst', -- atlas' key
    rarity = 3, -- rarity: 1 = Common, 2 = Uncommon, 3 = Rare, 4 = Legendary
    cost = 10, -- cost in chips
    unlocked = true, -- where it is unlocked or not: if true,
    discovered = true, -- whether or not it starts discovered
    blueprint_compat = true, -- can it be blueprinted/brainstormed/other
    eternal_compat = true, -- can it be eternal
    perishable_compat = false, -- can it be perishable
    pos = {x = 0, y = 0}, -- position in atlas, starts at 0, scales by the atlas' card size (px and py): {x = 1, y = 0} would mean the sprite is 71 pixels to the right
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
    in_pool = function(self, wawa, wawa2)
        -- whether or not this card is in the pool, return true if it is, return false if its not
        return true
    end,

}


SMODS.Joker{
    key = 'garnet', -- joker key
    center_key = 'garnet', -- center key
    loc_txt = { -- localization text
        name = '{C:tarot,E:1}Garnet{}',
        text = {
            'Each card played in a {C:attention,E:1}Pair{}', 
            'gives {X:mult,C:white,E:1}X#1#{} Mult when {C:attention}scored{}.',
            '{C:inactive,s:0.8}This is{} {C:tarot,E:1,s:0.8}Garnet{}. {C:inactive,s:0.8}Back together.{}',
            '{C:inactive,s:0.7,C:legendary}- From \"Jailbreak\"{}'
        }
    },
    atlas = 'Garnet', -- atlas key
    rarity = 4, -- Legendary
    cost = 20, -- cost in chips
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = false,
    pos = {x = 0, y = 0}, -- position in atlas

    config = {
        extra = { Xmult = 8 }, -- multiplier value
        modName = "Universe",
    },
    loc_vars = function(self, info_queue, center)
        return { vars = { center.ability.extra.Xmult } }
    end,

    calculate = function(self, card, context)
        -- For each scored card when the hand is a Pair, apply x4 mult and "Made of Love"
        if context.individual and context.cardarea == G.play and context.scoring_name == 'Pair' then
            return {
                x_mult = card.ability.extra.Xmult, -- apply multiplier
                card = context.other_card, -- target each scored card
                message = 'Stronger Than You.', -- display on trigger
                colour = G.C.MULT, -- multiplier colour
                func = function() context.other_card:juice_up(0.5, 0.5) end -- visual flourish
            }
        end
    end,

    in_pool = function(self,wawa,wawa2)
        return true -- always available in Joker pool
    end,
} 


SMODS.Joker{ --- Rhodonite
    key = 'rhodonite', --joker key
    loc_txt = { -- local text
        name = '{C:tarot}Rhodonite{}', --name of joker
        text = {
          'Each played {C:attention}7{} gives',
          '{X:mult,C:white}X#1#{} Mult when scored',
          '{C:inactive,s:0.8,C:tarot}Welp... We\'re cracked.{}',
          '{C:inactive,s:0.7,C:legendary}- From \"Change Your Mind\"{}'
        },
        --[[unlock = {
            'Be {C:legendary}cool{}',
        }]]
    },
    atlas = 'Rhodonite', --atlas' key
    rarity = 4, --rarity: 1 = Common, 2 = Uncommon, 3 = Rare, 4 = Legendary
    --soul_pos = { x = 0, y = 0 },
    cost = 25, --cost
    unlocked = true, --where it is unlocked or not: if true, 
    discovered = true, --whether or not it starts discovered
    blueprint_compat = true, --can it be blueprinted/brainstormed/other
    eternal_compat = true, --can it be eternal
    perishable_compat = true, --can it be perishable
    pos = {x = 0, y = 0}, --position in atlas, starts at 0, scales by the atlas' card size (px and py): {x = 1, y = 0} would mean the sprite is 71 pixels to the right
    config = { 
      extra = {
        Xmult = 7 --configurable value
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
            if context.other_card:get_id() == 7 then
			return {
				Xmult_mod = card.ability.extra.Xmult,
				card = card,
				message = 'No more Diamond Authority!',
				colour = G.C.MULT
				}
			end
        end

        
    end,
    in_pool = function(self,wawa,wawa2)
        --whether or not this card is in the pool, return true if it is, return false if its not
        return true
    end,
    
}


SMODS.ConsumableType{
    key = 'UniverseConsumableType', --consumable type key

    collection_rows = {4,5}, --amount of cards in one page
    primary_colour = G.C.PURPLE, --first color
    secondary_colour = G.C.DARK_EDITION, --second color
    loc_txt = {
        collection = 'Universe Cards', --name displayed in collection
        name = 'STEVEN UNIVERSE', --name displayed in badge
        undiscovered = {
            name = 'Diamond Corruption', --undiscovered name
            text = {'If it wasn\'t for {C:hearts}Rose\'s shield...'} --undiscovered text
        }
    },
    shop_rate = 1, --rate in shop out of 100
}


SMODS.UndiscoveredSprite{
    key = 'UniverseConsumableType', --must be the same key as the consumabletype
    atlas = 'Diamonds', --atlas key
    pos = {x = 0, y = 0}
}


SMODS.Consumable{
    key = 'Universe', --key
    set = 'UniverseConsumableType', --the set of the card: corresponds to a consumable type
    atlas = 'Diamonds', --atlas
    pos = {x = 0, y = 0}, --position in atlas
    loc_txt = {
        name = '{C:edition}Corruption Induction{}', --name of card
        text = { --text of card
            'Add {C:dark_edition}negative{} to up to {C:attention}#1#{} selected cards.',
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

    end,
}


----------------------------------------------
------------MOD CODE END----------------------
    
