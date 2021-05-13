


##
##


		extends MBody

		var dir=Vector2.ZERO
		var speed=200

		onready var sh=$SwordHandler
		onready var sr=$SwordRooster
		onready var sm=$StateMachine
		onready var ap=$AnimationPlayer
		onready var sp=$Visuals/AnimatedSprite
		onready var invs=[$UI/InventoryContainer, $UI/InventoryContainer2]

		func _ready():
			Globals.actor=self

		func update_dir():
			dir.x = -Input.get_action_strength("move_left")+Input.get_action_strength("move_right")
			dir.y = Input.get_action_strength("move_down")-Input.get_action_strength("move_up")

		func update_velos(delta):
			velos=dir*speed

		func _physics_process(delta):
			# if Input.is_key_pressed(KEY_T):
			# 	sm.request_state("Dash")
			update_dir()
			# update_velos(delta)
			apply_velos(delta)

		func hurt():
			sm.request_state("Stagger")
			# print("hurrrrt")

		func get_spell_number()->int:
			for i in range(0,10):
				var ss="spell"+str(i)
				# ss.push_back('0')
				if Input.is_action_pressed(ss):
					return i
			return -1
		# pass
