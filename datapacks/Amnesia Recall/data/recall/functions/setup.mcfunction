#Copyright (C) Loweredgames (Lorenzo Giannini)
#Contacted:<https://github.com/Loweredgames>
#This Source Code Form is subject to the terms of the License.
#NOT OFFICIAL MINECRAFT PRODUCT. NOT APPROVED BY OR ASSOCIATED WITH MOJANG STUDIO.
#READING THE COPYRIGHT (C): <https://www.minecraft.net/en-us/terms>


##Setup
recipe take @a *
difficulty hard
xp set @a 0 points
xp set @a 0 levels


##Clothes Setup
item replace entity @a armor.chest with leather_chestplate[unbreakable={show_in_tooltip:false},enchantments={levels:{"minecraft:binding_curse":1},show_in_tooltip:false},hide_additional_tooltip={}] 1
item replace entity @a armor.legs with leather_leggings[unbreakable={show_in_tooltip:false},enchantments={levels:{"minecraft:binding_curse":1},show_in_tooltip:false},hide_additional_tooltip={}] 1
item replace entity @a armor.feet with leather_boots[unbreakable={show_in_tooltip:false},enchantments={levels:{"minecraft:binding_curse":1},show_in_tooltip:false},hide_additional_tooltip={}] 1


##Function Setup
function recall:changelog/building
function recall:changelog/nightly_building
function recall:lantern
function recall:sanity
function recall:items


##Function Story
function recall_story:story_0
function recall_story:story_1
function recall_story:story_2


##Gamerules
#FARE Gamerules


##Dev (Solo versioni di sviluppo)
#effect give @a minecraft:night_vision 21 0 true
#clear @a minecraft:item_frame