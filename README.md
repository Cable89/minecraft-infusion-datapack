# Netherrail
Functions for generating a subwaysystem in the nether.

### zcentralstation_base
This function generates the base structure for a central station. This function is to be used on x and z coordinates divisible by 512. And your preferred y level. i.e. 112.
It fills from one block beneath the player, 12 blocks above the player, 12 blocks in each horizontal direction.

### \<direction\>_tunnel_entry
This function generates an entry to a single track tunnel. With the hopper that collects the minecarts one block below the player, to be used from an x or z coordinate divisible by 8 plus or minus 3 (depending on wich direction you want your tunnel to go in). Typically used from the tiles marked by redstone blocks in the station bases.

### \<direction\>_tunnel
This function generates a basic single track tunnel from one block east of the player and to 8 blocks east of the player. To be used from a x and z coordinate divisible by 8, usually while standing on the redstone block of the previous netherrail element.

### \<direction\>_tunnel_single_to_double
This function generates a transition from single track tunnel to double track tunnel to be used while standing on the redstone block of the previous tunnel. The segment fills from 1 to 8 blocks in front of the player. And 2 blocks to each side.

### \<direction\>_tunnel_double
This function generates a basic double track tunnel from one block in front of of the player and to 8 blocks in front of the player. To be used from a x and z coordinate divisible by 8, usually while standing on the redstone block of the previous double rail netherrail element.

### \<direction\>_tunnel_double_to_single
This function generates a transition from double track tunnel to single track tunnel to be used while standing on the redstone block of the previous double track tunnel element. The segment fills from 1 to 8 blocks in front of the player. And 1 block to the right and three blocks to the right.

| Function name                                  | x      | y      | z      | Dx     | Dy     | Dz     |
|------------------------------------------------|--------|--------|--------|--------|--------|--------|
| zcentralstation_base                           |  %512  | Y      | %512   |        |        |        |
| \<direction\>_tunnel_entry                     | %8(-+3)| Y      | %8(+-3)|   1    |  -1-2  |  1     |
| \<direction\>_tunnel                           |   %8   | Y      | %8     |        |        |        |
| \<direction\>_tunnel_single_to_double          |   %8   | Y      | %8     |        |        |        |
| \<direction\>_tunnel_double                    |   %8   | Y      | %8     |        |        |        |
| \<direction\>_tunnel_double_to_single          |   %8   | Y      | %8     |        |        |        |
|                                                |        |        |        |        |        |        |
|                                                |        |        |        |        |        |        |