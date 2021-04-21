extends State #CastSpell

onready var spell_instancer=preload("res://ScenesNScripts/Spell/Spell.tscn")
var spell=null

func _ready():
	conflicting_states=[]
	removing_states=["Idle"]
	necessary_states=[]

func get_transition():
	return null

func enter_state(old_states):
	print("entered")
	spell = spell_instancer.instance()
	if spell:
		pr.add_child(spell)
		spell.setup("Shreder")
	pass

func exit_state(new_states):
	pass

func _during_state(delta):
	pass
