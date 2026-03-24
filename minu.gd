extends Node2D

@onready var animation_player: AnimationPlayer = $Sprite2D/AnimationPlayer
@onready var timer: Timer = $Sprite2D/Timer

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	#animation_player.play("new_animation_2")
	timer.start()
	animation_player.play("new_animation_3")



func _on_timer_timeout() -> void:
	animation_player.play()
	
var music_bus = AudioServer.get_bus_index("Music")

func _on_texture_button_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/game.tscn")


func _on_texture_button_2_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/about.tscn")


func _on_texture_button_3_pressed() -> void:
		get_tree().change_scene_to_file("res://scenes/obsons.tscn")




func _on_texture_button_4_pressed() -> void:
	AudioServer.set_bus_mute(music_bus, not AudioServer.is_bus_mute(music_bus))
