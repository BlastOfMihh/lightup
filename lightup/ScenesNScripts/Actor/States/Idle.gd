extends State
#idle

func _ready():
	conflicting_states=[]
	removing_states=["RotatingAttack", "CastSpell"]
	necessary_states=[]

func get_transition():
	# if Input.is_action_just_pressed("change_mode"):
	# if Input.is_action_just_pressed("spell0"):
	var spell_nr=pr.get_spell_number()
	if spell_nr>=0:
		var first_sword=pr.invs[spell_nr].inv.first_item()
		if first_sword and first_sword.count>0:
			return "CastSpell"
	return null

func enter_state(old_states):
	pass

func exit_state(new_states):
	pass

func _during_state(delta):
	if Input.is_action_just_pressed("retreive"):
		pr.sh.retreive()
	pass
