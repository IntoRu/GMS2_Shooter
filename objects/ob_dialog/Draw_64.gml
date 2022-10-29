draw_set_font(F_main) // устанавливаем свой шрифт где есть русский

draw_sprite(Sp_textBox,-1,187,394)
draw_sprite(global.diagAvatar,-1,198,412)
draw_set_color(c_red)
draw_text(276,414,global.diagNPC)
draw_set_color(c_black)
draw_text_ext(276,438,string_copy(global.diagFrase,1,global.symbols), 20, 400) // выводим побукыенно фразу
// так же с переносом 20 - расстояние между строк, 400 - длина строки






