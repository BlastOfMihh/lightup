extends CenterContainer


# onready var ic=get_parent().ic
onready var ic = get_parent().get_parent().get_parent()
onready var item_texture_rect=$ItemTextureRect
# onready var inventory = preload("res://Resources/inventory.tres")
var inventory = null


func _ready():
	yield(ic, "ready")
	# print(ic.inv)
	inventory=ic.inv


func display_item(item):
	if item is Item:
		item_texture_rect.texture=item.texture
	else:
		item_texture_rect.texture=load("res://Assets/Icons/empty_inventory_slot.png")

func get_drag_data(_position):
	var item_index=get_index()
	var item=inventory.remove_item(item_index)
	if item is Item:
		var data = {}
		data.item = item
		data.item_index = item_index
		# return data
		var drag_preview = TextureRect.new()
		drag_preview.texture = item.texture
		set_drag_preview(drag_preview)
		return data

func can_drop_data(_position, data):
	return data is Dictionary and data.has("item")

func drop_data(_position, data):
	var my_item_index = get_index()
	var my_item = inventory.items[my_item_index]
	# print(my_item.name)
	inventory.swap_items(my_item_index, data.item_index)
	inventory.set_item(my_item_index, data.item)
