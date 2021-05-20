extends SpellType

onready var flower_tscn=preload("res://ScenesNScripts/Spell/Types/Spike/SpikeFlower.tscn")

export var count:=3


func enter_setup():
	pass

func enter_idle()->void:
	pass
func exit_idle()->void:
	pass
func during_idle()->void:
	pass
func get_transition_idle():
	return "Casting"
	return null


func enter_casting()->void:
	pass
func exit_casting()->void:
	pass
func during_casting()->void:
	pass
func get_transition_casting():
	return "Ready"
	return null

export var spike_nr=4
export var radious:=60

func enter_ready()->void:
	var flower=flower_tscn.instance()
	flower.spike_nr=spike_nr
	flower.radious=radious
	flower.offset= rotate_after_actor()
	flower.position=actor.position
	actor.get_parent().add_child(flower)
	pass
func exit_ready()->void:
	pass
func during_ready()->void:
	pass
func get_transition_ready():
	return "Finished"
	return null
