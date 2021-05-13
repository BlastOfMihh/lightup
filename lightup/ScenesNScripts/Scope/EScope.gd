extends Node2D

onready var line=$Line
onready var hit_timer=$HitTimer


var state:="chase"
# chase -> finished
var width=1
var colors=[Color.darkred, Color.red]


func _process(delta):
	line.points[1].x=width
	match state:
		"chase":
			if line.default_color!=colors[0]:
				line.default_color=colors[0] 
				hit_timer.start()
			width=global_position.distance_to(Globals.actor.global_position)
			rotation=(Globals.actor.global_position - global_position).angle()
		"finished":
			if line.default_color!=colors[1]:
				line.default_color=colors[1] 
func die():
	queue_free()

func is_finished()->bool:
	return state=="finished"

func _on_HitTimer_timeout():
	state="finished"
