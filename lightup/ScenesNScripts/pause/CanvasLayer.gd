extends CanvasLayer

func _ready() -> void:
	pass;

func _input(event):
	if event.is_action_pressed("pause"):
		$col.visible = !$col.visible
		get_tree().paused = !get_tree().paused
			
