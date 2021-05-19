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
	var inv_nr = pr.get_spell_number()
	# if Input.is_action_pressed("spell0"):
	# 	inv_nr=0
	spell = spell_instancer.instance()
	spell.type= (pr.invs[inv_nr].inv.first_item().spells[inv_nr])
	pr.add_child(spell)

func exit_state(new_states):
	if spell:
		spell.die()
	pass

func _during_state(delta):
	pass
