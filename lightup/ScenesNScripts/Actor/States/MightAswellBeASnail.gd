extends Buff


var timer=Timer.new()

func condition():
	pass

func enter_state2(old_states):
	sm.request_state("Slowness")
	pass

func exit_state2(new_states):
	pass

func _during_state(delta):
	pass


