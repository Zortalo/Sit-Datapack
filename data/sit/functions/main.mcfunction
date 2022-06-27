### MAIN ###

execute as @a[x_rotation=90,predicate=sit:sneaking,predicate=zorras:empty,tag=!sit.look.down.z] at @s unless block ~ ~-.1 ~ air unless block ~ ~ ~ water unless entity @e[tag=sit.pig.z,distance=..1.25] align xz positioned ~.5 ~ ~.5 run function sit:main/summon

execute as @a[tag=sit.look.down.z,x_rotation=-90..89] unless entity @e[tag=sit.pig.z,distance=..1.25] run tag @s remove sit.look.down.z

execute as @e[tag=sit.pig.z,tag=!sit.pig.checked.z] at @s if entity @a[distance=..1,limit=1,sort=nearest,nbt={RootVehicle: {Entity: {id: "minecraft:pig", Tags: ["sit.pig.z"]}}}] run function sit:main/saddle

execute as @e[tag=sit.pig.checked.z] at @s unless entity @a[distance=..1.25,nbt={RootVehicle: {Entity: {id: "minecraft:pig", Tags: ["sit.pig.z"]}}}] run function sit:main/kill
execute as @e[tag=sit.pig.z] at @s unless entity @a[distance=..1.25] run function sit:main/kill
execute as @e[tag=sit.pig.z] at @s if block ~ ~.5 ~ air unless entity @a[distance=..1,nbt={RootVehicle: {Entity: {id: "minecraft:pig", Tags: ["sit.pig.z"]}}}] run function sit:main/kill
execute as @e[tag=sit.pig.z] at @s if block ~ ~.5 ~ air if entity @a[distance=..1,nbt={RootVehicle: {Entity: {id: "minecraft:pig", Tags: ["sit.pig.z"]}}}] run function sit:main/kill2