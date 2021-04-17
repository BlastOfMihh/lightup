extends Node2D

export var r=5
var ang=0.0
onready var sword_pos=preload("res://Scenes/SwordPos.tscn")


func setup(nr):

	for i in range(0,nr):
		add_child(sword_pos.instance())


	var each_ang=0
	ang=2*PI/get_child_count()
	for x in get_children():
		x.rotation=each_ang
		each_ang+=ang
	return

	# for x in get_children():
	# 	var p=Node2D.new()
	# 	add_child(p)
	# 	p.add_child(x)

	# 	x.position=Vector2(0, r*10)
	# 	p.rotation=each_ang
	# 	each_ang+=ang

func _physics_process(delta):
	rotation+=PI/30
	# rotation+=PI/10
	pass
