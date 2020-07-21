#West
tp @s ~-6 ~ ~-5
execute at @s run function netherrail:west_tunnel_entry
tp @s ~-6 ~ ~
execute at @s run function netherrail:west_tunnel_entry
tp @s ~-6 ~ ~5
execute at @s run function netherrail:west_tunnel_entry

#East
tp @s ~6 ~ ~-5
execute at @s run function netherrail:east_tunnel_entry
tp @s ~6 ~ ~
execute at @s run function netherrail:east_tunnel_entry
tp @s ~6 ~ ~5
execute at @s run function netherrail:east_tunnel_entry

#North
tp @s ~-5 ~ ~-6
execute at @s run function netherrail:north_tunnel_entry
tp @s ~ ~ ~-6
execute at @s run function netherrail:north_tunnel_entry
tp @s ~5 ~ ~-6
execute at @s run function netherrail:north_tunnel_entry

#South
tp @s ~-5 ~ ~6
execute at @s run function netherrail:south_tunnel_entry
tp @s ~ ~ ~6
execute at @s run function netherrail:south_tunnel_entry
tp @s ~5 ~ ~6
execute at @s run function netherrail:south_tunnel_entry

#Back to origin to not confuse player
tp @s ~ ~ ~

#Cleanup in corners
setblock ~7 ~ ~5 minecraft:air
setblock ~7 ~ ~-5 minecraft:air
setblock ~-7 ~ ~5 minecraft:air
setblock ~-7 ~ ~-5 minecraft:air
setblock ~5 ~ ~7 minecraft:air
setblock ~5 ~ ~-7 minecraft:air
setblock ~-5 ~ ~7 minecraft:air
setblock ~-5 ~ ~-7 minecraft:air

setblock ~7 ~ ~5 minecraft:rail
setblock ~7 ~ ~-5 minecraft:rail
setblock ~-7 ~ ~5 minecraft:rail
setblock ~-7 ~ ~-5 minecraft:rail
setblock ~5 ~ ~7 minecraft:rail
setblock ~5 ~ ~-7 minecraft:rail
setblock ~-5 ~ ~7 minecraft:rail
setblock ~-5 ~ ~-7 minecraft:rail

setblock ~6 ~ ~5 minecraft:rail
setblock ~6 ~ ~-5 minecraft:rail
setblock ~-6 ~ ~5 minecraft:rail
setblock ~-6 ~ ~-5 minecraft:rail
setblock ~5 ~ ~6 minecraft:rail
setblock ~5 ~ ~-6 minecraft:rail
setblock ~-5 ~ ~6 minecraft:rail
setblock ~-5 ~ ~-6 minecraft:rail

setblock ~7 ~ ~6 minecraft:stone_brick_stairs[facing=east]
setblock ~7 ~ ~-6 minecraft:stone_brick_stairs[facing=east]
setblock ~-7 ~ ~6 minecraft:stone_brick_stairs[facing=west]
setblock ~-7 ~ ~-6 minecraft:stone_brick_stairs[facing=west]
setblock ~6 ~ ~7 minecraft:stone_brick_stairs[facing=south]
setblock ~6 ~ ~-7 minecraft:stone_brick_stairs[facing=north]
setblock ~-6 ~ ~-7 minecraft:stone_brick_stairs[facing=north]
setblock ~-6 ~ ~7 minecraft:stone_brick_stairs[facing=south]

