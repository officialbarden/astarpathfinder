scoreboard players set #-1 sp.VALUES -1

scoreboard players reset #G sp.G

execute store result score #current.x sp.VALUES run data get entity @s Pos[0] 1000
execute store result score #current.y sp.VALUES run data get entity @s Pos[1] 1000
execute store result score #current.z sp.VALUES run data get entity @s Pos[2] 1000

scoreboard players operation #G.x sp.G = #start.x sp.VALUES
scoreboard players operation #G.x sp.G -= #current.x sp.VALUES
execute if score #G.x sp.G matches ..-1 run scoreboard players operation #G.x sp.G *= #-1 sp.VALUES
scoreboard players operation #G.y sp.G = #start.y sp.VALUES
scoreboard players operation #G.y sp.G -= #current.y sp.VALUES
execute if score #G.y sp.G matches ..-1 run scoreboard players operation #G.y sp.G *= #-1 sp.VALUES
scoreboard players operation #G.z sp.G = #start.z sp.VALUES
scoreboard players operation #G.z sp.G -= #current.z sp.VALUES
execute if score #G.z sp.G matches ..-1 run scoreboard players operation #G.z sp.G *= #-1 sp.VALUES

scoreboard players operation #G sp.G += #G.x sp.G
scoreboard players operation #G sp.G += #G.y sp.G
scoreboard players operation #G sp.G += #G.z sp.G

scoreboard players operation @s sp.G = #G sp.G