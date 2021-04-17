extends KinematicBody2D

var velos=Vector2.ZERO
var dir=Vector2.ZERO
var speed=200

onready var sh=$SwordHandler
onready var sm=$StateMachine

func _ready():
	pass

func update_dir():
	dir.x = -Input.get_action_strength("ui_left")+Input.get_action_strength("ui_right")
	dir.y = Input.get_action_strength("ui_down")-Input.get_action_strength("ui_up")

func update_velos(delta):
	velos=dir*speed

func apply_velos(delta):
	velos=move_and_slide(velos, Vector2.UP)

func _physics_process(delta):
	update_dir()
	# update_velos(delta)
	apply_velos(delta)
