extends Node

var player1score = 0
var player2score = 0
var winScore = 5

@export var ball_scene: PackedScene

# Called when the node enters the scene tree for the first time.
func _ready():
	spawn_ball()
	
func spawn_ball():
	var ball = ball_scene.instantiate()
	var viewportSize = get_viewport().get_visible_rect().size
	print(viewportSize.x / 2)
	print(viewportSize.y / 2)
	ball.position = Vector2(viewportSize.x / 2, viewportSize.y / 2)
	call_deferred("add_child", ball)

func _on_goal_goal():
	player2score += 1
	
	$HUD.update_player2_score(player2score)
	
	if player2score == winScore :
		$HUD.show_winner("Green wins!")
	else :
		spawn_ball()

func _on_goal_2_goal():
	player1score += 1
	
	$HUD.update_player1_score(player1score)
	
	if player1score == winScore :
		$HUD.show_winner("Red wins!")
	else :
		spawn_ball()
