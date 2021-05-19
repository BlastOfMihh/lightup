extends Node
class_name StateMachine

var states={}
var active_states=[]

func add_state(x):
	states[x.state_name]=x
	x.pr=get_parent()



func _ready():
	# yield(get_tree().root, "ready")
	# yield(get_parent(), "ready")
	# yield(self, "ready")
#func setup():
	for x in get_children():
		add_state(x)
	for x in get_children():
		if x.active:
			request_state(x.state_name)

func _process(delta):
	# print(active_states)
	# yield(get_parent(), "ready")
	for s in active_states:
		var cur=states[s]
		var newst=cur.get_transition()
		
		if newst==null:
			cur._during_state(delta)
		else:
			if newst is String:
				if newst.begins_with("exit") : 
					newst.erase(0,"exit".length())
					_deactivate(s)
				request_state(newst)
			elif newst is Array:
				for st in newst:
					if st=="exit":
						_deactivate(s)
					else: request_state(st)
	pass

func _deactivate(s:String):
	active_states.erase(s)
	var cur=states[s]
	cur.active=false
	cur.exit_state(active_states)

func _activate(st:String):
	var cur=states[st]
	cur.enter_state(active_states)
	if !active_states.has(st):
		active_states.push_back(st)
	cur.active=true

func request_state(st:String)->bool:
	var cur=states[st]
	if !cur.has_dependecies():
		return false
	if cur.is_in_conflict():
		return false

	for s in cur.removing_states:
		if active_states.has(s):
			_deactivate(s)
	_activate(st)
	return cur

func request_exit_state(st:String)->bool:
	_deactivate(st)
	return true
#
func is_active(st:String):
	return active_states.has(st)
