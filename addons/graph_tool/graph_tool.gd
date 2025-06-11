@tool
extends EditorPlugin

var graph_dock

func _enter_tree():
	graph_dock = preload("res://addons/graph_tool/graph_dock.tscn").instantiate()
	add_control_to_dock(DOCK_SLOT_RIGHT_UL, graph_dock)
	graph_dock.name = "GraphTool"

func _exit_tree():
	remove_control_from_docks(graph_dock)
	graph_dock.free()
