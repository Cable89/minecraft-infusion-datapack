fill ~1 ~ ~-1 ~5 ~2 ~1 minecraft:air
fill ~1 ~-1 ~ ~5 ~-1 ~ minecraft:stone_bricks
fill ~2 ~2 ~ ~4 ~2 ~ minecraft:stone_brick_slab[type=top]
fill ~2 ~2 ~1 ~5 ~2 ~1 minecraft:stone_brick_stairs[facing=south, half=top]
fill ~2 ~ ~1 ~5 ~ ~1 minecraft:stone_brick_stairs[facing=south, half=bottom]
fill ~2 ~2 ~-1 ~5 ~2 ~-1 minecraft:stone_brick_stairs[facing=north, half=top]
fill ~2 ~ ~-1 ~5 ~ ~-1 minecraft:stone_brick_stairs[facing=north, half=bottom]

setblock ~1 ~2 ~2 minecraft:stone_brick_stairs[facing=east, half=top]
setblock ~1 ~2 ~-2 minecraft:stone_brick_stairs[facing=east, half=top]
setblock ~1 ~ ~2 minecraft:stone_brick_stairs[facing=east, half=bottom]
setblock ~1 ~ ~-2 minecraft:stone_brick_stairs[facing=east, half=bottom]

setblock ~1 ~2 ~1 minecraft:stone_brick_stairs[facing=east, half=top, shape=outer_right]
setblock ~1 ~2 ~-1 minecraft:stone_brick_stairs[facing=east, half=top, shape=outer_left]
setblock ~1 ~ ~1 minecraft:stone_brick_stairs[facing=east, half=bottom, shape=outer_right]
setblock ~1 ~ ~-1 minecraft:stone_brick_stairs[facing=east, half=bottom, shape=outer_left]

setblock ~1 ~3 ~-2 minecraft:stone_bricks
setblock ~1 ~3 ~-1 minecraft:stone_bricks
setblock ~2 ~3 ~ minecraft:stone_bricks
setblock ~1 ~3 ~1 minecraft:stone_bricks
setblock ~1 ~3 ~2 minecraft:stone_bricks

setblock ~5 ~-1 ~ minecraft:redstone_block
setblock ~5 ~3 ~ minecraft:glowstone

fill ~4 ~ ~ ~ ~ ~ minecraft:rail[shape=east_west]
setblock ~5 ~ ~ minecraft:powered_rail

setblock ~1 ~-1 ~ minecraft:dispenser[facing=up]{Items:[{Slot:0,id:minecart,Count:64},{Slot:1,id:minecart,Count:64},{Slot:2,id:minecart,Count:64},{Slot:3,id:minecart,Count:64},{Slot:4,id:minecart,Count:64},{Slot:5,id:minecart,Count:64},{Slot:6,id:minecart,Count:64},{Slot:7,id:minecart,Count:64},{Slot:8,id:minecart,Count:64},{Slot:9,id:minecart,Count:64}]}
setblock ~ ~-1 ~ minecraft:hopper[facing=west]
setblock ~1 ~-2 ~-1 minecraft:stone_bricks
setblock ~1 ~-2 ~1 minecraft:stone_bricks
setblock ~1 ~-1 ~-1 minecraft:redstone_wire
setblock ~1 ~-1 ~1 minecraft:redstone_wire
setblock ~ ~-1 ~-1 minecraft:stone_bricks
setblock ~ ~-1 ~1 minecraft:stone_bricks
setblock ~ ~ ~-1 minecraft:stone_button[face=floor]
setblock ~ ~ ~1 minecraft:stone_button[face=floor]
setblock ~-1 ~-1 ~-1 minecraft:stone_bricks
setblock ~-1 ~-1 ~1 minecraft:stone_bricks
setblock ~-2 ~-1 ~ minecraft:stone_bricks

setblock ~-1 ~-1 ~ minecraft:sand
setblock ~-1 ~ ~ minecraft:cactus
setblock ~-1 ~1 ~ minecraft:stone_brick_slab

setblock ~ ~ ~-2 minecraft:stone_brick_slab
setblock ~ ~ ~2 minecraft:stone_brick_slab
setblock ~-1 ~ ~-2 minecraft:stone_brick_slab
setblock ~-1 ~ ~2 minecraft:stone_brick_slab
