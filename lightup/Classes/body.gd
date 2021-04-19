extends KinematicBody2D
class_name Body

var velos:=Vector2.ZERO

func add_gravity():
	velos.y+=Globals.gravity # it's 20

func add_velocity(add:Vector2):
	velos+=add
