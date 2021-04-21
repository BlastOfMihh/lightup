extends Node2D


var spells={"Shreder":preload("res://ScenesNScripts/Spell/Types/Shreder.tscn")}
var cspell=null


func setup(which:String):
	cspell=spells[which].instance()
	add_child(cspell)

# func is_ready()->bool:
# 	return cspell.is_ready()
