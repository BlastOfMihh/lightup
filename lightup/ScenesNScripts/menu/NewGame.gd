extends Button

#onready var adoi=preload("res://ScenesNScripts/menu/TitleScreen.tscn")

func _on_NewGame_pressed():
	print(23)
	get_tree().change_scene_to(load("res://ScenesNScripts/menu/TitleScreen.tscn"))
