extends KinematicBody2D

onready var sm=$StateMachine

var velos=Vector2.ZERO
var point2rooster

var speed=5

func setup(point:Position2D):
	point2rooster=point
	# speed=rand_range(3,5)

func chase_rooster(delta):
	if point2rooster:
		velos=(point2rooster.global_position-position)*speed
		apply_velos(delta)

func apply_velos(delta):
	velos=move_and_slide(velos)


# func _physics_process(delta):
# 	chaseRooster(delta)
