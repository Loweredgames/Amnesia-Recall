#Copyright (C) Loweredgames (Lorenzo Giannini) 
#Contacted:<https://github.com/Loweredgames>
#This Source Code Form is subject to the terms of the License.
#NOT OFFICIAL MINECRAFT PRODUCT. NOT APPROVED BY OR ASSOCIATED WITH MOJANG STUDIO.
#READING THE COPYRIGHT (C): <https://www.minecraft.net/en-us/terms>


scoreboard objectives add drop_lantern minecraft.dropped:minecraft.lantern
scoreboard objectives add drop_quartz minecraft.dropped:minecraft.quartz
scoreboard objectives add lantern dummy
scoreboard objectives add oil dummy
scoreboard objectives add oil_vision dummy
scoreboard objectives setdisplay sidebar oil


execute if entity @a[nbt={SelectedItem:{id:"minecraft:lantern",Count:1b,tag:{display:{Name:'{"text":"lantern","color":"gold","bold":true}'},HideFlags:39}}}] run scoreboard players add @a lantern 1
execute at @a[scores={drop_lantern=1}] run item replace entity @a hotbar.0 with minecraft:lantern{display: {Name: '{"text":"lantern","color":"gold","bold":true}'}, HideFlags: 39} 1
execute at @a[scores={drop_lantern=1..}] run item replace entity @a hotbar.0 with minecraft:quartz{display: {Name: '{"text":"lantern (off)","color":"dark_gray","bold":true,"italic":true,"strikethrough":true}'}} 1
execute at @a[scores={drop_lantern=1..}] run scoreboard players set @a drop_lantern 0
execute at @a[scores={drop_quartz=1..}] run item replace entity @a hotbar.0 with minecraft:lantern{display: {Name: '{"text":"lantern","color":"gold","bold":true}'}, HideFlags: 39} 1
execute at @a[scores={drop_quartz=1..}] run scoreboard players set @a drop_quartz 0
execute at @a[scores={drop_lantern=0..}] run kill @e[type=item,nbt={Item:{id:"minecraft:lantern",Count:1b}}]
execute at @a[scores={drop_quartz=0..}] run kill @e[type=item,nbt={Item:{id:"minecraft:quartz",Count:1b}}]


execute at @a[scores={lantern=1}] run scoreboard players remove @a oil 5
execute at @a[scores={lantern=1}] run effect clear @a minecraft:speed
execute at @a[scores={lantern=1}] run effect clear @a minecraft:slowness
execute at @a[scores={lantern=1}] run scoreboard players remove @a sanity 2
execute at @a[scores={lantern=1}] if block ~ ~-2 ~ minecraft:dried_kelp_block run scoreboard players set @a sanity_up 0
execute at @a[scores={lantern=1}] if block ~ ~-3 ~ minecraft:dried_kelp_block run scoreboard players set @a sanity_up 0
execute at @a[scores={lantern=1}] run scoreboard players remove @a sanity_sprain 100
execute at @a[scores={lantern=1..}] run scoreboard players set @a lantern 0


execute at @a[scores={oil=..-1}] run scoreboard players set @a oil 0
execute if entity @a[scores={oil=1..100000},nbt={SelectedItem:{id:"minecraft:lantern",Count:1b,tag:{display:{Name:'{"text":"lantern","color":"gold","bold":true}'},HideFlags:39}}}] run scoreboard players set @a oil_vision 1

execute at @a[scores={oil=0}] run item replace entity @a hotbar.0 with minecraft:quartz{display: {Name: '{"text":"lantern (off)","color":"dark_gray","bold":true,"italic":true,"strikethrough":true}'}} 1
execute at @a[scores={oil=100001..}] run scoreboard players set @a oil 100000


execute at @a[scores={oil_vision=0}] run effect clear @a minecraft:night_vision
execute at @a[scores={oil_vision=1}] run effect give @a minecraft:night_vision 11 0 true
execute at @a[scores={oil_vision=1..}] run scoreboard players set @a oil_vision 0