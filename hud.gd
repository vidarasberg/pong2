extends CanvasLayer

func _ready():
	$VBox/RestartButton.hide()
	$VBox/QuitButton.hide()
	
func update_player1_score(score):
	$Hbox/ScorePlayer1.text = "%s" % score
	
func update_player2_score(score):
	$Hbox/ScorePlayer2.text = "%s" % score
	
func show_winner(text: String):
	$WinMessage.text = text
	$VBox/RestartButton.show()
	$VBox/QuitButton.show()
	$VBox/RestartButton.grab_focus()

func _on_restart_button_pressed():
	get_tree().change_scene_to_file("res://game.tscn")


func _on_quit_button_pressed():
	get_tree().quit()
