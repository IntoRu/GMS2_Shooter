// эффект обесвечивания

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
//----------------------------------

// метеориты

if(meteorRange == 6){ // проверяем рандомно будут ли метеоритные осадки
	meteorStart = true
}

if(meteorNum <80 and meteorStart == true){ // плавно усиливается
	meteorNum += meteorSpeed
	fx_set_parameter(_fx_tint1, "param_num_particles", meteorNum);
	if(meteorNum >= 80){
		meteorStart = false
	}
}

if (meteorStart = false){// плавно заканчивается
	if(meteorNum > 0){
		meteorNum -= meteorSpeed
		fx_set_parameter(_fx_tint1, "param_num_particles", meteorNum);
		if(meteorNum <= 0){
			meteorStart = -1
		}
	}
}

// ----------------------------------------

// эффект босса

if(instance_exists(Ob_boss)){
	param1 = 0.062
	param2 = 0.062
	param4 = 0
	fx_set_parameter(_fx_tint2, "g_Distort1Speed", param1);
	fx_set_parameter(_fx_tint2, "g_Distort2Speed", param2)
	fx_set_parameter(_fx_tint2, "g_Distort2Amount", param4)


	// размываем окружение в зависимости от жизней босса
	
	if(Ob_boss.hp < 175 and Ob_boss.hp >=150){
		param3 = 12
		param4 = 12
		fx_set_parameter(_fx_tint2, "g_Distort1Amount", param3)
		fx_set_parameter(_fx_tint2, "g_Distort2Amount", param4)
	}
	if(Ob_boss.hp < 150 and Ob_boss.hp >=100){
		param3 = 25
		param4 = 25
		fx_set_parameter(_fx_tint2, "g_Distort1Amount", param3)
		fx_set_parameter(_fx_tint2, "g_Distort2Amount", param4)
	}
	if(Ob_boss.hp < 100 and Ob_boss.hp >=75){
		param3 = 37
		param4 = 37
		fx_set_parameter(_fx_tint2, "g_Distort1Amount", param3)
		fx_set_parameter(_fx_tint2, "g_Distort2Amount", param4)
	}
	if(Ob_boss.hp < 75 and Ob_boss.hp >=50){
		param3 = 50
		param4 = 50
		fx_set_parameter(_fx_tint2, "g_Distort1Amount", param3)
		fx_set_parameter(_fx_tint2, "g_Distort2Amount", param4)
	}
	if(Ob_boss.hp < 50 and Ob_boss.hp >=25){
		param3 = 62
		param4 = 62
		fx_set_parameter(_fx_tint2, "g_Distort1Amount", param3)
		fx_set_parameter(_fx_tint2, "g_Distort2Amount", param4)
	}
	if(Ob_boss.hp < 25 and Ob_boss.hp >0){
		param3 = 75
		param4 = 75
		fx_set_parameter(_fx_tint2, "g_Distort1Amount", param3)
		fx_set_parameter(_fx_tint2, "g_Distort2Amount", param4)
	}
}
else{
		param1 = 0
		param2 = 0
		param3 = 0
		param4 = 0
		fx_set_parameter(_fx_tint2, "g_Distort1Speed", param1);
		fx_set_parameter(_fx_tint2, "g_Distort2Speed", param2)
		fx_set_parameter(_fx_tint2, "g_Distort1Amount", param3)
		fx_set_parameter(_fx_tint2, "g_Distort2Amount", param4)
}

