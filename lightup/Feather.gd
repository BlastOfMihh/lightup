extends Node

func _ready():
	Globals.actor.sm.request_state("Speed")
	queue_free()
