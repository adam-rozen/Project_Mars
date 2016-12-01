ini_open("save.dat");
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
ini_write_real("Player Values", "seed", random_get_seed());
i = 0;
test = obj_inventory.inv[i];
while(test!=-1)
{
    ini_write_real("Player Inventory", i, test);
    i++;
    test = obj_inventory.inv[i];
} 
for (a = 0; a <= instance_number(obj_enemy); a++)
{
    ida = instance_find(obj_enemy, a);
    ini_write_real("Enemy Values", string(a) + "x", ida.x);
    ini_write_real("Enemy Values", string(a) + "y", ida.y);
    ini_write_real("Enemy Values", string(a) + "hp", ida.hp);
    ini_write_string("Enemy Values", string(a) + "name", ida.name);
    ini_write_real("Enemy Values", string(a) + "gold", ida.gold);
    ini_write_real("Enemy Values", string(a) + "moved", ida.moved);
    ini_write_real("Enemy Values", string(a) + "attack", ida.attack);
    ini_write_real("Enemy Values", string(a) + "maxHP", ida.maxHP);    
    
}
for (i = 0; i <= dgen.world_w + 1; i += .5)
{
    for (j = 0; j <= dgen.world_h + 1; j += .5)
    {
        _x = i * wsiz2 - wsiz1;
        _y = j * wsiz2 - wsiz1;
        if (place_meeting(_x, _y, obj_floor))
        {
            ini_write_string("Dungeon Properties", string(_x) + " " + string(_y), "floor");
        }
        else if (place_meeting(_x, _y, obj_wall))
        {
            ini_write_string("Dungeon Properties", string(_x) + " " + string(_y), "wall");
        }
        else if (place_meeting(_x, _y, obj_gold))
        {
            ini_write_string("Dungeon Properties", string(_x) + " " + string(_y), "gold");
        }
        else if (place_meeting(_x, _y, obj_scroll))
        {
            ini_write_string("Dungeon Properties", string(_x) + " " + string(_y), "scroll");
        }
        else if (place_meeting(_x, _y, obj_spellbook))
        {
            ini_write_string("Dungeon Properties", string(_x) + " " + string(_y), "spellbook");
        }
        else if (place_meeting(_x, _y, obj_armor))
        {
            ini_write_string("Dungeon Properties", string(_x) + " " + string(_y), "gold");
        }
        else if (place_meeting(_x, _y, obj_down))
        {
            ini_write_string("Dungeon Properties", string(_x) + " " + string(_y), "down");
        }
        else if (place_meeting(_x, _y, obj_up))
        {
            ini_write_string("Dungeon Properties", string(_x) + " " + string(_y), "up");
        }
        else if (place_meeting(_x, _y, obj_foodRation))
        {
            ini_write_string("Dungeon Properties", string(_x) + " " + string(_y), "foodRation");
        }
    }
}
ini_close();
if (file_exists("save.dat"))
{
    show_message("Save Complete!");
}
game_end();
