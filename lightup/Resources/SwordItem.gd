extends Resource
class_name SwordItem

export var name:String
export var texture:Texture

signal item_changed(indexes)

# export (Array, Resource) var items
export (Array, Resource) var items
