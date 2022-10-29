
function openDiag(diag){
	d = instance_create_depth(0,0,0,Ob_dialog)
	d.timeline_index = diag
	d.timeline_running = true
	d.timeline_speed = 0 // таймлайн мы будем переключать сами
	d.timeline_position = 1
	global.symbols = 0
}