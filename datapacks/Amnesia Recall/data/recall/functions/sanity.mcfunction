#Copyright (C) Loweredgames (Lorenzo Giannini)
#Contacted:<https://github.com/Loweredgames>
#This Source Code Form is subject to the terms of the License.
#NOT OFFICIAL MINECRAFT PRODUCT. NOT APPROVED BY OR ASSOCIATED WITH MOJANG STUDIO.
#READING THE COPYRIGHT (C): <https://www.minecraft.net/en-us/terms>


##Setup Sanity
scoreboard objectives add AmnesiaRecall_sanity_sprain dummy
scoreboard objectives add AmnesiaRecall_sanity dummy
scoreboard objectives add AmnesiaRecall_sanity_up dummy
scoreboard objectives setdisplay list AmnesiaRecall_sanity


##Sanity Sprain
execute at @a if block ~ ~-2 ~ minecraft:dried_kelp_block run scoreboard players add @a AmnesiaRecall_sanity_sprain 1
execute at @a if block ~ ~-3 ~ minecraft:dried_kelp_block run scoreboard players add @a AmnesiaRecall_sanity_sprain 1
execute at @a[scores={AmnesiaRecall_sanity_sprain=1}] if block ~ ~-2 ~ minecraft:dried_kelp_block run effect give @a minecraft:speed 1 3 true
execute at @a[scores={AmnesiaRecall_sanity_sprain=1}] if block ~ ~-2 ~ minecraft:dried_kelp_block run playsound minecraft:block.note_block.basedrum ambient @a
execute at @a[scores={AmnesiaRecall_sanity_sprain=4}] if block ~ ~-2 ~ minecraft:dried_kelp_block run playsound minecraft:block.note_block.basedrum ambient @a
execute at @a[scores={AmnesiaRecall_sanity_sprain=1..22}] if block ~ ~-2 ~ minecraft:dried_kelp_block run effect give @a minecraft:slowness 1 4 true
execute at @a[scores={AmnesiaRecall_sanity_sprain=..-1}] run scoreboard players set @a AmnesiaRecall_sanity_sprain 0
execute at @a[scores={AmnesiaRecall_sanity_sprain=22..}] run scoreboard players set @a AmnesiaRecall_sanity_sprain 0
execute at @a[scores={AmnesiaRecall_sanity_sprain=1}] if block ~ ~-3 ~ minecraft:dried_kelp_block run effect give @a minecraft:speed 1 3 true
execute at @a[scores={AmnesiaRecall_sanity_sprain=1}] if block ~ ~-3 ~ minecraft:dried_kelp_block run playsound minecraft:block.note_block.basedrum ambient @a
execute at @a[scores={AmnesiaRecall_sanity_sprain=4}] if block ~ ~-3 ~ minecraft:dried_kelp_block run playsound minecraft:block.note_block.basedrum ambient @a
execute at @a[scores={AmnesiaRecall_sanity_sprain=1..22}] if block ~ ~-3 ~ minecraft:dried_kelp_block run effect give @a minecraft:slowness 1 4 true


##Sanity Levels
execute at @a if block ~ ~-2 ~ minecraft:dried_kelp_block run scoreboard players add @a AmnesiaRecall_sanity 1
execute at @a if block ~ ~-3 ~ minecraft:dried_kelp_block run scoreboard players add @a AmnesiaRecall_sanity 1
execute at @a[scores={AmnesiaRecall_sanity=0..1700}] run item replace entity @p armor.head with player_head[custom_name='{"bold":true,"text":"Jonny Bohm Schliemann\'s"}',enchantments={levels:{"minecraft:binding_curse":1},show_in_tooltip:false},hide_additional_tooltip={}] 1
execute at @a[scores={AmnesiaRecall_sanity=..-1}] run scoreboard players set @a AmnesiaRecall_sanity 0
execute at @a[scores={AmnesiaRecall_sanity=100..200}] run playsound minecraft:block.conduit.ambient.short ambient @a ~ ~ ~ 1 2
execute at @a[scores={AmnesiaRecall_sanity=200..800}] run playsound minecraft:ambient.crimson_forest.loop ambient @a ~ ~ ~ 1 2
execute at @a[scores={AmnesiaRecall_sanity=800..}] run playsound minecraft:ambient.crimson_forest.additions ambient @a ~ ~ ~ 1 2
execute at @a[scores={AmnesiaRecall_sanity=1000..}] run effect give @a minecraft:blindness 6 0 true 
execute at @a[scores={AmnesiaRecall_sanity=1500..}] run playsound minecraft:ambient.crimson_forest.mood ambient @a ~ ~ ~ 1 2
execute at @a[scores={AmnesiaRecall_sanity=1700..}] run item replace entity @p armor.head with carved_pumpkin[custom_name='{"bold":true,"text":"Jonny Bohm Schliemann\'s"}',enchantments={levels:{"minecraft:binding_curse":1},show_in_tooltip:false},hide_additional_tooltip={}] 1
execute at @a[scores={AmnesiaRecall_sanity=1700..}] run playsound ambient.nether_wastes.mood ambient @a ~ ~ ~ 1 2
execute at @a[scores={AmnesiaRecall_sanity=1800..2001}] run playsound minecraft:ambient.cave ambient @a ~ ~ ~ 1 2
execute at @a[scores={AmnesiaRecall_sanity=2000..}] run playsound minecraft:ambient.cave ambient @a ~ ~ ~ 1 2


##Sanity Add
execute at @a[scores={AmnesiaRecall_sanity=2001..}] run scoreboard players set @a AmnesiaRecall_sanity 2000
execute at @a[scores={AmnesiaRecall_sanity=1..}] run scoreboard players add @a AmnesiaRecall_sanity_up 1


##Sanity Add Up
execute at @a[scores={AmnesiaRecall_sanity_up=500..}] run scoreboard players remove @a AmnesiaRecall_sanity 100
execute at @a[scores={AmnesiaRecall_sanity_up=500..}] run scoreboard players reset @a AmnesiaRecall_sanity_up