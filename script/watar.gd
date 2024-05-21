extends Node2D

var pointer: bool = true
var attrForce: float = 500
var _click_pos: Array = []

func _draw() -> void:
	draw_colored_polygon($map/CollisionPolygon2D.polygon, Color.BLACK)
	for point in _click_pos:
		draw_circle(point, 15,Color.VIOLET)
		
func _input(event: InputEvent) -> void:
	if not Input.is_mouse_button_pressed(MOUSE_BUTTON_LEFT):
		return

	queue_redraw()
	_click_pos.append(get_global_mouse_position())




 
