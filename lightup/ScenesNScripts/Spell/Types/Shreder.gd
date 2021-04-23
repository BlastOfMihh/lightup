extends Area2D

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

func is_released()->bool:
	return true

func release():
	queue_free()
	# get_tree().root.get_child(0).add_child(self)
	# Globals.actor.get_parent().add_child(self)
	print("release")
	pass
