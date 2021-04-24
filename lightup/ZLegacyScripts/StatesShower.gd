extends RichTextLabel

onready var sm=get_parent().get_node("StateMachine")
var active:=true

func _process(delta):
	if active:
		var txt=""
		for x in sm.active_states:
			txt+=x
			txt+="\n"
		text=txt
