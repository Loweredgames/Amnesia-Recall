#Copyright (C) Loweredgames (Lorenzo Giannini)
#Contacted:<https://github.com/Loweredgames>
#This Source Code Form is subject to the terms of the License.
#NOT OFFICIAL MINECRAFT PRODUCT. NOT APPROVED BY OR ASSOCIATED WITH MOJANG STUDIO.
#READING THE COPYRIGHT (C): <https://www.minecraft.net/en-us/terms>


##Scoreboard Items Setup
scoreboard objectives add AmnesiaRecall_laudano minecraft.dropped:minecraft.potion
scoreboard objectives add AmnesiaRecall_drop_oil minecraft.dropped:minecraft.ink_sac


##Laudano
execute at @a[scores={AmnesiaRecall_laudano=1}] run effect give @a minecraft:regeneration 11 0 true
execute at @a[scores={AmnesiaRecall_laudano=1}] run kill @e[type=item,nbt={Item:{id:"minecraft:potion",count:1}}]
execute at @a[scores={AmnesiaRecall_laudano=1..}] run scoreboard objectives remove AmnesiaRecall_laudano


##Oil
execute at @a[scores={AmnesiaRecall_drop_oil=1}] run kill @e[type=item,nbt={Item:{id:"minecraft:ink_sac",count:1}}]
execute at @a[scores={AmnesiaRecall_drop_oil=1}] run scoreboard players add @a AmnesiaRecall_oil 1000
execute at @a[scores={AmnesiaRecall_drop_oil=1..}] run scoreboard objectives remove AmnesiaRecall_drop_oil