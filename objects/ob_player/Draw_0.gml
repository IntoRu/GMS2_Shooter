/// @description Insert description here
// You can write your code in this editor

gunAngle = point_direction(x,y,mouse_x,mouse_y)

draw_self()

if(weapon = true){ // если ствол разрешён т е квест взят
	if(mouse_check_button(mb_left)){ //  если мы сиреляем
		// рисуем подвижный ствол
		draw_sprite_ext(Sp_gunFaer,-1,x,y,1,sign(mouse_x),gunAngle,c_white,1)
	}
	else{
	// рисуем неподвижный ствол
		draw_sprite_ext(Sp_gun,-1,x,y,1,sign(mouse_x-x),gunAngle,c_white,1)
	}
}




