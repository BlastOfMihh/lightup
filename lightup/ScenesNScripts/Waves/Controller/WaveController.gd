extends Node2D

onready var waves=$Waves
onready var doors=$Doors
export var active:=false

signal close_doors()
signal open_doors()

func _ready():
	for d in doors.get_children():
		connect("close_doors",d,"close")
		connect("open_doors",d,"open")

func handle_waves():
	if waves.get_child_count()>0 and active:
		var cwave=waves.get_child(0)
		if cwave.state!="spawning":
			cwave.spawn()

func _process(delta):
	if active:
		handle_waves()
	if waves.get_child_count()==0:
		emit_signal("open_doors")
		queue_free()

func _on_AreaRange_body_entered(body):
	emit_signal("close_doors")
	active=true
