extends Control

func _ready():
    $MainMenu/VBoxContainer/StartButton.grab_focus()
    
func _on_button_pressed():
    get_tree().change_scene_to_file("res://game.tscn")

func _on_quit_button_pressed():
    get_tree().quit()
