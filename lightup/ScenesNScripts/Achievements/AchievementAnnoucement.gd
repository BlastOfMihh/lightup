extends VBoxContainer

export(String) var text
export(Texture) var texture

onready var message=$Message
onready var texture_rect=$TextureRect



func _ready():
	message.text=text
	texture_rect.texture=texture
	#rect_position=-get_viewport().size/2
	$AnimationPlayer.play("enter")


func _on_AnimationPlayer_animation_finished(anim_name):
	queue_free()
