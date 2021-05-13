extends Node2D

onready var waves=$Waves
export var active:=false

func handle_waves():
	if waves.get_child_count()>0 and active:
		var cwave=waves.get_child(0)
		if cwave.state!="spawning":
			cwave.spawn()

func _process(delta):
	handle_waves()

func _on_AreaRange_body_entered(body):
	active=true
