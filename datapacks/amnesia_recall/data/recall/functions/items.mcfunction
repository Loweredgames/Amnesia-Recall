#Copyright (C) Loweredgames (Lorenzo Giannini) 
#Contacted:<https://github.com/Loweredgames>
#This Source Code Form is subject to the terms of the License.
#NOT OFFICIAL MINECRAFT PRODUCT. NOT APPROVED BY OR ASSOCIATED WITH MOJANG STUDIO.
#READING THE COPYRIGHT (C): <https://www.minecraft.net/en-us/terms>


scoreboard objectives add laudano minecraft.dropped:minecraft.potion
scoreboard objectives add drop_oil minecraft.dropped:minecraft.ink_sac

execute at @a[scores={laudano=1}] run effect give @a minecraft:regeneration 11 0 true
execute at @a[scores={laudano=1}] run kill @e[type=item,nbt={Item:{id:"minecraft:potion",Count:1b}}]
execute at @a[scores={laudano=1..}] run scoreboard objectives remove laudano


execute at @a[scores={drop_oil=1}] run kill @e[type=item,nbt={Item:{id:"minecraft:ink_sac",Count:1b}}]
execute at @a[scores={drop_oil=1}] run scoreboard players add @a oil 1000
execute at @a[scores={drop_oil=1..}] run scoreboard objectives remove drop_oil
