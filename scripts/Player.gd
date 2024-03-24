extends CharacterBody2D


var is_hovered = false
var is_dragged = false


func _process(delta):
	if is_dragged:
		global_position = get_global_mouse_position()


func _on_mouse_entered():
	is_hovered = true


func _on_mouse_exited():
	is_hovered = false


func _on_input_event(viewport, event, shape_idx):
	if is_hovered and Input.is_action_pressed("mouse_left_click"):
		is_dragged = true
	else:
		is_dragged = false

