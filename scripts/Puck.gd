extends RigidBody2D


const MAX_SPEED = 1000

# BUG make puck go through the gates
func _physics_process(delta):
	var collision_info = move_and_collide(linear_velocity * delta)
	if collision_info:
		linear_velocity = linear_velocity.bounce(collision_info.get_normal())

func _process(delta):
	pass
