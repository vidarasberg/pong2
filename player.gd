extends CharacterBody2D

@export var move_right := "right"
@export var move_left := "left"
@export var move_down := "down"
@export var move_up := "up"
@export var color: Color

var speed = 500
var gravity = 0
# This represents the player's inertia.
var push_force = 80.0
var rotation_speed = 2

func _ready():
	$ColorRect.set_color(color)

func get_input():
	var input_direction = Input.get_vector(move_left, move_right, move_up, move_down)
	velocity = input_direction * speed

func _physics_process(delta):
	rotation += rotation_speed * delta
	velocity.y += gravity * delta
	get_input()
	move_and_slide()
	for i in get_slide_collision_count():
		var c = get_slide_collision(i)
		if c.get_collider() is RigidBody2D:
			c.get_collider().apply_central_impulse(-c.get_normal() * push_force)

	#move_and_collide(velocity)

