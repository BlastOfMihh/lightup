extends KinematicBody2D

var kb=Vector2.ZERO

func get_hit():
	kb=Vector2(4000,0)
	pass

func die():
	queue_free()

func _physics_process(delta):
	if Input.is_key_pressed(KEY_KP_0):
		die()
	kb=kb.move_toward(Vector2.ZERO, 900)
	kb=move_and_slide(kb)
