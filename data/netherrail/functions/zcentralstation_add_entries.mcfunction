#West
tp @s ~-11 ~ ~-10
execute at @s run function netherrail:west_tunnel_entry
tp @s ~-11 ~ ~-5
execute at @s run function netherrail:west_tunnel_entry
tp @s ~-11 ~ ~
execute at @s run function netherrail:west_tunnel_entry
tp @s ~-11 ~ ~5
execute at @s run function netherrail:west_tunnel_entry
tp @s ~-11 ~ ~10
execute at @s run function netherrail:west_tunnel_entry

#East
tp @s ~11 ~ ~-10
execute at @s run function netherrail:east_tunnel_entry
tp @s ~11 ~ ~-5
execute at @s run function netherrail:east_tunnel_entry
tp @s ~11 ~ ~
execute at @s run function netherrail:east_tunnel_entry
tp @s ~11 ~ ~5
execute at @s run function netherrail:east_tunnel_entry
tp @s ~11 ~ ~10
execute at @s run function netherrail:east_tunnel_entry

#North
tp @s ~-10 ~ ~-11
execute at @s run function netherrail:north_tunnel_entry
tp @s ~-5 ~ ~-11
execute at @s run function netherrail:north_tunnel_entry
tp @s ~ ~ ~-11
execute at @s run function netherrail:north_tunnel_entry
tp @s ~5 ~ ~-11
execute at @s run function netherrail:north_tunnel_entry
tp @s ~10 ~ ~-11
execute at @s run function netherrail:north_tunnel_entry

#South
tp @s ~-10 ~ ~11
execute at @s run function netherrail:south_tunnel_entry
tp @s ~-5 ~ ~11
execute at @s run function netherrail:south_tunnel_entry
tp @s ~ ~ ~11
execute at @s run function netherrail:south_tunnel_entry
tp @s ~5 ~ ~11
execute at @s run function netherrail:south_tunnel_entry
tp @s ~10 ~ ~11
execute at @s run function netherrail:south_tunnel_entry

#Cleanup in corners
setblock ~12 ~ ~10 minecraft:air
setblock ~12 ~ ~-10 minecraft:air
setblock ~-12 ~ ~10 minecraft:air
setblock ~-12 ~ ~-10 minecraft:air
setblock ~10 ~ ~12 minecraft:air
setblock ~10 ~ ~-12 minecraft:air
setblock ~-10 ~ ~12 minecraft:air
setblock ~-10 ~ ~-12 minecraft:air

setblock ~12 ~ ~10 minecraft:rail
setblock ~12 ~ ~-10 minecraft:rail
setblock ~-12 ~ ~10 minecraft:rail
setblock ~-12 ~ ~-10 minecraft:rail
setblock ~10 ~ ~12 minecraft:rail
setblock ~10 ~ ~-12 minecraft:rail
setblock ~-10 ~ ~12 minecraft:rail
setblock ~-10 ~ ~-12 minecraft:rail

setblock ~11 ~ ~10 minecraft:rail
setblock ~11 ~ ~-10 minecraft:rail
setblock ~-11 ~ ~10 minecraft:rail
setblock ~-11 ~ ~-10 minecraft:rail
setblock ~10 ~ ~11 minecraft:rail
setblock ~10 ~ ~-11 minecraft:rail
setblock ~-10 ~ ~11 minecraft:rail
setblock ~-10 ~ ~-11 minecraft:rail

setblock ~12 ~ ~11 minecraft:stone_brick_stairs[facing=east]
setblock ~12 ~ ~-11 minecraft:stone_brick_stairs[facing=east]
setblock ~-12 ~ ~11 minecraft:stone_brick_stairs[facing=west]
setblock ~-12 ~ ~-11 minecraft:stone_brick_stairs[facing=west]
setblock ~11 ~ ~12 minecraft:stone_brick_stairs[facing=south]
setblock ~11 ~ ~-12 minecraft:stone_brick_stairs[facing=north]
setblock ~-11 ~ ~12 minecraft:stone_brick_stairs[facing=south]
setblock ~-11 ~ ~-12 minecraft:stone_brick_stairs[facing=north]

