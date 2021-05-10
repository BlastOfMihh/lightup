extends Area2D

func _on_Damage_body_entered(body):
	if body.name=="Actor":
		get_tree().reload_current_scene()
