extends CanvasLayer
	
func update_player1_score(score):
	$Control/ScorePlayer1.text = "%s" % score
	
func update_player2_score(score):
	$Control/ScorePlayer2.text = "%s" % score
