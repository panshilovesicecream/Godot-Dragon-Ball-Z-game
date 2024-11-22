extends StaticBody2D

func _ready():
    # Create collision shapes for the screen edges
    var left_edge = RectangleShape2D.new()
    left_edge.extents = Vector2(10, 600)  # Assuming screen height is 600
    $CollisionShape2D.shape = left_edge
