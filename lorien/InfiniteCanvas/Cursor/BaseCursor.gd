@icon("res://Assets/Icons/cursor_icon.png")
class_name BaseCursor
extends Sprite2D

# -------------------------------------------------------------------------------------------------
var _brush_size: int
var _pressure := 1.0

@onready var _camera: Camera2D = get_viewport().get_node("Camera2D")

# -------------------------------------------------------------------------------------------------
func _input(event):
	if event is InputEventMouseMotion:
		update_position()

# -------------------------------------------------------------------------------------------------
func update_position():
	global_position = _camera.get_global_mouse_position()

# -------------------------------------------------------------------------------------------------
func set_pressure(pressure: float) -> void:
	_pressure = pressure

# -------------------------------------------------------------------------------------------------
func change_size(value: int) -> void:
	_brush_size = value

# -------------------------------------------------------------------------------------------------
func _on_canvas_position_changed(pos: Vector2) -> void:
	update_position()

# -------------------------------------------------------------------------------------------------
func _on_zoom_changed(value: float) -> void:
	pass
