extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _process(delta):
	if Input.is_key_pressed(KEY_T):
		add_child(load("res://ScenesNScripts/Spell/Types/Spike/SpikeFlower.tscn").instance())
