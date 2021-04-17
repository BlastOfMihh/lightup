extends Node

onready var	rooster = get_parent().get_node("SwordRooster")

func _ready():
	rooster.setup(get_child_count())
	# yield(get_tree().root, "ready")
	var i=0
	for swrd in get_children():
		swrd.setup(rooster.get_child(i).point)
		i+=1

var ind=0

func _process(delta):
	if Input.is_action_just_pressed("attack_range") and ind<get_child_count():
		var cur=get_child(ind)
		ind+=1
		cur.sm.states["FollowRooster"].deactivate()
		cur.sm.states["FollowCursor"].activate()
	if Input.is_action_just_pressed("retreive"):
		for i in range(0,ind):
			var cur=get_child(i)
			cur.sm.states["FollowRooster"].activate()
			cur.sm.states["FollowCursor"].deactivate()
		ind=0
