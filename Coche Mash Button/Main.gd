extends Node2D


func _on_FinishLine_body_entered(_body):
	get_tree().change_scene("res://Menu.tscn")


func _on_ScoreTimer_timeout():
	Global.score += 0.01
	$CenterContainer/Label.text = "Tiempo: " + str(Global.score)
