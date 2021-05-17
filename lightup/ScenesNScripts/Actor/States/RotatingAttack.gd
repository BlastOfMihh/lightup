extends State


func _ready():
	conflicting_states=[]
	removing_states=["Idle"]
	necessary_states=[]

func get_transition():
	if Input.is_action_just_pressed("change_mode"):
		return "Idle"
	return null

func enter_state(old_states):
	pr.ap.play("move_rooster1")
	pr.sh.toogle_rotate_after_cursor()
	pass

func exit_state(new_states):
	pr.ap.play_backwards("move_rooster1")
	pr.sh.toogle_rotate_after_cursor()
	pass

func _during_state(delta):
	if Input.is_action_just_pressed("attack"):
		pr.sh.attack_range()
