extends State

func _during_state(delta):
	# if parent.dir.x:
	parent.velos.x=parent.dir.x*parent.speed
	parent.velos=parent.move_and_slide(parent.velos, Vector2.UP)
