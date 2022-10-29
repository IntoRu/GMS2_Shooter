/// @description Insert description here
// You can write your code in this editor

// босс идёт к нам
move_towards_point(Ob_player.x,Ob_player.y,spd)

// босс поворачивается в сторону игрока
if(x > Ob_player.x){
	image_xscale = -1
}
else image_xscale = 1


// ------------------------------
if(!instance_exists(Ob_boss)){ // если босс умер то всех уничтожаем
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
}




