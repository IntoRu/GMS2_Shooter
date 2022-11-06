// затухание
if (Ob_spawner1.enemDead > 0 and Ob_spawner1.enemyG0 == true){
	if(grayInt < 1){
		grayInt += graySpeed
		fx_set_parameter(_fx_tint, "g_Intensity", grayInt);
	} 
}

// обратно возвращаемя к цвету
else if (Ob_spawner1.enemDead == 0) {
	if(grayInt > 0){
		grayInt -= graySpeed
		fx_set_parameter(_fx_tint, "g_Intensity", grayInt);
	}
}