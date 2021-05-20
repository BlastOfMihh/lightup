extends Node2D
class_name SpellType

export var damage:=35

onready var pr=get_parent()
onready var ap=$AnimationPlayer
onready var spell_pos=$SpellPos


func rotate_after_actor():
	rotation = (Globals.actor.global_position-get_global_mouse_position()).angle()+PI

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
	# return "Idle"
	return null
