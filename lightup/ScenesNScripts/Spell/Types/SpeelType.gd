extends Node2D
class_name SpellType

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
