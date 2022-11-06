// эффект обесвечивания

grayInt = 0 // для плввного обесвечивания
graySpeed = 0.002 // скорость обесвечивания

// создание самого эффекта
_fx_tint = fx_create("_filter_greyscale");
fx_set_parameter(_fx_tint, "g_Intensity", grayInt);
layer_set_fx("EffectGray", _fx_tint);