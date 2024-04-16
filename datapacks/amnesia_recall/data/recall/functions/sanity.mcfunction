#Copyright (C) Loweredgames (Lorenzo Giannini) 
#Contacted:<https://github.com/Loweredgames>
#This Source Code Form is subject to the terms of the License.
#NOT OFFICIAL MINECRAFT PRODUCT. NOT APPROVED BY OR ASSOCIATED WITH MOJANG STUDIO.
#READING THE COPYRIGHT (C): <https://www.minecraft.net/en-us/terms>


scoreboard objectives add sanity_sprain dummy
scoreboard objectives add sanity dummy
scoreboard objectives add sanity_up dummy
scoreboard objectives setdisplay list sanity


execute at @a if block ~ ~-2 ~ minecraft:dried_kelp_block run scoreboard players add @a sanity_sprain 1
execute at @a if block ~ ~-3 ~ minecraft:dried_kelp_block run scoreboard players add @a sanity_sprain 1
execute at @a[scores={sanity_sprain=1}] if block ~ ~-2 ~ minecraft:dried_kelp_block run effect give @a minecraft:speed 1 3 true
execute at @a[scores={sanity_sprain=1}] if block ~ ~-2 ~ minecraft:dried_kelp_block run playsound minecraft:block.note_block.basedrum ambient @a
execute at @a[scores={sanity_sprain=4}] if block ~ ~-2 ~ minecraft:dried_kelp_block run playsound minecraft:block.note_block.basedrum ambient @a
execute at @a[scores={sanity_sprain=1..22}] if block ~ ~-2 ~ minecraft:dried_kelp_block run effect give @a minecraft:slowness 1 4 true
execute at @a[scores={sanity_sprain=..-1}] run scoreboard players set @a sanity_sprain 0
execute at @a[scores={sanity_sprain=22..}] run scoreboard players set @a sanity_sprain 0
execute at @a[scores={sanity_sprain=1}] if block ~ ~-3 ~ minecraft:dried_kelp_block run effect give @a minecraft:speed 1 3 true
execute at @a[scores={sanity_sprain=1}] if block ~ ~-3 ~ minecraft:dried_kelp_block run playsound minecraft:block.note_block.basedrum ambient @a
execute at @a[scores={sanity_sprain=4}] if block ~ ~-3 ~ minecraft:dried_kelp_block run playsound minecraft:block.note_block.basedrum ambient @a
execute at @a[scores={sanity_sprain=1..22}] if block ~ ~-3 ~ minecraft:dried_kelp_block run effect give @a minecraft:slowness 1 4 true


execute at @a if block ~ ~-2 ~ minecraft:dried_kelp_block run scoreboard players add @a sanity 1
execute at @a if block ~ ~-3 ~ minecraft:dried_kelp_block run scoreboard players add @a sanity 1
execute at @a[scores={sanity=0..}] run item replace entity @p armor.head with minecraft:player_head{display: {Name: '{"text":"Jonny Bohm Schliemann\'s","bold":true}'}, HideFlags: 37, Enchantments: [{id: "minecraft:binding_curse", lvl: 1s}]} 1
execute at @a[scores={sanity=..-1}] run scoreboard players set @a sanity 0
execute at @a[scores={sanity=100..200}] run playsound minecraft:block.conduit.ambient.short ambient @a ~ ~ ~ 1 2
execute at @a[scores={sanity=200..800}] run playsound minecraft:ambient.crimson_forest.loop ambient @a ~ ~ ~ 1 2
execute at @a[scores={sanity=800..}] run playsound minecraft:ambient.crimson_forest.additions ambient @a ~ ~ ~ 1 2
execute at @a[scores={sanity=1000..}] run effect give @a minecraft:blindness 6 0 true 
execute at @a[scores={sanity=1500..}] run playsound minecraft:ambient.crimson_forest.mood ambient @a ~ ~ ~ 1 2
execute at @a[scores={sanity=1700..}] run item replace entity @a armor.head with carved_pumpkin{display: {Name: '{"text":"sanity","color":"dark_red","bold":true,"italic":true,"obfuscated":true}'}, HideFlags: 39, Enchantments: [{id: "minecraft:binding_curse", lvl: 1s}]} 1
execute at @a[scores={sanity=1700..}] run playsound ambient.nether_wastes.mood ambient @a ~ ~ ~ 1 2
execute at @a[scores={sanity=1800..2001}] run playsound minecraft:ambient.cave ambient @a ~ ~ ~ 1 2
execute at @a[scores={sanity=2000..}] run playsound minecraft:ambient.cave ambient @a ~ ~ ~ 1 2

execute at @a[scores={sanity=2001..}] run scoreboard players set @a sanity 2000
execute at @a[scores={sanity=1..}] run scoreboard players add @a sanity_up 1


execute at @a[scores={sanity_up=500..}] run scoreboard players remove @a sanity 100
execute at @a[scores={sanity_up=500..}] run scoreboard players reset @a sanity_up
