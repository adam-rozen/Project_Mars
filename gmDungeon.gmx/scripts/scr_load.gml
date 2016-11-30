ini_open(argument0);
obj_player.x = ini_read_real("Player Values", "x", 0);
obj_player.y = ini_read_real("Player Values", "y", 0);
global.toughness = ini_read_real("Player Values", "floor", 1);
global.class = ini_read_string("Player Values", "class", "None");
//obj_player
ini_close();
