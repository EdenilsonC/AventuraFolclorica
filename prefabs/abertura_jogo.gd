extends Area2D

func _on_body_entered(body: Node) -> void:
	Dialogic.start('abertura')
	get_viewport().set_input_as_handled()
	queue_free()
