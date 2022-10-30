/// @description Insert description here
// You can write your code in this editor
hp -= Ob_gun.attack

ScreenShake(2,10) // тряска экрана при уроне

if (hp <= 0){
	audio_play_sound(a_death,1,false) // проигрываем звук смерти
	audio_play_sound(a_door,1,false) // проигрываем звук смерти
	
	//instance_destroy(Ob_door2)
	
	//создаём самопальные частицы при смерти врага
	repeat(6){
		with(instance_create_depth(x,y,0,Ob_particle)){
			sprite_index = Sp_deadParticle
			image_angle = random(360)
			fric = 0.9 // время жизни частиц
		
			motion_add(other.image_angle + random_range(-70,70), random_range(-4,9))
		}
	}
		
	instance_destroy()
	instance_destroy(Ob_door2)
	
}	






