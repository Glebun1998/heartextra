recipe take @a heartextra:crafthppotion
advancement revoke @a only heartextra:craft1

scoreboard players add @a gr.health 0
scoreboard players add @a gr.extra.health 0

execute at @a[nbt={SelectedItem:{id:"minecraft:glow_berries",tag:{grhealth:1b}}}] run scoreboard players set @p[nbt={SelectedItem:{id:"minecraft:glow_berries",tag:{grhealth:1b}}}] gr.hpberries 1
execute at @a[scores={gr.used.minecraft.glow_berries=1..,gr.hpberries=1..}] run scoreboard players add @p[scores={gr.used.minecraft.glow_berries=1..,gr.hpberries=1..}] gr.health 1
execute at @a[scores={gr.used.minecraft.glow_berries=1}] run scoreboard players set @p[scores={gr.used.minecraft.glow_berries=1}] gr.used.minecraft.glow_berries 0
execute unless entity @p[nbt={SelectedItem:{id:"minecraft:glow_berries",tag:{grhealth:1b}}}] run scoreboard players set @p gr.hpberries 0

execute at @a[scores={gr.health=0}] run attribute @p generic.max_health base set 20

scoreboard players set @p[nbt={SelectedItem:{id:"minecraft:potion",tag:{grextrahp:1b}}}] gr.hppotion 1
scoreboard players add @p[scores={gr.used.minecraft.potion=1..,gr.hppotion=1..}] gr.extra.health 1
execute positioned as @p[scores={gr.used.minecraft.potion=1}] run playsound item.bottle.empty player @a ~ ~ ~ 1.2 1
scoreboard players set @p[scores={gr.used.minecraft.potion=1}] gr.used.minecraft.potion 0
execute unless entity @p[nbt={SelectedItem:{id:"minecraft:potion",tag:{grextrahp:1b}}}] run scoreboard players set @p gr.hppotion 0

scoreboard players set @a[scores={gr.health=1,gr.extra.health=0}] gr.health 0

execute at @a[scores={gr.health=1,gr.extra.health=1}] run attribute @p generic.max_health base set 22
execute at @a[scores={gr.health=2,gr.extra.health=1}] run attribute @p generic.max_health base set 24
execute at @a[scores={gr.health=3,gr.extra.health=1}] run attribute @p generic.max_health base set 26
execute at @a[scores={gr.health=4,gr.extra.health=1}] run attribute @p generic.max_health base set 28
execute at @a[scores={gr.health=5,gr.extra.health=1}] run attribute @p generic.max_health base set 30

scoreboard players set @a[scores={gr.health=6..,gr.extra.health=1}] gr.health 5

execute at @a[scores={gr.health=6,gr.extra.health=2}] run attribute @p generic.max_health base set 32
execute at @a[scores={gr.health=7,gr.extra.health=2}] run attribute @p generic.max_health base set 34
execute at @a[scores={gr.health=8,gr.extra.health=2}] run attribute @p generic.max_health base set 36
execute at @a[scores={gr.health=9,gr.extra.health=2}] run attribute @p generic.max_health base set 38
execute at @a[scores={gr.health=10,gr.extra.health=2}] run attribute @p generic.max_health base set 40

scoreboard players set @a[scores={gr.health=11..,gr.extra.health=2}] gr.health 10

execute at @a[scores={gr.health=11,gr.extra.health=3}] run attribute @p generic.max_health base set 42
execute at @a[scores={gr.health=12,gr.extra.health=3}] run attribute @p generic.max_health base set 44
execute at @a[scores={gr.health=13,gr.extra.health=3}] run attribute @p generic.max_health base set 46
execute at @a[scores={gr.health=14,gr.extra.health=3}] run attribute @p generic.max_health base set 48
execute at @a[scores={gr.health=15,gr.extra.health=3}] run attribute @p generic.max_health base set 50

scoreboard players set @a[scores={gr.health=16..,gr.extra.health=3}] gr.health 15

execute at @a[scores={gr.health=16,gr.extra.health=4}] run attribute @p generic.max_health base set 52
execute at @a[scores={gr.health=17,gr.extra.health=4}] run attribute @p generic.max_health base set 54
execute at @a[scores={gr.health=18,gr.extra.health=4}] run attribute @p generic.max_health base set 56
execute at @a[scores={gr.health=19,gr.extra.health=4}] run attribute @p generic.max_health base set 58
execute at @a[scores={gr.health=20,gr.extra.health=4}] run attribute @p generic.max_health base set 60
