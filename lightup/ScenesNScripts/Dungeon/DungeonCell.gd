extends Node2D
class_name DungeonCell


var csize=Vector2()

func setup(sz, pos)->void:
	csize=sz
	position=pos
	print("new thing")

	var sp=Sprite.new()
	sp.texture=load("res://Assets/godot_logo.png")
	add_child(sp)
