/// @description Insert description here
// You can write your code in this editor

if(room2 = true){
	room2 = false
	instance_create_depth(237,470,0,Ob_door2) // закрываем дверь при входе в комнату
	audio_play_sound(a_door,1,false) // проигрываем звук 
	instance_create_depth(520,750,0,Ob_boss)
	audio_play_sound(dirty,1,false) // проигрываем звук 
}




