# Glass
fill ~-4 ~ ~-1 ~-4 ~3 ~-16 glass
fill ~4 ~ ~-1 ~4 ~3 ~-16 glass
fill ~-3 ~4 ~-1 ~-3 ~4 ~-16 glass
fill ~3 ~4 ~-1 ~3 ~4 ~-16 glass
fill ~-2 ~5 ~-1 ~-2 ~5 ~-16 glass
fill ~2 ~5 ~-1 ~2 ~5 ~-16 glass
fill ~-1 ~6 ~-1 ~1 ~6 ~-16 glass

fill ~-1 ~6 ~-17 ~1 ~6 ~-17 glass

# Borders and floor
fill ~-4 ~-1 ~-1 ~-4 ~-1 ~-16 cobblestone
fill ~4 ~-1 ~-1 ~4 ~-1 ~-16 cobblestone
fill ~-3 ~-1 ~-1 ~3 ~-1 ~-15 stone_bricks
fill ~-3 ~-2 ~-1 ~3 ~-2 ~-16 gravel

# Marking for next module
fill ~-3 ~-1 ~-17 ~3 ~-1 ~-17 air
setblock ~ ~-1 ~-16 stone_bricks

# Fill with air
fill ~-3 ~ ~-1 ~3 ~3 ~-16 air
fill ~-2 ~4 ~-1 ~2 ~4 ~-16 air
fill ~-1 ~5 ~-1 ~1 ~5 ~-16 air

fill ~ ~ ~-17 ~ ~5 ~-17 air

# Torches along edge
fill ~-3 ~ ~-1 ~-3 ~ ~-15 torch
fill ~3 ~ ~-1 ~3 ~ ~-15 torch

# Chandeliers
fill ~-1 ~4 ~-8 ~1 ~4 ~-8 oak_fence
setblock ~ ~5 ~-8 oak_fence
setblock ~-1 ~5 ~-8 torch
setblock ~1 ~5 ~-8 torch

fill ~-1 ~4 ~-16 ~1 ~4 ~-16 oak_fence
setblock ~ ~5 ~-16 oak_fence
setblock ~-1 ~5 ~-16 torch
setblock ~1 ~5 ~-16 torch
