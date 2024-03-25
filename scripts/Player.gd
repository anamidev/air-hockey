extends CharacterBody2D


const VELOCITY_MOD := 15.0


var is_hovered = false
var is_dragged = false
var last_mouse_position = Vector2(0,0)


func _on_mouse_entered():
	is_hovered = true


func _on_mouse_exited():
	is_hovered = false


func _on_input_event(viewport, event, shape_idx):
	if is_hovered and Input.is_action_pressed("mouse_left_click"):
		is_dragged = true


func _process(delta):
	if is_dragged:
		last_mouse_position = get_local_mouse_position()
		
	if not Input.is_action_pressed("mouse_left_click"):
		is_dragged = false
		
	velocity = last_mouse_position * VELOCITY_MOD
	move_and_slide()
	
