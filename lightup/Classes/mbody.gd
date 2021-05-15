extends KinematicBody2D
class_name MBody

onready var sm=$StateMachine


var velos:=Vector2.ZERO
var health:=100.0
export var speed=200


var velos_multiplier=100.0

func add_gravity():
	velos.y+=Globals.gravity # it's 20

func add_velocity(add:Vector2):
	velos+=add

func apply_velos(delta):
	velos=move_and_slide(velos, Vector2.UP)
