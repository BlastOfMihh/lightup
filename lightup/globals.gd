extends Node

var gravity:=100
var actor=null

var npc_hits=0

onready var buffs={
	"Slowness":preload("res://ScenesNScripts/Buffs/Slowness/Slowness.tscn")
	
	}

var muz=preload("res://musica.tscn")

func _ready():
	get_tree().root.add_child(muz.instance())

var achievements={
	"NotCoolBro":{
		
	}
}

func update_display_inv():
	for ic in Globals.actor.invs:
		ic.inv.emit_signal("items_changed", [0,1,2,3,4,5,6,7,8])
