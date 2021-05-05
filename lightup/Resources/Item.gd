extends Resource
class_name Item

export var name:String
export var texture:Texture

signal item_changed(indexes)

# export (Array, Resource) var items
export (Array, Resource) var items
