extends State
class_name Buff

export(Texture) var icon_image
onready var buff_display

var icon

func _ready():
	yield(get_parent(), "ready")
	buff_display=pr.get_node("UI/BuffDisplay")
	conflicting_states=[]
	removing_states=[]
	necessary_states=[]

func get_transition():
	return null

func enter_state(old_states):
	yield(get_parent(), "ready")
	icon=TextureRect.new()
	icon.texture=icon_image
	buff_display.add_child(icon)
	enter_state2(old_states)

func enter_state2(old_states):
	pass

func exit_state(new_states):
	icon.queue_free()
	exit_state2(new_states)

func exit_state2(new_states):
	pass

func _during_state(delta):
	pass
