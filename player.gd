extends CharacterBody2D

var speed = 350
var gravity = 0
# This represents the player's inertia.
var push_force = 80.0


func get_input():
	var input_direction = Input.get_vector("left", "right", "up", "down")
	velocity = input_direction * speed

func _physics_process(delta):
	velocity.y += gravity * delta
	get_input()
	move_and_slide()
	for i in get_slide_collision_count():
		var c = get_slide_collision(i)
		if c.get_collider() is RigidBody2D:
			c.get_collider().apply_central_impulse(-c.get_normal() * push_force)

	#move_and_collide(velocity)

