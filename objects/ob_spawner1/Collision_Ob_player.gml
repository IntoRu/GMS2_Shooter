
// спавним врагов при заходе  в комнату 1

if(room1 = true and enemyG0 = true){
	room1 = false // что бы спавн стал не активным
	alarm[0] = irandom_range(60, 120)
	instance_create_depth(482,235,0,Ob_door1) // закрываем дверь при входе в комнату
	audio_play_sound(a_door,1,false) // проигрываем звук 
}

if(cs = false){
	Ob_player.spd = 0 // что бы во время кат сцены персоонаж не двигался
	instance_create_layer(0,0,"catScene",Ob_catScene)
	cs = true	
}




	




