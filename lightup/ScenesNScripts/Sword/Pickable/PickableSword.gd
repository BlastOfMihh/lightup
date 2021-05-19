extends Area2D

export(Resource) var sword
export var count:=1

onready var sp=$Sprite

func _ready():
	sp.texture=sword.texture
	


func _on_PickableSwords_body_entered(body):
	queue_free()
#	Globals.actor.invs[0].inv.add_item(sword)
	if sword.count==0:
		for ic in Globals.actor.invs:
			ic.inv.add_item(sword)
	sword.count+=1
	for ic in Globals.actor.invs:
		ic.inv.emit_signal("items_changed", [0,1,2,3,4,5,6,7,8])
