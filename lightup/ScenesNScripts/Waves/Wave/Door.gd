extends Node2D

onready var tilemap=$TileMap

func _ready():
	open()
func close():
	self.add_child(tilemap)
	
func open():
	tilemap.get_parent().remove_child(tilemap)
