/// @description Insert description here
// You can write your code in this editor
//создаём самопальные частицы при попадании по врагу

	repeat(6){
		with(instance_create_depth(x,y,1,Ob_particle)){
			sprite_index = Sp_damage
			image_angle = random(360)
			fric = 0.9 // время жизни частиц
		
			motion_add(other.image_angle + random_range(-70,70), random_range(-4,9))
		}
	}


instance_destroy()




