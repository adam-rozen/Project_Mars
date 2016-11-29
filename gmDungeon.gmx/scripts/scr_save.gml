ini_open(argument0);
ini_write_real("Player Values", "x", x);
ini_write_real("Player Values", "y", y);
ini_write_real("Player Values", "floor", global.toughness);
ini_write_string("Player Values", "class", global.class);
ini_write_real("Player Values", "turn", turn);
ini_write_real("Player Values","maxHP", maxHP);
ini_write_real("Player Values", "hp", hp);
ini_write_real("Player Values", "maxMana", maxMana);
ini_write_real("Player Values", "mana", mana);
ini_write_real("Player Values", "xp", xp);
ini_write_real("Player Values", "level", level);
ini_write_real("Player Values", "gold", gold);
ini_write_real("Player Values", "move", move);
i = 0;
test = obj_inventory.inv[i];
while(test!=-1)
{
    ini_write_real("Player Inventory", i, inv[i]);
    i++;
    test = obj_inventory.inv[i];
} 
for (a = 0; a <= instance_number(obj_enemy); a++)
{
    ida = instance_find(obj_enemy, a);
    ini_write_real("Enemy Values", string(a) + string(x), ida.x);
    ini_write_real("Enemy Values", "y", y);
}
ini_close();
if (file_exists(argument0))
{
    show_message("Save Complete!");
}
