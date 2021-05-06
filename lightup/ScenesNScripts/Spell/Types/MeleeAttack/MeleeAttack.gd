extends Node2D

onready var sp=$Position2D/AnimatedSprite
onready var ap=$AnimationPlayer
# var timer=Timer.new()

func _ready():
	pass
	# timer.wait_time=3
	# add_child(timer)
	# timer.autostart=false
	# timer.one_shot=true

#
func enter_casting()->bool:
	if Input.is_action_pressed("attack"):
		return true

	return false
	# return Input.is_action_pressed("attack")

func is_casting()->bool:
	return true
	# return Input.is_action_pressed("attack")

func cast():
	pass
#

func start_casting():

	# timer.start()
	pass

func stop_casting():
	pass

func is_ready()->bool:
	# return timer.time_left==0
	return true

# func is_released()->bool:
# 	return true

func is_released():
	return true

func release():
	ap.play("attack")

func _on_AnimationPlayer_animation_finished(anim_name):
	queue_free()
	pass # Replace with function body.
