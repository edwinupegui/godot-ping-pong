extends Node2D

var PlayerScore = 0
var EnemyScore = 0

func _process(delta):
	$MarcadorPlayer.text = str(PlayerScore)
	$MarcadorOponente.text = str(EnemyScore)

func _restart_game():
	$Ball.is_moving = false
	$Ball.direction = Vector2.ZERO
	$Ball.position = Vector2(600, 350)
	$Ball.reset_ball()


func _on_ArcoPlayer_body_entered(body):
	if body is Ball:
		EnemyScore += 1
		_restart_game()

func _on_ArcoOponentes_body_entered(body):
	if body is Ball:
		PlayerScore += 1
		_restart_game()
