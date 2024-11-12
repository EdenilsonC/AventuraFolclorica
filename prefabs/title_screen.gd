extends Control

@onready var start_btn: Button = $MarginContainer/HBoxContainer/VBoxContainer/start_btn

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	start_btn.grab_focus()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_start_btn_pressed() -> void:
	get_tree().change_scene_to_file("res://Management/gamelevel.tscn")


func _on_credits_btn_pressed() -> void:
	pass # Replace with function body.


func _on_quit_btn_pressed() -> void:
	get_tree().quit()
