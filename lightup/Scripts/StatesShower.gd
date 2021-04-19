extends RichTextLabel

onready var sm=get_parent().get_node("StateMachine")

func _process(delta):
	var txt=""
	for x in sm.active_states:
		txt+=x
		txt+="\n"
	text=txt
