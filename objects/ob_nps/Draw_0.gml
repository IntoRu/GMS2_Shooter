

draw_self()

var posY = ystart + sin(get_timer()/500000)*5 // маркер как бы плавает, анимированный

// рисуем маркер когда мы с ним ещё не говорили или когда выполнили задание
if(talked1 = false  or (talked2 = false and goal1 = true)){
	draw_sprite(Sp_dialogMark,-1,x,posY-50)
}







