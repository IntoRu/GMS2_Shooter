


if(enem > 0){ // если враги есть
	
	
	instance_create_depth(irandom_range(600,900),100,0,Ob_enemy) // спавним врагов с веху комнаты
	enem--
	instance_create_depth(irandom_range(600,900),420,0,Ob_enemy) // спавним врагов с низу комнаты
	enem--
	instance_create_depth(900,irandom_range(90,430),0,Ob_enemy) // спавним врагов с боку комнаты
	enem--
	alarm[0] = irandom_range(60, 120) // зацикливаем будильник
}


