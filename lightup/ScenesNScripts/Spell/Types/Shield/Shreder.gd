extends Area2D

onready var sp=$AnimatedSprite
var timer=Timer.new()

func _ready():
	timer.wait_time=3
	add_child(timer)
	timer.autostart=false
	timer.one_shot=true

#
func enter_casting()->bool:
	return Input.is_action_pressed("attack")

func is_casting()->bool:
	return Input.is_action_pressed("attack")

func cast():
	pass
#

func start_casting():
	timer.start()
	pass

func stop_casting():
	pass

func is_ready()->bool:
	return timer.time_left==0
	return false

# func is_released()->bool:
# 	return true

func is_released():
	return true

func release():
	var newp=Globals.get_parent()
	position=global_position
	get_parent().remove_child(self)
	newp.add_child(self)
	print("release")
