#Copyright (C) Loweredgames (Lorenzo Giannini) 
#Contacted:<https://github.com/Loweredgames>
#This Source Code Form is subject to the terms of the License.
#NOT OFFICIAL MINECRAFT PRODUCT. NOT APPROVED BY OR ASSOCIATED WITH MOJANG STUDIO.
#READING THE COPYRIGHT (C): <https://www.minecraft.net/en-us/terms>


difficulty hard
recipe take @a *
xp set @a 0 points
xp set @a 0 levels
item replace entity @a armor.chest with minecraft:leather_chestplate{HideFlags: 39, Unbreakable: 1b, Enchantments: [{id: "minecraft:binding_curse", lvl: 1s}]} 1
item replace entity @a armor.legs with minecraft:leather_leggings{HideFlags: 39, Unbreakable: 1b, Enchantments: [{id: "minecraft:binding_curse", lvl: 1s}]} 1
item replace entity @a armor.feet with minecraft:leather_boots{HideFlags: 39, Unbreakable: 1b, Enchantments: [{id: "minecraft:binding_curse", lvl: 1s}]} 1
function recall:sanity
function recall:items
function recall:lantern
function recall_story:story_0
function recall_story:story_1
function recall_story:story_2
effect give @a minecraft:night_vision 21 0 true
#clear @a minecraft:item_frame
fare versione