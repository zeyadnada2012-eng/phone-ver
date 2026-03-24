extends Node2D

@onready var animation_player: AnimationPlayer = $TileMap/AnimationPlayer

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	animation_player.play("new_animation")


func _on_texture_button_pressed() -> void:
	get_tree().change_scene_to_file("res://minu.tscn")
