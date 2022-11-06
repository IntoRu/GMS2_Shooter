// эффект обесвечивания

grayInt = 0 // для плввного обесвечивания
graySpeed = 0.002 // скорость обесвечивания

// создание самого эффекта
_fx_tint = fx_create("_filter_greyscale");
fx_set_parameter(_fx_tint, "g_Intensity", grayInt);
layer_set_fx("EffectGray", _fx_tint);

//------------------------------------

// эффект метеорита
meteorNum = 0
meteorSpeed = 0.3 // скорость набора и затухания
meteorStart = -1
randomize()
meteorRange = 0 // переожичность вероятности метеоритов
alarm[0] = 600 // частота проверки на рандом метеоритов

_fx_tint1 = fx_create("_effect_windblown_particles");
fx_set_parameter(_fx_tint1, "param_num_particles", meteorNum);
fx_set_parameter(_fx_tint1, "param_sprite", Sp_effect)
layer_set_fx("EffectMeteor", _fx_tint1);

// ----------------------------------------

// эффект босса

param1 = 0 // 0.062
param2 = 0 // 0.062
param3 = 0 // 0
param4 = 0 // 15 и увеличивается до 80


_fx_tint2 = fx_create("_filter_heathaze");
fx_set_parameter(_fx_tint2, "g_Distort1Speed", param1);
fx_set_parameter(_fx_tint2, "g_Distort2Speed", param2)
fx_set_parameter(_fx_tint2, "g_Distort1Amount", param3)
fx_set_parameter(_fx_tint2, "g_Distort2Amount", param4)
layer_set_fx("EffectBoss", _fx_tint2);

