// стреляем
if(weapon = true and ping = 0 and !instance_exists(Ob_dialog)){ // если оружие разрешено и разрешено стрелять и нет диалога
	audio_play_sound(a_bullet,1,false) // проигрываем звук выстрелов
	//ScreenShake(2,10) // тряска экрана
	instance_create_depth(x+lengthdir_x(30,gunAngle),y+lengthdir_y(30,gunAngle),1,Ob_bullet) // спавним пулю прямо из дула
	//instance_create_depth(x+lengthdir_x(30,gunAngle),y+lengthdir_y(30,gunAngle),1,Ob_bullet) // спавним пулю для дробовика
	//instance_create_depth(x+lengthdir_x(30,gunAngle),y+lengthdir_y(30,gunAngle),1,Ob_bullet) // спавним пулю для дробовика
	ping = 1 // запрещаем стрелять
	alarm[0] = 10// темп стрельбы 10 мс
	
	
	//создаём самопальные частицы дульного пламени
	repeat(6){
	with(instance_create_depth(x+lengthdir_x(35,gunAngle),y+lengthdir_y(35,gunAngle),1,Ob_particle)){
		sprite_index = Sp_dullFaer
		image_angle = random(360)
		fric = 0.5 // время жизни частиц
		
		motion_add(other.image_angle + random_range(-70,70), random_range(-4,9))
	}
}


}



