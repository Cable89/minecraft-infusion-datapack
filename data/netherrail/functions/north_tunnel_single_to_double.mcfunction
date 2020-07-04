#This file was automatically generated from .\east_tunnel_single_to_double.mcfunction 
fill ~-2 ~ ~-1 ~2 ~2 ~-8 minecraft:air
fill ~-2 ~1 ~ ~2 ~1 ~-8 minecraft:air

#Floor
fill ~-2 ~-1 ~-1 ~2 ~-1 ~-8 minecraft:stone_bricks
fill ~-1 ~-1 ~ ~-2 ~-1 ~ minecraft:stone_bricks
fill ~1 ~-1 ~ ~2 ~-1 ~ minecraft:stone_bricks

#Center floor
fill ~ ~ ~-4 ~ ~ ~-8 minecraft:stone_brick_slab

#Roof
fill ~1 ~2 ~-1 ~1 ~2 ~-7 minecraft:stone_brick_slab[type=top]
fill ~-1 ~2 ~-1 ~-1 ~2 ~-7 minecraft:stone_brick_slab[type=top]
fill ~ ~2 ~-1 ~ ~2 ~-8 minecraft:stone_brick_slab[type=top]

#Corners
fill ~2 ~2 ~-1 ~2 ~2 ~-8 minecraft:stone_brick_stairs[facing=west, half=top]
fill ~2 ~ ~-1 ~1 ~ ~-8 minecraft:stone_brick_stairs[facing=west, half=bottom]
fill ~-2 ~2 ~-1 ~-2 ~2 ~-8 minecraft:stone_brick_stairs[facing=east, half=top]
fill ~-2 ~ ~-1 ~-2 ~ ~-8 minecraft:stone_brick_stairs[facing=east, half=bottom]

#Column
#fill ~ ~ ~-4 ~ ~2 ~-4 minecraft:chiseled_stone_bricks

setblock ~1 ~-1 ~-8 minecraft:redstone_block
setblock ~-1 ~-1 ~-8 minecraft:redstone_block
setblock ~1 ~3 ~-8 minecraft:glowstone
setblock ~-1 ~3 ~-8 minecraft:glowstone

#Rails
fill ~1 ~ ~-1 ~1 ~ ~-7 minecraft:rail
fill ~-1 ~ ~-3 ~-1 ~ ~-7 minecraft:rail
setblock ~1 ~ ~-8 minecraft:powered_rail
setblock ~-1 ~ ~-8 minecraft:powered_rail

#Junction
fill ~ ~ ~-1 ~ ~ ~-1 minecraft:rail
fill ~ ~ ~-2 ~ ~ ~-3 minecraft:rail
fill ~-1 ~ ~-1 ~-1 ~ ~-2 minecraft:stone_brick_slab

fill ~1 ~ ~ ~2 ~ ~ minecraft:stone_brick_stairs[facing=north, half=bottom]
fill ~-1 ~ ~ ~-2 ~ ~ minecraft:stone_brick_stairs[facing=north, half=bottom]
fill ~1 ~2 ~ ~2 ~2 ~ minecraft:stone_brick_stairs[facing=north, half=top]
fill ~-1 ~2 ~ ~-2 ~2 ~ minecraft:stone_brick_stairs[facing=north, half=top]
