class_name CombatActionButton
extends Button

@export var combat_action : CombatAction

func set_combat_action(ca : CombatAction):
	self.combat_action = ca
	text = ca.display_name
	
