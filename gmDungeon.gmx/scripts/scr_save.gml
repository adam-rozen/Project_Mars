ini_open(argument0);
ini_write_real("Player Values", "x", x);
ini_write_real("Player Values", "y", y);
ini_write_real("Player Values", "floor", global.toughness);
ini_write_string("Player Values", "class", global.class);
ini_write_real("Player Values", "turn", turn);
ini_write_real
ini_close();
if (file_exists(argument0))
{
    show_message("Save Complete!");
}
