extends Node2D
class_name SpellType

export var cost:=4
export var damage:=35
export (Texture) var sword_icon

onready var actor=Globals.actor
onready var pr=get_parent()
onready var ap=get_child(0).get_node("AnimationPlayer")
#onready var ap=$AnimationPlayer
onready var spell_pos=$SpellPos

func _ready():
	pass

func rotate_after_actor():
	rotation = (Globals.actor.global_position-get_global_mouse_position()).angle()+PI
	return rotation
func enter_setup():
	pass

func enter_idle()->void:
	pass
func exit_idle()->void:
	pass
func during_idle()->void:
	pass
func get_transition_idle():
	# return "Casting"
	return null


func enter_casting()->void:
	pass
func exit_casting()->void:
	pass
func during_casting()->void:
	pass
func get_transition_casting():
	# return "Ready"
	return null



func enter_ready()->void:
	pass
func exit_ready()->void:
	pass
func during_ready()->void:
	pass
func get_transition_ready():
	# return "Finished"
	return null
