extends Node2D

onready var actor=Globals.actor
onready var ray_cast=$RayCast2D
onready var damage_point=$Damage
export var ang_speed=PI/5
var circles=0

func _physics_process(delta):

	# if (rotation>dest_angle()-2*PI):
	# 	rotation-=ang_speed*delta
	# else:
	rotation+=ang_speed*delta

	# if rotation>2*PI: rotation-=2*PI
	# if rotation<0: rotation+=2*PI

	print("rot:", rotation,"  dst:", dest_angle())
	damage_point.global_position = ray_cast.get_collision_point()
	# print(ray_cast.get_collision_point())


func dest_angle():
	if actor!=null:
		var ans = PI/2+(actor.get_global_position()-get_global_position()).angle()
		# if ans<0: ans+=2*PI
		return ans
	return 0
