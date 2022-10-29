// настройка камеры
cam = view_camera[0]
follow = Ob_player
// ставим камеру на середину экрана
view_w_half = camera_get_view_width(cam)*0.5
view_h_half = camera_get_view_height(cam)*0.5
xTo = xstart
yTo = ystart

// настройка тряски
shake_length = 0 // продолжительность тряски
shake_magnitude = 0 //сила тряски
shake_remain = 0 // для сброса
buff = 32 // что бы при тряски камера не заходила за экран







