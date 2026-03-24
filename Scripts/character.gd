class_name Character
extends Node2D

signal on_take_damage(health : int)
signal on_heal(health : int)

@export var is_player : bool

@export var max_health : int
@export var current_health : int

@export var combat_actions : Array[CombatAction]

# Gradually transition to this scale
var target_scale : float = 1.0

@onready var audio : AudioStreamPlayer2D = $AudioStreamPlayer2D
var take_damage_sfx : AudioStream = preload("res://Audio/take_damage.wav")
var heal_sfx : AudioStream = preload("res://Audio/heal.wav")

func begin_turn():
	target_scale = 1.1
	
	if (is_player):
		print("Player turn has begun")
	else:
		print("AI turn has begun")


func end_turn():
	target_scale = 0.9

func _process(delta : float):
	pass

func take_damage(amount : int):
	pass

func heal(amount : int):
	pass

func cast_combat_action(action, opponent : Character):
	pass

func _play_audio(stream : AudioStream):
	pass
