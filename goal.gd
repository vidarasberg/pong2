extends Area2D

signal goal
@export var color: Color

func _ready():
	$BallDetector/ColorRect.set_color(color)

func _on_body_entered(body):
	if body.is_in_group("balls"):
		body.queue_free()
		goal.emit()
