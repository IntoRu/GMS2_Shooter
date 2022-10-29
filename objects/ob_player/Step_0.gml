
	//движение
 left = keyboard_check(vk_left);
 right = keyboard_check(vk_right);
 up = keyboard_check(vk_up);
 down = keyboard_check(vk_down);
 
 hspd = right - left;
 vspd = down - up;

if(!instance_exists(Ob_dialog)){// отключаем движение при диалоге
if (hspd != 0 || vspd != 0)
{
     
     dir = point_direction(0, 0, hspd, vspd);
     xadd = lengthdir_x(spd, dir);
     yadd = lengthdir_y(spd, dir);
	
	// столкновение со стенами
	
	//если на наших координатах нет стены то мы двигаемся
	if (!place_meeting(x+xadd,y,Ob_obhod)){
	   x = x + xadd;
	   
	}
	//но он до конца не доходит
	else{
	while(!place_meeting(x+sign(xadd),y,Ob_obhod)){
		x = x + sign(xadd);// доводим обьект до стены что бы не было пробелов
	}
	}
	// тоже но по оси y
	if (!place_meeting(x,y+yadd,Ob_obhod)){
	   y = y + yadd;
	   
	}
	else{
	while(!place_meeting(x,y+sign(yadd),Ob_obhod)){
		y = y + sign(yadd);
	}
	}  
}

// отзеркаливаем спрайт при движении
if(hspd!=0){
	image_xscale = hspd
}

// смена анимации при движении
if(left or right or down or up){
	sprite_index = Sp_player_run
}
else{
 sprite_index = Sp_player
}
}
else{
	sprite_index = Sp_player// ставим спрайт при диалоге
}
//-------------------------------------------------------------------


// после первого диалога выдаём оружие и открываем дверь
if(!instance_exists(Ob_dialog) and Ob_nps.talked1 = true ){
		weapon = true // разрешаем выдачу ствола т е активируем квест
	
		if(sound = 0){
			audio_play_sound(a_gun,1,false) // проигрываем звук 
			sound = 1 // что бы звук больше не повторялся
		}

		
		
		if(sound1 = 0){
			alarm[1] = 90 // открываем первую дверь и проигрываем ее звук
			sound1 = 1 // что бы звук больше не повторялся
		}
	}
	
// после второго диалога открываем дверь
if(!instance_exists(Ob_dialog) and Ob_nps.talked2 = true ){
		if(sound2 = 0){
			alarm[2] = 90 // открываем первую дверь и проигрываем ее звук
			sound2 = 1 // что бы звук больше не повторялся
		}
	}






