extends Node
class_name StateMachine

var states={}
var active_states=[]

func _ready():
	# yield(get_tree().root, "ready")
	yield(self, "ready")
	for x in get_children():
		states[x.state_name]=x
		x.pr=get_parent()
	for x in get_children():
		if x.active:
			request_state(x.state_name)

func _process(delta):
	for s in active_states:
		var st=states[s]
		var newst=st.get_transition()

		if newst=="exit" or st.active==false:
			deactivate(s)
		elif newst!=null:
			request_state(newst)
		else :
			st._during_state(delta)
	pass

func deactivate(s:String):
	active_states.erase(s)
	var cur=states[s]
	cur.active=false
	cur.exit_state(active_states)

func activate(s:String):
	if !active_states.has(s):
		active_states.push_back(s)
	var cur=states[s]
	cur.active=true
	cur.enter_state(active_states)

func request_state(st:String)->bool:
	var cur=states[st]
	if !cur.has_dependecies():
		return false
	if cur.is_in_conflict():
		return false

	for s in cur.removing_states:
		if active_states.has(s):
			deactivate(s)

	# active_states.push_back(st)
	activate(st)
	return true

