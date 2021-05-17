extends StateMachine


func _process(delta):
	if Input.is_key_pressed(KEY_0):
		request_state("StaticShield")
	pass
