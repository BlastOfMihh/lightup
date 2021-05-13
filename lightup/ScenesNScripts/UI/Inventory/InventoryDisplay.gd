extends GridContainer

onready var ic=get_parent().get_parent()
# onready var inventory = preload("res://Resources/inventory.tres")
var inventory

# onready var inventory = get_parent().get_parent().inv

func _ready():
	yield(ic, "ready")
	inventory=ic.inv

	inventory.connect("items_changed", self, "_on_items_changed")
	update_inventory_display()

func update_inventory_slot_display(item_index):
	var inv_slot_display=get_child(item_index)
	var item=inventory.items[item_index]
	inv_slot_display.display_item(item)

func update_inventory_display():
	for i in range(0,inventory.items.size()):
		update_inventory_slot_display(i)


func _on_items_changed(indexes):
	for item_index in indexes:
		update_inventory_slot_display(item_index)
