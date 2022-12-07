extends CanvasLayer

func _ready():
	$CenterContainer/Label.text = "¡Has tardado " + str(Global.score) + " segundos!"


func _on_Button_pressed():
	get_tree().change_scene("res://Main.tscn")


func _on_Button2_pressed():
	get_tree().quit()
