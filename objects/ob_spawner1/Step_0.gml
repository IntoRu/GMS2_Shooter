/// @description Insert description here
// You can write your code in this editor

if(enemDead = 0){ // открываем дверь как все враги убиты
	audio_stop_sound(boss) // останавливаем звук зомби
	if(sound = 0){
			audio_play_sound(a_door,1,false) // проигрываем звук 
			sound = 1 // что бы звук больше не повторялся
		}
	instance_destroy(Ob_door1)
	Ob_nps.goal1 = true
}




