extends State


func _ready():
	conflicting_states=[]
	removing_states=[]
	necessary_states=[]

func get_transition():
	return null


var add_v=Vector2.ZERO

func enter_state(old_states):
	# print("SETIP")
	add_v = pr.get_local_mouse_position().normalized()*100
	print(add_v)
	# get_viewport().get_mouse_position()
	pass

func exit_state(new_states):
	pass

func _during_state(delta):
	# pr.rotation = (get_viewport().get_mouse_position()-pr.position).angle()
	# pr.rotation = pr.get_local_mouse_position().angle()
	# pr.velos = (pr.get_local_mouse_position().normalized()*100)#add_v
	pr.velos=add_v
	# pr.apply_velos(delta)

	# pr.rotation += PI/20

		#get_viewport().get_mouse_position()).angle()
