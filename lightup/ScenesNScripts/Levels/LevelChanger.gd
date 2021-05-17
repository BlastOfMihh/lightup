extends Area2D

export(PackedScene) var next_level


func _on_Area2D_body_entered(body):
	get_tree().change_scene_to(next_level)
