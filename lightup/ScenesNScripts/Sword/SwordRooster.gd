extends Node2D

onready var sword_pos=preload("res://ScenesNScripts/Sword/SwordPos/SwordPos.tscn")
onready var actor=get_parent().get_parent()

export var r=20
export var ang=0.0
export var rotating=false
export var ang_speed=PI
export var move_speed=155
export var chase_length=80
export var avoid_length=45



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

func chase_actor(delta):
	var difv=global_position-actor.global_position
	if abs(difv.length())>chase_length:
		global_position-=difv.normalized()*move_speed*delta
func avoid_actor(delta):
	var difv=global_position-actor.global_position
	if abs(difv.length())<avoid_length:
		global_position+=difv.normalized()*move_speed*delta

func _physics_process(delta):
	chase_actor(delta)
	avoid_actor(delta)
	if rotating:
		rotation+=ang_speed*delta
