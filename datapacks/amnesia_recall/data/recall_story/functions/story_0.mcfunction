#Copyright (C) Loweredgames (Lorenzo Giannini) 
#Contacted:<https://github.com/Loweredgames>
#This Source Code Form is subject to the terms of the License.
#NOT OFFICIAL MINECRAFT PRODUCT. NOT APPROVED BY OR ASSOCIATED WITH MOJANG STUDIO.
#READING THE COPYRIGHT (C): <https://www.minecraft.net/en-us/terms>


scoreboard players add @a story_0 1
#scoreboard objectives setdisplay sidebar story_0

execute at @a[scores={story_0=1}] run weather rain
execute at @a[scores={story_0=1}] run time set midnight
execute at @a[scores={story_0=1}] run setblock 943 118 72 minecraft:polished_diorite
execute at @a[scores={story_0=1}] run tp @a 943 120 71 0 -90
execute at @a[scores={story_0=1}] run playsound minecraft:entity.generic.explode ambient @a 943.56 121.60 71.59 10 1
execute at @a[scores={story_0=1}] run particle minecraft:explosion_emitter 943 121 71
execute at @a[scores={story_0=3}] run effect give @a minecraft:blindness 21 0 true
execute at @a[scores={story_0=3}] run effect give @a minecraft:jump_boost 21 250 true
execute at @a[scores={story_0=3}] run effect give @a minecraft:slowness 21 5 true
execute at @a[scores={story_0=3}] run effect give @a minecraft:invisibility 11 0 true
execute at @a[scores={story_0=20}] run playsound minecraft:entity.generic.explode ambient @a 943.56 121.60 71.59 10 1
execute at @a[scores={story_0=20}] run particle minecraft:explosion_emitter 943 121 71
execute at @a[scores={story_0=100}] run setblock 943 118 72 minecraft:redstone_wire[east=side,north=side,south=none,west=none]
execute at @a[scores={story_0=245}] run tp @a 943 121 71
execute at @a[scores={story_0=..300}] run scoreboard players set @a sanity 800
execute at @a[scores={story_0=301..}] run scoreboard objectives remove story_0