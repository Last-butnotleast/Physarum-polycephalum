@tool
extends Control

@onready var graph_edit = $GraphEdit

func _ready():
	if Engine.is_editor_hint():
		# Example: Add another node dynamically
		var node = GraphNode.new()
		node.title = "Dynamic Node"

		var label = Label.new()
		label.text = "Node B"
		node.add_child(label)

		graph_edit.add_child(node)
