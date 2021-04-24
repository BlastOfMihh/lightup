extends State #CastSpell

onready var spell_instancer=preload("res://ScenesNScripts/Spell/Spell.tscn")
var spell=null

func _ready():
	conflicting_states=[]
	removing_states=["Idle"]
	necessary_states=[]

func get_transition():
	if Input.is_action_just_pressed("change_mode"):
		return "Idle"
	return null

func enter_state(old_states):
	print("entered")
	spell = spell_instancer.instance()
	pr.add_child(spell)
	spell.setup("Shreder")

func exit_state(new_states):
	if spell:
		spell.queue_free()
	pass

func _during_state(delta):
	pass
