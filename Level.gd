extends Node2D

func _restart_game():
	$Ball.is_moving = false
	$Ball.direction = Vector2.ZERO
	$Ball.position = Vector2(600, 350)
	$Ball.reset_ball()


func _on_ArcoPlayer_body_entered(body):
	_restart_game()


func _on_ArcoOponentes_area_shape_entered(area_rid, area, area_shape_index, local_shape_index):
	_restart_game()
