extends Button

export var doi=preload("res://ScenesNScripts/Levels/Nivel3.tscn")

func _on_NewGame_pressed():
	print(23)
	get_tree().change_scene_to(doi)
