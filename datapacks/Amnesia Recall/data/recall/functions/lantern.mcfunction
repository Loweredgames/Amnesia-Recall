#Copyright (C) Loweredgames (Lorenzo Giannini)
#Contacted:<https://github.com/Loweredgames>
#This Source Code Form is subject to the terms of the License.
#NOT OFFICIAL MINECRAFT PRODUCT. NOT APPROVED BY OR ASSOCIATED WITH MOJANG STUDIO.
#READING THE COPYRIGHT (C): <https://www.minecraft.net/en-us/terms>


##Scoreboard Lantern Setup
scoreboard objectives add AmnesiaRecall_drop_lantern minecraft.dropped:minecraft.lantern
scoreboard objectives add AmnesiaRecall_drop_quartz minecraft.dropped:minecraft.quartz
scoreboard objectives add AmnesiaRecall_lantern dummy
scoreboard objectives add AmnesiaRecall_oil dummy
scoreboard objectives add AmnesiaRecall_oil_vision dummy


##Lantern Effects
execute at @a[scores={AmnesiaRecall_lantern=1}] run scoreboard players remove @a AmnesiaRecall_oil 5
execute at @a[scores={AmnesiaRecall_lantern=1}] run effect clear @a minecraft:speed
execute at @a[scores={AmnesiaRecall_lantern=1}] run effect clear @a minecraft:slowness
execute at @a[scores={AmnesiaRecall_lantern=1}] run scoreboard players remove @a AmnesiaRecall_sanity 2
execute at @a[scores={AmnesiaRecall_lantern=1}] if block ~ ~-2 ~ minecraft:dried_kelp_block run scoreboard players set @a AmnesiaRecall_sanity_up 0
execute at @a[scores={AmnesiaRecall_lantern=1}] if block ~ ~-3 ~ minecraft:dried_kelp_block run scoreboard players set @a AmnesiaRecall_sanity_up 0
execute at @a[scores={AmnesiaRecall_lantern=1}] run scoreboard players remove @a AmnesiaRecall_sanity_sprain 100
execute at @a[scores={AmnesiaRecall_lantern=1..}] run scoreboard players set @a AmnesiaRecall_lantern 0


##Drop Lantern
execute if entity @a[nbt={SelectedItem:{id:"minecraft:lantern",count:1,components:{"minecraft:custom_name":'{"text":"Lantern","color":"gold","bold":true}'}}}] run scoreboard players add @a AmnesiaRecall_lantern 1
execute if entity @e[type=item,nbt={Item:{id:"minecraft:lantern",count:1}}] run scoreboard players add @a AmnesiaRecall_lantern 1


##Lantern Drop On
execute at @a[scores={AmnesiaRecall_drop_lantern=1}] run item replace entity @a hotbar.0 with lantern[custom_name='{"bold":true,"color":"gold","text":"Lantern"}',hide_additional_tooltip={}] 1


##Lantern Drop Off
execute at @a[scores={AmnesiaRecall_drop_lantern=1..}] run item replace entity @a hotbar.0 with quartz[custom_name='{"bold":true,"color":"dark_gray","italic":true,"strikethrough":true,"text":"Lantern (OFF)"}'] 1
execute at @a[scores={AmnesiaRecall_drop_lantern=1..}] run scoreboard players set @a AmnesiaRecall_drop_lantern 0
execute at @a[scores={AmnesiaRecall_drop_quartz=1..}] run item replace entity @a hotbar.0 with lantern[custom_name='{"bold":true,"color":"gold","text":"Lantern"}',hide_additional_tooltip={}] 1


##Remove Lantern in the World
execute at @a[scores={AmnesiaRecall_drop_quartz=1..}] run scoreboard players set @a AmnesiaRecall_drop_quartz 0
execute at @a[scores={AmnesiaRecall_drop_lantern=0..}] run kill @e[type=item,nbt={Item:{id:"minecraft:lantern",count:1}}]
execute at @a[scores={AmnesiaRecall_drop_quartz=0..}] run kill @e[type=item,nbt={Item:{id:"minecraft:quartz",count:1}}]


##Lantern Oil ON
execute at @a[scores={AmnesiaRecall_oil=..-1}] run scoreboard players set @a AmnesiaRecall_oil 0
execute if entity @a[scores={AmnesiaRecall_oil=1..100000},nbt={SelectedItem:{id:"minecraft:lantern",count:1,components:{"minecraft:custom_name":'{"text":"Lantern","color":"gold","bold":true}'}}}] run scoreboard players set @a AmnesiaRecall_oil_vision 1


##Lantern Oil OFF
execute at @a[scores={AmnesiaRecall_oil=0}] run item replace entity @a hotbar.0 with minecraft:quartz[custom_name='{"bold":true,"color":"dark_gray","italic":true,"strikethrough":true,"text":"Lantern (OFF)"}'] 1
execute at @a[scores={AmnesiaRecall_oil=100001..}] run scoreboard players set @a AmnesiaRecall_oil 100000
execute at @a[scores={AmnesiaRecall_oil_vision=0}] run effect clear @a minecraft:night_vision
execute at @a[scores={AmnesiaRecall_oil_vision=1}] run effect give @a minecraft:night_vision 11 0 true
execute at @a[scores={AmnesiaRecall_oil_vision=1..}] run scoreboard players set @a AmnesiaRecall_oil_vision 0