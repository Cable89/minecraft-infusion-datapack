#This file was automatically generated from .\east_tunnel_double_to_single.mcfunction 
fill ~-1 ~ ~3 ~-8 ~2 ~-1 minecraft:air

#Floor
fill ~-1 ~-1 ~3 ~-8 ~-1 ~-1 minecraft:stone_bricks

#Center floor
fill ~-1 ~ ~1 ~-4 ~ ~1 minecraft:stone_brick_slab

fill ~-6 ~ ~ ~-7 ~ ~ minecraft:stone_brick_slab

#Roof
fill ~-1 ~2 ~ ~-7 ~2 ~ minecraft:stone_brick_slab[type=top]
fill ~-1 ~2 ~2 ~-7 ~2 ~2 minecraft:stone_brick_slab[type=top]
fill ~-1 ~2 ~1 ~-7 ~2 ~1 minecraft:stone_brick_slab[type=top]

#Corners
fill ~-1 ~2 ~-1 ~-8 ~2 ~-1 minecraft:stone_brick_stairs[facing=north, half=top]
fill ~-1 ~ ~-1 ~-8 ~ ~-1 minecraft:stone_brick_stairs[facing=north, half=bottom]
fill ~-1 ~2 ~3 ~-8 ~2 ~3 minecraft:stone_brick_stairs[facing=south, half=top]
fill ~-1 ~ ~3 ~-8 ~ ~3 minecraft:stone_brick_stairs[facing=south, half=bottom]


fill ~-8 ~ ~3 ~-8 ~ ~2 minecraft:stone_brick_stairs[facing=west, half=bottom]
fill ~-8 ~ ~ ~-8 ~ ~-1 minecraft:stone_brick_stairs[facing=west, half=bottom]
fill ~-8 ~2 ~3 ~-8 ~2 ~2 minecraft:stone_brick_stairs[facing=west, half=top]
fill ~-8 ~2 ~ ~-8 ~2 ~-1 minecraft:stone_brick_stairs[facing=west, half=top]

#Column
#fill ~-4 ~ ~1 ~-4 ~2 ~1 minecraft:chiseled_stone_bricks

setblock ~-8 ~-1 ~1 minecraft:redstone_block
setblock ~-8 ~3 ~1 minecraft:glowstone

fill ~-1 ~ ~ ~-5 ~ ~ minecraft:rail
fill ~-1 ~ ~2 ~-7 ~ ~2 minecraft:rail
setblock ~-8 ~ ~1 minecraft:powered_rail

setblock ~-7 ~ ~1 minecraft:rail
fill ~-5 ~ ~1 ~-6 ~ ~1 minecraft:rail
