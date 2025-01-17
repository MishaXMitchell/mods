require("util")

if not data.raw["equipment-category"]["equipment-void"] then
  data:extend(
    {
      {
        type = "equipment-category",
        name = "equipment-void"
      }
    }
  )
end

data:extend(
  {
    {
      type = "item",
      name = "deco-nilaus-1",
      icon = "__angelsaddons-nilaus__/graphics/icons/deco-nilaus-1.png",
      icon_size = 32,
      subgroup = "storage",
      order = "za",
      place_result = "deco-nilaus-1",
      stack_size = 10
    },
    {
      type = "simple-entity-with-force",
      name = "deco-nilaus-1",
      render_layer = "object",
      icon = "__angelsaddons-nilaus__/graphics/icons/deco-nilaus-1.png",
      icon_size = 32,
      flags = {"placeable-neutral", "player-creation"},
      order = "a",
      minable = {mining_time = 1, result = "deco-nilaus-1"},
      max_health = 100,
      corpse = "small-remnants",
      collision_box = {{-1.35, -1.35}, {1.35, 1.35}},
      selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
      drawing_box = {{-1.5, -2.5}, {1.5, 1.5}},
      random_animation_offset = false,
      animations = {
        {
          filename = "__angelsaddons-nilaus__/graphics/entity/deco-nilaus-1.png",
          priority = "extra-high",
          width = 320,
          height = 320,
          line_length = 6,
          frame_count = 36,
          animation_speed = 0.25,
          scale = 0.5,
          shift = {0.5, -0.5}
        }
      }
    },
    {
      type = "item",
      name = "deco-nilaus-2",
      icon = "__angelsaddons-nilaus__/graphics/icons/deco-nilaus-2.png",
      icon_size = 32,
      subgroup = "storage",
      order = "zb",
      place_result = "deco-nilaus-2",
      stack_size = 10
    },
    {
      type = "container",
      name = "deco-nilaus-2",
      --render_layer = "object",
      icon = "__angelsaddons-nilaus__/graphics/icons/deco-nilaus-2.png",
      icon_size = 32,
      inventory_size = 64,
      flags = {"placeable-neutral", "player-creation"},
      order = "a",
      minable = {mining_time = 1, result = "deco-nilaus-2"},
      max_health = 100,
      corpse = "small-remnants",
      collision_box = {{-1.35, -1.35}, {1.35, 1.35}},
      selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
      --random_animation_offset = false,
      picture = {
        filename = "__angelsaddons-nilaus__/graphics/entity/deco-nilaus-2.png",
        priority = "extra-high",
        width = 320,
        height = 320,
        scale = 0.5,
        shift = {0.5, -0.5}
      },
      open_sound = {filename = "__base__/sound/wooden-chest-open.ogg"},
      close_sound = {filename = "__base__/sound/wooden-chest-close.ogg"},
      vehicle_impact_sound = {filename = "__base__/sound/car-wood-impact.ogg", volume = 1.0},
      circuit_wire_connection_point = circuit_connector_definitions["chest"].points,
      circuit_connector_sprites = circuit_connector_definitions["chest"].sprites,
      circuit_wire_max_distance = default_circuit_wire_max_distance
    },
    {
      type = "item",
      name = "deco-nilaus-lamp",
      icon = "__angelsaddons-nilaus__/graphics/icons/lamp-ico.png",
      icon_size = 64,
      subgroup = "storage",
      order = "zc",
      place_result = "deco-nilaus-lamp",
      stack_size = 10
    },
    {
      type = "lamp",
      name = "deco-nilaus-lamp",
      icon = "__angelsaddons-nilaus__/graphics/icons/lamp-ico.png",
      icon_size = 64,
      flags = {"placeable-neutral", "player-creation"},
      minable = {mining_time = 0.1, result = "deco-nilaus-lamp"},
      max_health = 100,
      corpse = "lamp-remnants",
      collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
      selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
      vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
      energy_source = {
        type = "electric",
        usage_priority = "lamp"
      },
      energy_usage_per_tick = "5KW",
      darkness_for_all_lamps_on = 0.5,
      darkness_for_all_lamps_off = 0.3,
      light = {intensity = 0.9, size = 40, color = {r = 1.0, g = 1.0, b = 1.0}},
      light_when_colored = {intensity = 1, size = 6, color = {r = 1.0, g = 1.0, b = 1.0}},
      glow_size = 6,
      glow_color_intensity = 0.135,
      picture_off = {
        filename = "__angelsaddons-nilaus__/graphics/entity/lamp.png",
        priority = "high",
        width = 128,
        height = 128,
        frame_count = 1,
        axially_symmetrical = false,
        direction_count = 1,
        --shift = util.by_pixel(0,3),
        scale = 0.5
      },
      picture_on = {
        filename = "__angelsaddons-nilaus__/graphics/entity/lamp-patch.png",
        priority = "high",
        width = 128,
        height = 128,
        frame_count = 1,
        axially_symmetrical = false,
        direction_count = 1,
        --shift = util.by_pixel(0,3),
        scale = 0.5
      },
      signal_to_color_mapping = {
        {type = "virtual", name = "signal-red", color = {r = 1, g = 0, b = 0}},
        {type = "virtual", name = "signal-green", color = {r = 0, g = 1, b = 0}},
        {type = "virtual", name = "signal-blue", color = {r = 0, g = 0, b = 1}},
        {type = "virtual", name = "signal-yellow", color = {r = 1, g = 1, b = 0}},
        {type = "virtual", name = "signal-pink", color = {r = 1, g = 0, b = 1}},
        {type = "virtual", name = "signal-cyan", color = {r = 0, g = 1, b = 1}}
      },
      circuit_wire_connection_point = circuit_connector_definitions["lamp"].points,
      circuit_connector_sprites = circuit_connector_definitions["lamp"].sprites,
      circuit_wire_max_distance = default_circuit_wire_max_distance
    },
    {
      type = "item",
      name = "deco-nilaus-start",
      icon = "__angelsaddons-nilaus__/graphics/entity/deco-nilaus-start-off.png",
      icon_size = 416,
      --flags = {},
      subgroup = "storage",
      order = "zd",
      place_result = "deco-nilaus-start",
      stack_size = 10
    },
    {
      type = "lamp",
      name = "deco-nilaus-start",
      icon = "__angelsaddons-nilaus__/graphics/entity/deco-nilaus-start-off.png",
      icon_size = 416,
      flags = {"placeable-neutral", "player-creation"},
      collision_mask = {"ghost-layer", "water-tile"},
      --render_layer = "decals",
      --tile_layer = 70,
      minable = {mining_time = 60, result = "deco-nilaus-start"},
      max_health = 1000,
      corpse = "big-remnants",
      collision_box = {{-5.4, -0.4}, {5.4, 10.4}},
      selection_box = {{-5.5, -0.5}, {5.5, 10.5}},
      vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
      energy_source = {
        type = "electric",
        usage_priority = "lamp"
      },
      energy_usage_per_tick = "50KW",
      darkness_for_all_lamps_on = 0.5,
      darkness_for_all_lamps_off = 0.3,
      light = {intensity = 0.9, size = 40, color = {r = 1.0, g = 1.0, b = 1.0}},
      light_when_colored = {intensity = 1, size = 6, color = {r = 1.0, g = 1.0, b = 1.0}},
      glow_size = 6,
      glow_color_intensity = 0.135,
      picture_off = {
        filename = "__angelsaddons-nilaus__/graphics/entity/deco-nilaus-start-off.png",
        priority = "high",
        width = 416,
        height = 416,
        frame_count = 1,
        axially_symmetrical = false,
        direction_count = 1,
        shift = {0, 5}
      },
      picture_on = {
        filename = "__angelsaddons-nilaus__/graphics/entity/deco-nilaus-start-on.png",
        priority = "high",
        width = 416,
        height = 416,
        frame_count = 1,
        axially_symmetrical = false,
        direction_count = 1,
        shift = {0, 5}
      },
      signal_to_color_mapping = {
        {type = "virtual", name = "signal-red", color = {r = 1, g = 0, b = 0}},
        {type = "virtual", name = "signal-green", color = {r = 0, g = 1, b = 0}},
        {type = "virtual", name = "signal-blue", color = {r = 0, g = 0, b = 1}},
        {type = "virtual", name = "signal-yellow", color = {r = 1, g = 1, b = 0}},
        {type = "virtual", name = "signal-pink", color = {r = 1, g = 0, b = 1}},
        {type = "virtual", name = "signal-cyan", color = {r = 0, g = 1, b = 1}}
      },
      circuit_wire_connection_point = circuit_connector_definitions["lamp"].points,
      circuit_connector_sprites = circuit_connector_definitions["lamp"].sprites,
      circuit_wire_max_distance = default_circuit_wire_max_distance
    }
  }
)
