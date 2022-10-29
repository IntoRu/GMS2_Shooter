// ограничиваем полёт пули курсором

if (point_distance(x,y,mouse_x,mouse_y)<10){
	instance_destroy()
}