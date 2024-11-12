extends Area2D



func _on_body_entered(body: Node) -> void:
	# Verifica se o diálogo já está ativo para evitar que seja chamado novamente
	if Dialogic.current_timeline != null:
		return

	# Verifica se o corpo que entrou é o jogador (substitua "Player" pelo nome exato do nó do jogador)
	if body.name == "Player":
		# Inicia o diálogo "abertura" ao encostar no objeto
		Dialogic.start("abertura")


func _on_area_entered(area: Area2D) -> void:
	pass # Replace with function body.


func _on_area_exited(area: Area2D) -> void:
	pass # Replace with function body.
