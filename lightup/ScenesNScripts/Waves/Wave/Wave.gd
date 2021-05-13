extends Node2D

var state=""

func _ready():
	visible=false
	
func spawn():
	state="spawning"
	visible=true
	for ch in get_children():
		if ch.has_method("spawn"):
			ch.spawn()
			
func _process(delta):
	if get_child_count()==0:
		queue_free()
