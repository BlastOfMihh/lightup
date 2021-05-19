extends Node2D
class_name DungeonCell


var csize=Vector2()

var type="none"

func setup_pos(sz, pos)->void:
	csize=sz
	position=pos
	print("new thing")

	var sp=Sprite.new()
	sp.texture=load("res://Assets/godot_logo.png")
	add_child(sp)

# func setup_type(s):
# 	match s:
# 		"room":
# 			pass
# 		"road":
# 			pass
