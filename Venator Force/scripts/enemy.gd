extends Node2D

func _ready():
	var squid_texture = preload("res://assets/SquidMonster.png")
	$SquidMonster.texture = squid_texture


# You can add more functions here to handle hostility.
# For example, you might connect an Area2D's signal to detect when the player is nearby,
# and then trigger an attack or change the animation.
