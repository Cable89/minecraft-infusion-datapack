#This file was automatically generated from .\east_tunnel.mcfunction 
#Function for generating a single track tunnel
fill ~-1 ~ ~1 ~-8 ~2 ~-1 minecraft:air
fill ~-1 ~-1 ~1 ~-8 ~-1 ~-1 minecraft:stone_bricks
fill ~-1 ~2 ~ ~-7 ~2 ~ minecraft:stone_brick_slab[type=top]
fill ~-1 ~2 ~-1 ~-8 ~2 ~-1 minecraft:stone_brick_stairs[facing=north, half=top]
fill ~-1 ~ ~-1 ~-8 ~ ~-1 minecraft:stone_brick_stairs[facing=north, half=bottom]
fill ~-1 ~2 ~1 ~-8 ~2 ~1 minecraft:stone_brick_stairs[facing=south, half=top]
fill ~-1 ~ ~1 ~-8 ~ ~1 minecraft:stone_brick_stairs[facing=south, half=bottom]

setblock ~-8 ~-1 ~ minecraft:redstone_block
setblock ~-8 ~3 ~ minecraft:glowstone

fill ~-1 ~ ~ ~-7 ~ ~ minecraft:rail
setblock ~-8 ~ ~ minecraft:powered_rail
