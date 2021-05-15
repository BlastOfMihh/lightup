extends Area2D

export(Resource) var sword

onready var sp=$Sprite

func _ready():
	sp.texture=sword.texture
	
