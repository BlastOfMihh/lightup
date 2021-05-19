extends CanvasLayer


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	$UI.visible=false


func _on_Timer_timeout():
	$UI.visible=true
	get_tree().paused=true
