/// @description Insert description here
// You can write your code in this editor

if(weapon and Ob_spawner1.enemDead>0 and Ob_spawner1.enemyG0 = true){ // если оружие разрешено т е когда квест активирован
	draw_set_color(c_red)
	draw_set_font(F_main2)
	draw_text(30,30,"Осталось врагов: "+string(Ob_spawner1.enemDead))
}



