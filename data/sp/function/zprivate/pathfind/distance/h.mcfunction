scoreboard players set #-1 sp.VALUES -1

scoreboard players reset #H sp.H

execute store result score #current.x sp.VALUES run data get entity @s Pos[0] 1000
execute store result score #current.y sp.VALUES run data get entity @s Pos[1] 1000
execute store result score #current.z sp.VALUES run data get entity @s Pos[2] 1000

execute store result score #goal.x sp.VALUES run data get entity @n[tag=ai.wander.node,predicate=sp:id] Pos[0] 1000
execute store result score #goal.y sp.VALUES run data get entity @n[tag=ai.wander.node,predicate=sp:id] Pos[1] 1000
execute store result score #goal.z sp.VALUES run data get entity @n[tag=ai.wander.node,predicate=sp:id] Pos[2] 1000

scoreboard players operation #H.x sp.H = #current.x sp.VALUES
scoreboard players operation #H.x sp.H -= #goal.x sp.VALUES
execute if score #H.x sp.H matches ..-1 run scoreboard players operation #H.x sp.H *= #-1 sp.VALUES
scoreboard players operation #H.y sp.H = #current.y sp.VALUES
scoreboard players operation #H.y sp.H -= #goal.y sp.VALUES
execute if score #H.y sp.H matches ..-1 run scoreboard players operation #H.y sp.H *= #-1 sp.VALUES
scoreboard players operation #H.z sp.H = #current.z sp.VALUES
scoreboard players operation #H.z sp.H -= #goal.z sp.VALUES
execute if score #H.z sp.H matches ..-1 run scoreboard players operation #H.z sp.H *= #-1 sp.VALUES

scoreboard players operation #H sp.H += #H.x sp.H
scoreboard players operation #H sp.H += #H.y sp.H
scoreboard players operation #H sp.H += #H.z sp.H

scoreboard players operation @s sp.H = #H sp.H