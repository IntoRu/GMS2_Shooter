timeline_position++ // переключаем тайм лайн

global.symbols = 0 // для побуквенного текста
if(timeline_position = timeline_size(timeline_index)){// если позиция тамлайна равна рамеру таймлайна т е таймлайн дошёл до конца
	instance_destroy()// удаляем обьект диалога
}





