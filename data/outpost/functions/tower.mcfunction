# Main body
fill ~-4 ~-1 ~-4 ~4 ~15 ~4 minecraft:stone_bricks hollow
fill ~-4 ~-1 ~-4 ~4 ~-17 ~4 minecraft:stone_bricks hollow
fill ~-2 ~-1 ~-2 ~2 ~-17 ~2 minecraft:stone_bricks hollow

# Brystvern
fill ~-5 ~15 ~-5 ~-5 ~17 ~5 minecraft:stone_bricks outline
fill ~-5 ~15 ~-5 ~5 ~17 ~-5 minecraft:stone_bricks outline
fill ~5 ~15 ~5 ~-5 ~17 ~5 minecraft:stone_bricks outline
fill ~5 ~15 ~5 ~5 ~17 ~-5 minecraft:stone_bricks outline
fill ~5 ~17 ~4 ~-5 ~17 ~4 minecraft:air
fill ~5 ~17 ~2 ~-5 ~17 ~2 minecraft:air
fill ~5 ~17 ~ ~-5 ~17 ~ minecraft:air
fill ~5 ~17 ~-2 ~-5 ~17 ~-2 minecraft:air
fill ~5 ~17 ~-4 ~-5 ~17 ~-4 minecraft:air
fill ~4 ~17 ~5 ~4 ~17 ~-5 minecraft:air
fill ~2 ~17 ~5 ~2 ~17 ~-5 minecraft:air
fill ~ ~17 ~5 ~ ~17 ~-5 minecraft:air
fill ~-2 ~17 ~5 ~-2 ~17 ~-5 minecraft:air
fill ~-4 ~17 ~5 ~-4 ~17 ~-5 minecraft:air
setblock ~4 ~16 ~4 minecraft:torch
setblock ~4 ~16 ~-4 minecraft:torch
setblock ~-4 ~16 ~4 minecraft:torch
setblock ~-4 ~16 ~-4 minecraft:torch

# Door
fill ~ ~ ~4 ~ ~1 ~4 minecraft:air
setblock ~ ~-1 ~ minecraft:stone_bricks
setblock ~ ~ ~4 minecraft:oak_door
setblock ~ ~1 ~4 minecraft:oak_door

# Stairs
fill ~-2 ~-1 ~3 ~-3 ~-2 ~3 minecraft:air
fill ~-3 ~-1 ~0 ~-3 ~-1 ~3 minecraft:air
setblock ~-1 ~-1 ~3 minecraft:stone_brick_stairs
setblock ~-2 ~-2 ~3 minecraft:stone_brick_stairs
setblock ~-3 ~-3 ~3 minecraft:stone_bricks

setblock ~-3 ~-3 ~2 minecraft:stone_brick_stairs
setblock ~-3 ~-4 ~1 minecraft:stone_brick_stairs
setblock ~-3 ~-5 ~ minecraft:stone_bricks
setblock ~-3 ~-5 ~-1 minecraft:stone_brick_stairs
setblock ~-3 ~-6 ~-2 minecraft:stone_brick_stairs
setblock ~-3 ~-7 ~-3 minecraft:stone_bricks
setblock ~-3 ~-2 ~-3 minecraft:torch

setblock ~-2 ~-7 ~-3 minecraft:stone_brick_stairs
setblock ~-1 ~-8 ~-3 minecraft:stone_brick_stairs
setblock ~ ~-9 ~-3 minecraft:stone_bricks
setblock ~1 ~-9 ~-3 minecraft:stone_brick_stairs
setblock ~2 ~-10 ~-3 minecraft:stone_brick_stairs
setblock ~3 ~-11 ~-3 minecraft:stone_bricks
setblock ~3 ~-6 ~-3 minecraft:torch

setblock ~3 ~-11 ~-2 minecraft:stone_brick_stairs
setblock ~3 ~-12 ~-1 minecraft:stone_brick_stairs
setblock ~3 ~-13 ~ minecraft:stone_bricks
setblock ~3 ~-13 ~1 minecraft:stone_brick_stairs
setblock ~3 ~-14 ~2 minecraft:stone_brick_stairs
setblock ~3 ~-15 ~3 minecraft:stone_bricks
setblock ~3 ~-10 ~3 minecraft:torch

setblock ~2 ~-15 ~3 minecraft:stone_brick_stairs
setblock ~1 ~-16 ~3 minecraft:stone_brick_stairs
setblock ~ ~-17 ~3 minecraft:stone_bricks
setblock ~-3 ~-14 ~3 minecraft:torch

# Rooms
fill ~2 ~-5 ~2 ~-2 ~-5 ~-2 minecraft:stone_bricks
fill ~-2 ~-3 ~ ~-2 ~-4 ~ minecraft:air
setblock ~ ~-5 ~ minecraft:stone_bricks
setblock ~ ~-2 ~1 minecraft:torch
setblock ~ ~-2 ~-1 minecraft:torch
setblock ~1 ~-2 ~ minecraft:torch
setblock ~-1 ~-2 ~ minecraft:torch

fill ~2 ~-9 ~2 ~-2 ~-9 ~-2 minecraft:stone_bricks
fill ~ ~-7 ~-2 ~ ~-8 ~-2 minecraft:air
setblock ~ ~-9 ~ minecraft:stone_bricks
setblock ~ ~-6 ~1 minecraft:torch
setblock ~ ~-6 ~-1 minecraft:torch
setblock ~1 ~-6 ~ minecraft:torch
setblock ~-1 ~-6 ~ minecraft:torch

fill ~2 ~-13 ~2 ~-2 ~-13 ~-2 minecraft:stone_bricks
fill ~2 ~-11 ~ ~2 ~-12 ~ minecraft:air
setblock ~ ~-13 ~ minecraft:stone_bricks
setblock ~ ~-10 ~1 minecraft:torch
setblock ~ ~-10 ~-1 minecraft:torch
setblock ~1 ~-10 ~ minecraft:torch
setblock ~-1 ~-10 ~ minecraft:torch

fill ~ ~-15 ~2 ~ ~-16 ~2 minecraft:air
setblock ~ ~-17 ~ minecraft:stone_bricks
setblock ~ ~-14 ~1 minecraft:torch
setblock ~ ~-14 ~-1 minecraft:torch
setblock ~1 ~-14 ~ minecraft:torch
setblock ~-1 ~-14 ~ minecraft:torch


# Interior
fill ~3 ~ ~ ~3 ~15 ~ minecraft:ladder
fill ~3 ~ ~-1 ~3 ~14 ~-1 minecraft:oak_fence
fill ~3 ~ ~1 ~3 ~14 ~1 minecraft:oak_fence

fill ~-2 ~ ~2 ~-2 ~ ~-1 minecraft:oak_fence
fill ~-2 ~ ~-1 ~-3 ~ ~-1 minecraft:oak_fence

setblock ~-3 ~ ~-3 minecraft:ender_chest
setblock ~ ~ ~-3 minecraft:crafting_table
setblock ~-1 ~ ~-3 minecraft:chest
setblock ~-2 ~ ~-3 minecraft:chest
setblock ~1 ~ ~-3 minecraft:furnace
setblock ~2 ~ ~-3 minecraft:furnace

setblock ~-3 ~2 ~ minecraft:torch
setblock ~3 ~2 ~-2 minecraft:torch
setblock ~3 ~2 ~2 minecraft:torch
setblock ~ ~2 ~-3 minecraft:torch
setblock ~-1 ~2 ~3 minecraft:torch
setblock ~1 ~2 ~3 minecraft:torch
tellraw @p ["",{"text":"Tower erected","color":"gold","bold":true}]
