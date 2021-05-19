extends RichTextLabel

onready var sm=get_parent().get_node("MoveMachine")

func _process(delta):
	var txt="states: \n"
	for x in sm.active_states:
		txt+=x+", "
	text=txt
