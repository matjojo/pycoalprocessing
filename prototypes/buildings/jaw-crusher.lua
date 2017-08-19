-------------------------------------------------------------------------------
--[[Recipes]]--
local recipe1={
    type = "recipe",
    name = "jaw-crusher",
    energy_required = 10,
    enabled = false,
    ingredients =
    {
        {"car", 1},
        {"iron-plate", 25},
        {"engine-unit", 4},
        {"steel-plate", 30}, --updated-bob invar-alloy
        {"electronic-circuit", 15}, --updated-bob basic-electronic-circuit-board
    },
    result= "jaw-crusher",
}
-------------------------------------------------------------------------------
--[[Items]]--
local item1={
    type = "item",
    name = "jaw-crusher",
    icon = "__pycoalprocessing__/graphics/icons/jaw-crusher.png",
    flags = {"goes-to-quickbar"},
    subgroup = "coal-processing",
    order = "s",
    place_result = "jaw-crusher",
    stack_size = 10,
}
-------------------------------------------------------------------------------
--[[Entites]]--
local entity1={
    type = "assembling-machine",
    name = "jaw-crusher",
    icon = "__pycoalprocessing__/graphics/icons/jaw-crusher.png",
    flags = {"placeable-neutral","player-creation"},
    minable = {mining_time = 1, result = "jaw-crusher"},
    fast_replaceable_group = "jaw-crusher",
    max_health = 600,
    corpse = "medium-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-3.3, -3.3}, {3.3, 3.3}},
    selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
    module_specification =
    {
        module_slots = 4
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    crafting_categories = {"crusher"},
    crafting_speed = 0.3,
    energy_source =
    {
        type = "electric",
        usage_priority = "secondary-input",
        emissions = 0.05 / 2.6,
    },
    energy_usage = "300kW",
    ingredient_count = 3,

    animation ={
        layers={
            {
                filename = "__pycoalprocessing__/graphics/entity/jaw-crusher/sprite-left.png",
                width = 96,
                height = 256,
                line_length = 21,
                frame_count = 161,
                shift = {-2.0, -0.5},
                animation_speed = 0.85,
            },
            {
                filename = "__pycoalprocessing__/graphics/entity/jaw-crusher/sprite-mid.png",
                width = 96,
                height = 256,
                line_length = 21,
                frame_count = 161,
                shift = {1.0, -0.5},
                animation_speed = 0.85,
            },
            {
                filename = "__pycoalprocessing__/graphics/entity/jaw-crusher/sprite-right.png",
                width = 32,
                height = 256,
                line_length = 64,
                frame_count = 161,
                shift = {3.0, -0.5},
                animation_speed = 0.85,
            },
        }
    },

    vehicle_impact_sound = { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
        sound = { filename = "__pycoalprocessing__/sounds/classifier.ogg", volume = 0.85 },
        idle_sound = { filename = "__pycoalprocessing__/sounds/classifier.ogg", volume = 0.5 },
        apparent_volume = 2.5,
    },
}
-------------------------------------------------------------------------------
--[[Extend Data]]--
if recipe1 then data:extend({recipe1}) end
if item1 then data:extend({item1}) end
if entity1 then data:extend({entity1}) end