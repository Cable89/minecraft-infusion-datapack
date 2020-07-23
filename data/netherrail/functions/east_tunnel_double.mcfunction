fill ~1 ~ ~-3 ~8 ~2 ~1 minecraft:air

#Floor
fill ~1 ~-1 ~-3 ~8 ~-1 ~1 minecraft:stone_bricks

#Center floor
fill ~1 ~ ~-1 ~8 ~ ~-1 minecraft:stone_brick_slab

#Roof
fill ~1 ~2 ~ ~7 ~2 ~ minecraft:stone_brick_slab[type=top]
fill ~1 ~2 ~-2 ~7 ~2 ~-2 minecraft:stone_brick_slab[type=top]
fill ~1 ~2 ~-1 ~8 ~2 ~-1 minecraft:stone_brick_slab[type=top]

#Corners
fill ~1 ~2 ~1 ~8 ~2 ~1 minecraft:stone_brick_stairs[facing=south, half=top]
fill ~1 ~ ~1 ~8 ~ ~ minecraft:stone_brick_stairs[facing=south, half=bottom]
fill ~1 ~2 ~-3 ~8 ~2 ~-3 minecraft:stone_brick_stairs[facing=north, half=top]
fill ~1 ~ ~-3 ~8 ~ ~-3 minecraft:stone_brick_stairs[facing=north, half=bottom]

#Column
fill ~4 ~ ~-1 ~4 ~2 ~-1 minecraft:chiseled_stone_bricks

setblock ~8 ~-1 ~ minecraft:redstone_block
setblock ~8 ~-1 ~-2 minecraft:redstone_block
setblock ~8 ~3 ~ minecraft:glowstone
setblock ~8 ~3 ~-2 minecraft:glowstone

fill ~1 ~ ~ ~7 ~ ~ minecraft:rail
fill ~1 ~ ~-2 ~7 ~ ~-2 minecraft:rail
setblock ~8 ~ ~ minecraft:powered_rail
setblock ~8 ~ ~-2 minecraft:powered_rail

#Replace sidewalls
fill ~1 ~1 ~2 ~8 ~1 ~2 minecraft:white_concrete replace minecraft:netherrack
fill ~1 ~1 ~-4 ~8 ~1 ~-4 minecraft:white_concrete replace minecraft:netherrack
fill ~1 ~1 ~2 ~8 ~1 ~2 minecraft:white_concrete replace minecraft:blackstone
fill ~1 ~1 ~-4 ~8 ~1 ~-4 minecraft:white_concrete replace minecraft:blackstone
fill ~1 ~1 ~2 ~8 ~1 ~2 minecraft:white_concrete replace minecraft:basalt
fill ~1 ~1 ~-4 ~8 ~1 ~-4 minecraft:white_concrete replace minecraft:basalt
fill ~1 ~1 ~2 ~8 ~1 ~2 minecraft:white_concrete replace minecraft:soul_soil
fill ~1 ~1 ~-4 ~8 ~1 ~-4 minecraft:white_concrete replace minecraft:soul_soil
fill ~1 ~1 ~2 ~8 ~1 ~2 minecraft:white_concrete replace minecraft:soul_sand
fill ~1 ~1 ~-4 ~8 ~1 ~-4 minecraft:white_concrete replace minecraft:soul_sand
fill ~1 ~1 ~2 ~8 ~1 ~2 minecraft:white_concrete replace minecraft:nether_gold_ore
fill ~1 ~1 ~-4 ~8 ~1 ~-4 minecraft:white_concrete replace minecraft:nether_gold_ore
fill ~1 ~1 ~2 ~8 ~1 ~2 minecraft:white_concrete replace minecraft:nether_quartz_ore
fill ~1 ~1 ~-4 ~8 ~1 ~-4 minecraft:white_concrete replace minecraft:nether_quartz_ore
fill ~1 ~1 ~2 ~8 ~1 ~2 minecraft:white_concrete replace minecraft:lava
fill ~1 ~1 ~-4 ~8 ~1 ~-4 minecraft:white_concrete replace minecraft:lava
