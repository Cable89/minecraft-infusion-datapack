#This file was automatically generated from .\east_tunnel_double.mcfunction 
fill ~3 ~ ~1 ~-1 ~2 ~8 minecraft:air

#Floor
fill ~3 ~-1 ~1 ~-1 ~-1 ~8 minecraft:stone_bricks

#Center floor
fill ~1 ~ ~1 ~1 ~ ~8 minecraft:stone_brick_slab

#Roof
fill ~ ~2 ~1 ~ ~2 ~7 minecraft:stone_brick_slab[type=top]
fill ~2 ~2 ~1 ~2 ~2 ~7 minecraft:stone_brick_slab[type=top]
fill ~1 ~2 ~1 ~1 ~2 ~8 minecraft:stone_brick_slab[type=top]

#Corners
fill ~-1 ~2 ~1 ~-1 ~2 ~8 minecraft:stone_brick_stairs[facing=west, half=top]
fill ~-1 ~ ~1 ~ ~ ~8 minecraft:stone_brick_stairs[facing=west, half=bottom]
fill ~3 ~2 ~1 ~3 ~2 ~8 minecraft:stone_brick_stairs[facing=east, half=top]
fill ~3 ~ ~1 ~3 ~ ~8 minecraft:stone_brick_stairs[facing=east, half=bottom]

#Column
fill ~1 ~ ~4 ~1 ~2 ~4 minecraft:chiseled_stone_bricks

setblock ~ ~-1 ~8 minecraft:redstone_block
setblock ~2 ~-1 ~8 minecraft:redstone_block
setblock ~ ~3 ~8 minecraft:glowstone
setblock ~2 ~3 ~8 minecraft:glowstone

fill ~ ~ ~1 ~ ~ ~7 minecraft:rail
fill ~2 ~ ~1 ~2 ~ ~7 minecraft:rail
setblock ~ ~ ~8 minecraft:powered_rail
setblock ~2 ~ ~8 minecraft:powered_rail
