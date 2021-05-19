extends ColorRect

onready var max_size=rect_size.x

func _process(delta):
	rect_size.x=max_size*Globals.actor.hp/Globals.actor.max_hp
