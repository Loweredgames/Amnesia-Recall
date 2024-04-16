#Copyright (C) Loweredgames (Lorenzo Giannini) 
#Contacted:<https://github.com/Loweredgames>
#This Source Code Form is subject to the terms of the License.
#NOT OFFICIAL MINECRAFT PRODUCT. NOT APPROVED BY OR ASSOCIATED WITH MOJANG STUDIO.
#READING THE COPYRIGHT (C): <https://www.minecraft.net/en-us/terms>


scoreboard players add @a story_1 1

execute at @a[scores={story_1=1}] run tp @a 996.40 121.00 66.47 244.77 6.60
execute at @a[scores={story_1=20}] run tp @a 998.70 121.00 64.55 269.82 18.00
execute at @a[scores={story_1=50}] run tp @a 1003.70 123.00 134.49 271.17 37.20
execute at @a[scores={story_1=60}] run give @a minecraft:quartz{display:{Name:'{"text":"lantern (off)","color":"dark_gray","bold":true,"italic":true,"strikethrough":true}'}} 1
execute at @a[scores={story_1=61}] run scoreboard players set @a oil 10500
execute at @a[scores={story_1=63..}] run scoreboard objectives remove story_1