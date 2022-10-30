
if(!instance_exists(Ob_upShSpeed)){ // что бы не спавнить сразу несколько обрейдов
	if upShSpeed = 1 instance_create_depth(x,y,0,Ob_upShSpeed)
}