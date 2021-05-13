extends Area2D

func _on_HitBox_area_entered(area):
	pass

func _on_HitBox_body_entered(body):
	if body.has_method("get_hit"):
		body.get_hit()
		print(body.name, "hi")
