extends CanvasLayer

func _ready():
	$RestartButton.hide()
	
func update_player1_score(score):
	$Hbox/ScorePlayer1.text = "%s" % score
	
func update_player2_score(score):
	$Hbox/ScorePlayer2.text = "%s" % score
	
func show_winner(text: String):
	$WinMessage.text = text
	$RestartButton.show()
	$RestartButton.grab_focus()

func _on_restart_button_pressed():
	get_tree().change_scene_to_file("res://game.tscn")
