extends State #CastSpell

onready var spell_instancer=preload("res://ScenesNScripts/Spell/Spell.tscn")

var spell=null

func _ready():
	conflicting_states=[]
	removing_states=["Idle"]
	necessary_states=[]

func get_transition():
	if spell:
		if spell.sm.is_active("Finished"):
			return "Idle"
#	if Input.is_action_just_pressed("change_mode"):
#		return "Idle"
	return null

func enter_state(old_states):
	var spell_nr = pr.get_spell_number()
	spell = spell_instancer.instance()
	spell.type= (pr.invs[spell_nr].inv.first_item().spells[spell_nr])
	pr.add_child(spell)

func exit_state(new_states):
	if spell:
		spell.die()
	pass

func _during_state(delta):
	pass
