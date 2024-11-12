extends Area2D

func _on_body_entered(body: Node2D) -> void:
	Dialogic.start('cena_iara')
	get_viewport().set_input_as_handled()
	queue_free()
