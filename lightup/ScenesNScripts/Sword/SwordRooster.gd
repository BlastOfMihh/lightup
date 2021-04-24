extends Node2D

export var r=20
export var ang=0.0
export var rotating=false
export var ang_speed=PI
onready var sword_pos=preload("res://ScenesNScripts/Sword/SwordPos/SwordPos.tscn")

func add_pos():
	var sp=sword_pos.instance()
	add_child(sp)
	sp.point.position.x=r

# func setup_poses(nr):
# 	for x in get_children():
# 		x.queue_free()
# 	for i in range(0,nr):
# 		add_pos()

func setup_angles():
	if get_child_count()==0:
		return
	var each_ang=0
	ang=2*PI/get_child_count()
	for x in get_children():
		x.rotation=each_ang
		each_ang+=ang

func _physics_process(delta):
	if rotating:
		rotation+=ang_speed*delta
