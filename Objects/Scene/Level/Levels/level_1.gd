extends Node2D

signal player_died

var laser_scene: PackedScene = preload("res://Enemie/laser.tscn")
var laser_robot_scene: PackedScene = preload("res://Enemie/robot/laser_gros_ennemi.tscn")

func _on_player_touched():
	print("DEAD")

func _on_enemie_laser(pos):
	var laser = laser_scene.instantiate()
	laser.position = pos
	add_child(laser)

func _on_enemie_robot_laser(pos):
	var laser = laser_robot_scene.instantiate()
	laser.position = pos
	add_child(laser)

func _on_level_finished(_body):
	get_tree().change_scene_to_file("res://Objects/Scene/Level/Levels/level_2.tscn")

