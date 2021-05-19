extends Buff


onready var timer=$Timer

var yes:=false

func _on_Timer_timeout():
	yes=true
	pass # Replace with function body.


func _ready():
	pass

func condition():
	if !sm.is_active("Stand"):
		timer.set_wait_time(timer.wait_time)
		timer.start()
		timer.paused=true
	else: 
		timer.paused=false
	return yes

	
func enter_state2(old_states):
	sm.request_state("Slowness")
	pass

func exit_state2(new_states):
	pass

func _during_state(delta):
	pass


