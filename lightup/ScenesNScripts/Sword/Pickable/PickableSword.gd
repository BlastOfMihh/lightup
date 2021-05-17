extends Area2D

export(Resource) var sword

onready var sp=$Sprite

func _ready():
	sp.texture=sword.texture
	


func _on_PickableSwords_body_entered(body):
	queue_free()
	Globals.actor.invs[0].inv.add_item(sword)
