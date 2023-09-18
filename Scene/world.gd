extends Node2D

@onready var heartContainer = $CanvasLayer/healthContainer
@onready var player = $TileMap/Player

# Called when the node enters the scene tree for the first time.
func _ready():
	heartContainer.setMaxHearts(player.maxHealth)
	heartContainer.updateHealth(player.currentHealth)
	player.healthChanged.connect(heartContainer.updateHealth)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
