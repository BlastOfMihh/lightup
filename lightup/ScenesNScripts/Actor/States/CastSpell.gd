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
	if Input.is_action_pressed("spell1"):
		print("entered casting spells")
	spell = spell_instancer.instance()
	# spell.setup("Shreder")
	spell.type= (pr.invs[0].inv.items[0].spells[0])

		#.spells[0]
	pr.add_child(spell)

func exit_state(new_states):
	if spell:
		spell.queue_free()
	pass

func _during_state(delta):
	pass
