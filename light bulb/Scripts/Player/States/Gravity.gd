extends State


func _during_state(delta) :
	parent.add_gravity()
	parent.velos.y=min(parent.velos.y,800)
