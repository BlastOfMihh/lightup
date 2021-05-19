extends KinematicBody2D
class_name MBody

onready var sm=$StateMachine

export var health:=100.0
export var max_health:=100.0
export var speed:=200.0

var velos:=Vector2.ZERO

var velos_multiplier=100.0

func add_buff(buff_name:String):
	sm.request_state(buff_name)
	# var buff=Globals.buffs[buff_name].instance()
	# sm.add_child(buff)
	# # buff.name=buff_name
	# # yield(buff, "ready")
	# sm.add_state(buff)
	# sm.request_state(buff.name)

func get_hit():
	health-=10

func add_gravity():
	velos.y+=Globals.gravity # it's 20

func add_velocity(add:Vector2):
	velos+=add

func apply_velos(delta):
	velos=move_and_slide(velos, Vector2.UP)
