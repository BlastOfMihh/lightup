extends State
class_name Buff

onready var annoucer=preload("res://ScenesNScripts/Achievements/AchievementAnnoucement.tscn")

export(Texture) var icon_image
export var buff_display="HUD/BuffDisplay"
export(bool) var annouce=false
export(String) var text="\nWhy u do this?"

var icon=null

func _ready():
	yield(get_parent(), "ready")
	buff_display=pr.get_node(buff_display)

	conflicting_states=[]
	removing_states=[]
	necessary_states=[]

func get_transition():
	return null

##begin copy
func condition()->bool:
	return false

func enter_state2(old_states):
	pass

func exit_state2(new_states):
	pass

func _during_state(delta):
	pass

## end copy

func exit_state(new_states):
	icon.queue_free()
	exit_state2(new_states)
func enter_state(old_states):
	#yield(get_parent(), "ready")
	if annouce:
		var x=annoucer.instance()
		x.text=state_name+": "+text
		x.texture=icon_image
		pr.hud.add_child(x)
		
	icon=TextureRect.new()
	icon.texture=icon_image
	buff_display.add_child(icon)
	enter_state2(old_states)
