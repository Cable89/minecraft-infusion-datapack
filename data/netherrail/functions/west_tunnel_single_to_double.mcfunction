#This file was automatically generated from .\east_tunnel_single_to_double.mcfunction 
fill ~-1 ~ ~2 ~-8 ~2 ~-2 minecraft:air
fill ~ ~1 ~2 ~-8 ~1 ~-2 minecraft:air

#Floor
fill ~-1 ~-1 ~2 ~-8 ~-1 ~-2 minecraft:stone_bricks
fill ~ ~-1 ~1 ~ ~-1 ~2 minecraft:stone_bricks
fill ~ ~-1 ~-1 ~ ~-1 ~-2 minecraft:stone_bricks

#Center floor
fill ~-4 ~ ~ ~-8 ~ ~ minecraft:stone_brick_slab

#Roof
fill ~-1 ~2 ~-1 ~-7 ~2 ~-1 minecraft:stone_brick_slab[type=top]
fill ~-1 ~2 ~1 ~-7 ~2 ~1 minecraft:stone_brick_slab[type=top]
fill ~-1 ~2 ~ ~-8 ~2 ~ minecraft:stone_brick_slab[type=top]

#Corners
fill ~-1 ~2 ~-2 ~-8 ~2 ~-2 minecraft:stone_brick_stairs[facing=north, half=top]
fill ~-1 ~ ~-2 ~-8 ~ ~-1 minecraft:stone_brick_stairs[facing=north, half=bottom]
fill ~-1 ~2 ~2 ~-8 ~2 ~2 minecraft:stone_brick_stairs[facing=south, half=top]
fill ~-1 ~ ~2 ~-8 ~ ~2 minecraft:stone_brick_stairs[facing=south, half=bottom]

#Column
#fill ~-4 ~ ~ ~-4 ~2 ~ minecraft:chiseled_stone_bricks

setblock ~-8 ~-1 ~-1 minecraft:redstone_block
setblock ~-8 ~-1 ~1 minecraft:redstone_block
setblock ~-8 ~3 ~-1 minecraft:glowstone
setblock ~-8 ~3 ~1 minecraft:glowstone

#Rails
fill ~-1 ~ ~-1 ~-7 ~ ~-1 minecraft:rail
fill ~-3 ~ ~1 ~-7 ~ ~1 minecraft:rail
setblock ~-8 ~ ~-1 minecraft:powered_rail
setblock ~-8 ~ ~1 minecraft:powered_rail

#Junction
fill ~-1 ~ ~ ~-1 ~ ~ minecraft:rail
fill ~-2 ~ ~ ~-3 ~ ~ minecraft:rail
fill ~-1 ~ ~1 ~-2 ~ ~1 minecraft:stone_brick_slab

fill ~ ~ ~-1 ~ ~ ~-2 minecraft:stone_brick_stairs[facing=east, half=bottom]
fill ~ ~ ~1 ~ ~ ~2 minecraft:stone_brick_stairs[facing=east, half=bottom]
fill ~ ~2 ~-1 ~ ~2 ~-2 minecraft:stone_brick_stairs[facing=east, half=top]
fill ~ ~2 ~1 ~ ~2 ~2 minecraft:stone_brick_stairs[facing=east, half=top]

#Replace sidewalls
fill ~1 ~1 ~-3 ~-8 ~1 ~-3 minecraft:white_concrete replace minecraft:netherrack
fill ~1 ~1 ~3 ~-8 ~1 ~3 minecraft:white_concrete replace minecraft:netherrack
fill ~1 ~1 ~-3 ~-8 ~1 ~-3 minecraft:white_concrete replace minecraft:blackstone
fill ~1 ~1 ~3 ~-8 ~1 ~3 minecraft:white_concrete replace minecraft:blackstone
fill ~1 ~1 ~-3 ~-8 ~1 ~-3 minecraft:white_concrete replace minecraft:basalt
fill ~1 ~1 ~3 ~-8 ~1 ~3 minecraft:white_concrete replace minecraft:basalt
fill ~1 ~1 ~-3 ~-8 ~1 ~-3 minecraft:white_concrete replace minecraft:nether_gold_ore
fill ~1 ~1 ~3 ~-8 ~1 ~3 minecraft:white_concrete replace minecraft:nether_gold_ore
fill ~1 ~1 ~-3 ~-8 ~1 ~-3 minecraft:white_concrete replace minecraft:nether_quartz_ore
fill ~1 ~1 ~3 ~-8 ~1 ~3 minecraft:white_concrete replace minecraft:nether_quartz_ore
