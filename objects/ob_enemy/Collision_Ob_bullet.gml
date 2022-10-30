hp -= Ob_gun.attack
ScreenShake(2,10) // тряска экрана при уроне
if(hp<=0){
	audio_play_sound(a_death,1,false) // проигрываем звук смерти
	ScreenShake(10,30) // тряска экрана при смерти
	instance_destroy()
	Ob_spawner1.enemDead -= 1 // считаем убитых врагов
	
	//создаём самопальные частицы при смерти врага
	repeat(6){
		with(instance_create_depth(x,y,0,Ob_particle)){
			sprite_index = Sp_deadParticle
			image_angle = random(360)
			fric = 0.9 // время жизни частиц
		
			motion_add(other.image_angle + random_range(-70,70), random_range(-4,9))
		}
	}
	
	
}






