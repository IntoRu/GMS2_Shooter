if(!instance_exists(Ob_upShSpeed)){ // что бы не спавнить сразу несколько обрейдов
	
	if upShSpeed = 1{
		
		if(image_xscale == -1){ // что бы обгрейд появлялся с перехи мёртвых
			instance_create_depth(x-100,y,0,Ob_upShSpeed)
		}
		else{
			instance_create_depth(x+100,y,0,Ob_upShSpeed)
		}
	} 
}