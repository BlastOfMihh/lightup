extends Node2D


# onready var spells={"Shreder":preload("res://ScenesNScripts/Spell/Types/Shreder/Shreder.tscn")}
# onready var type=preload("res://ScenesNScripts/Spell/Types/Shreder/Shreder.tscn")

# export var spell_range=0
export (PackedScene) var type

var cspell=null


# func setup(which:String):

# 	pass

# func _physics_process(delta):
# 	rotation = PI+(get_global_position()-get_global_mouse_position()).angle()

# func is_ready()->bool:
# 	return cspell.is_ready()
