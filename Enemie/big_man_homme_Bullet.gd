extends Area2D

var speed: int = 50
var direction: Vector2 = Vector2.RIGHT



func _process(delta):

	position += direction * speed * delta * 0
