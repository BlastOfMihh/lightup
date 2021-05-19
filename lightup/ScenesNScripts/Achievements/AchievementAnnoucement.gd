extends CenterContainer

export(String) var text
export(Texture) var texture

onready var button=$Control/CenterContainer/Button
onready var texture_rect=$Control/TextureRect



func _ready():
	button.text=text
	texture_rect.texture=texture
	#rect_position=-get_viewport().size/2
	$AnimationPlayer.play("enter")
