extends Node

var player1score = 0
var player2score = 0

@export var ball_scene: PackedScene
@onready var viewportSize = get_viewport().size

# Called when the node enters the scene tree for the first time.
func _ready():
	spawn_ball()
	
func spawn_ball():
	var ball = ball_scene.instantiate()
	ball.position = Vector2(viewportSize.x / 2, viewportSize.y / 2)
	add_child(ball)

func _on_goal_goal():
	player1score += 1
	$HUD.update_player2_score(player1score)
	spawn_ball()

func _on_goal_2_goal():
	player2score += 1
	$HUD.update_player1_score(player2score)
	spawn_ball()
