extends RigidBody2D

# Initial impulse to start the ball's motion
func _ready():
    randomize()
    # Apply an initial random impulse to the ball
    apply_impulse(Vector2(randf() * 200 - 100, -300))

# Smooth rotation based on velocity
func _physics_process(delta):
    # Rotate the ball based on its velocity
    if linear_velocity.length() > 0:
        rotation += linear_velocity.length() * 0.01 * delta
