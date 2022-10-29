


// первый диалог
if(!instance_exists(Ob_dialog) and talked1 = false){
	openDiag(T_d1)// запускаем скрипт диалога где сам диалог создаётся на карте
	talked1 = true // пометили что мы поговорили с ним
}
// второй диалог
if(!instance_exists(Ob_dialog) and talked2 = false and goal1 = true){
	openDiag(T_d2)// запускаем скрипт диалога где сам диалог создаётся на карте
	talked2 = true // пометили что мы поговорили с ним
}



