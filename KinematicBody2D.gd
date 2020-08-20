extends KinematicBody2D

var velocity = Vector2.ZERO
var spd = 10



func _process(delta):
	
	var key_w = Input.is_action_pressed("key_w")
	var key_a = Input.is_action_pressed("key_a")
	var key_s = Input.is_action_pressed("key_s")
	var key_d = Input.is_action_pressed("key_d")
	
	velocity = Vector2.ZERO
	
	if key_w:
		velocity.y -= 1
		
	if key_a:
		velocity.x -= 1
		
	if key_s:
		velocity.y += 1
		
	if key_d:
		velocity.x += 1
		
	velocity = velocity.normalized() * spd * 10
	velocity = move_and_slide(velocity)
