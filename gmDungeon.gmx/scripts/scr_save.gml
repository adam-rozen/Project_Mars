ini_open("save.dat");
ini_write_real("Player Values", "x", x);
ini_write_real("Player Values", "y", y);
ini_write_real("Player Values", "floor", global.toughness);
ini_write_string("Player Values", "class", global.class);
ini_write_real("Player Values", "turn", turn);
ini_write_real("Player Values","maxHP", maxHP);
ini_write_real("Player Values", "hp", hp);
ini_write_real("Player Values", "maxPW", maxPW);
ini_write_real("Player Values", "pw", pw);
ini_write_real("Player Values", "xp", xp);
ini_write_real("Player Values", "strength", strength);
ini_write_real("Player Values", "charisma", charisma);
ini_write_real("Player Values", "constitution", constitution);
ini_write_real("Player Values", "dexterity", dexterity);
ini_write_real("Player Values", "wisdom", wisdom);
ini_write_real("Player Values", "attack", attack);
ini_write_real("Player Values", "intelligence", intelligence);
ini_write_real("Player Values", "level", level);
ini_write_real("Player Values", "gold", gold);
ini_write_real("Player Values", "playerNutrition", playerNutrition);
ini_write_real("Player Values", "seed", random_get_seed());
i = 0;
test = obj_inventory.inv[i];
while(test!=-1)
{
    ini_write_string("Player Inventory", string(i) + " name", test.name);
    if (test.itemType == "armor" || test.itemType == "gem" || test.itemType == "weapon"
        || test.itemType == "tool")
    {
        ini_write_string("Player Inventory", string(i) + " type", test.type);
    }
    else if (test.itemType == "food")
    {
        ini_write_real("Player Inventory", string(i) + " nutrition", test.nutrition);
    }
    ini_write_string("Player Inventory", string(i) + " itemType", test.itemType);
    ini_write_real("Player Inventory", string(i) + " amount", test.amount);
    ini_write_string("Player Inventory", string(i) + " description", test.description);
    i++;
    test = obj_inventory.inv[i];
} 
for (a = 0; a <= instance_number(obj_enemy); a++)
{
    ida = instance_find(obj_enemy, a);
    ini_write_real("Enemy Values", string(a) + " x", ida.x);
    ini_write_real("Enemy Values", string(a) + " y", ida.y);
    ini_write_real("Enemy Values", string(a) + " hp", ida.hp);
    ini_write_string("Enemy Values", string(a) + " name", ida.name);
    ini_write_real("Enemy Values", string(a) + " gold", ida.gold);
    ini_write_real("Enemy Values", string(a) + " moved", ida.moved);
    ini_write_real("Enemy Values", string(a) + " attack", ida.attack);
    ini_write_real("Enemy Values", string(a) + " maxHP", ida.maxHP);    
    ini_write_real("Enemy Values", string(a) + " xp", ida.xp);
}
ini_write_real("Dungeon Properties", "world_w", 31);
ini_write_real("Dungeon Properties", "world_h", 31);
ini_write_real("Dungeon Properties", "wsiz1", 32);
ini_write_real("Dungeon Properties", "wsiz2", 64);
for (i = 0; i <= 31 + 1; i += .5)
{
    for (j = 0; j <= 31 + 1; j += .5)
    {
        _x = i * 64 - 32;
        _y = j * 64 - 32;
        if (place_meeting(_x, _y, obj_wall))
        {
            ini_write_string("Dungeon Properties", string(_x) + " " + string(_y) + " type", "wall");
        }
        else if (place_meeting(_x, _y, obj_gold))
        {
            ini_write_string("Dungeon Properties", string(_x) + " " + string(_y) + " type", "gold");
            ini_write_real("Dungeon Properties", string(_x) + " " + string(_y) + "amount", instance_place(_x, _y, obj_gold).amount);
        }
        else if (place_meeting(_x, _y, obj_scroll))
        {
            ini_write_string("Dungeon Properties", string(_x) + " " + string(_y) + " type", "scroll");
            ini_write_real("Dungeon Properties", string(_x) + " " + string(_y) + "amount", instance_place(_x, _y, obj_scroll).amount);
            ini_write_string("Dungeon Properties", string(_x) + " " + string(_y) + "name", instance_place(_x, _y, obj_scroll).name);
            ini_write_string("Dungeon Properties", string(_x) + " " + string(_y) + "itemType", instance_place(_x, _y, obj_scroll).itemType);
            ini_write_string("Dungeon Properties", string(_x) + " " + string(_y) + "description", instance_place(_x, _y, obj_scroll).description);
        }
        else if (place_meeting(_x, _y, obj_spellbook))
        {
            ini_write_string("Dungeon Properties", string(_x) + " " + string(_y) + " type", "spellbook");
            ini_write_string("Dungeon Properties", string(_x) + " " + string(_y) + "itemType", instance_place(_x, _y, obj_spellbook).amount);
            ini_write_string("Dungeon Properties", string(_x) + " " + string(_y) + "description", instance_place(_x, _y, obj_spellbook).description);
            ini_write_string("Dungeon Properties", string(_x) + " " + string(_y) + "name", instance_place(_x, _y, obj_spellbook).name);
            ini_write_real("Dungeon Properties", string(_x) + " " + string(_y) + "amount", instance_place(_x, _y, obj_spellbook).amount);
        }
        else if (place_meeting(_x, _y, obj_armor))
        {
            ini_write_string("Dungeon Properties", string(_x) + " " + string(_y) + " type", "armor");
            ini_write_string("Dungeon Properties", string(_x) + " " + string(_y) + "itemType", instance_place(_x, _y, obj_armor).itemType);
            ini_write_string("Dungeon Properties", string(_x) + " " + string(_y) + "type", instance_place(_x, _y, obj_armor).type);
            ini_write_string("Dungeon Properties", string(_x) + " " + string(_y) + "description", instance_place(_x, _y, obj_armor).description);
            ini_write_string("Dungeon Properties", string(_x) + " " + string(_y) + "name", instance_place(_x, _y, obj_armor).name);
            ini_write_real("Dungeon Properties", string(_x) + " " + string(_y) + "amount", instance_place(_x, _y, obj_armor).amount);
        }
        else if (place_meeting(_x, _y, obj_down))
        {
            ini_write_string("Dungeon Properties", string(_x) + " " + string(_y) + " type", "down");
        }
        else if (place_meeting(_x, _y, obj_up))
        {
            ini_write_string("Dungeon Properties", string(_x) + " " + string(_y) + " type", "up");
        }
        else if (place_meeting(_x, _y, obj_foodRation))
        {
            ini_write_string("Dungeon Properties", string(_x) + " " + string(_y) + " type", "foodRation");
            ini_write_real("Dungeon Properties", string(_x) + " " + string(_y) + "nutrition", instance_place(_x, _y, obj_foodRation).nutrition);
            ini_write_string("Dungeon Properties", string(_x) + " " + string(_y) + "itemType", instance_place(_x, _y, obj_foodRation).itemType);
            ini_write_string("Dungeon Properties", string(_x) + " " + string(_y) + "name", instance_place(_x, _y, obj_foodRation).name);
        }
        else if (place_meeting(_x, _y, obj_amulet))
        {
            ini_write_string("Dungeon Properties", string(_x) + " " + string(_y) + " type", "amulet");
            ini_write_string("Dungeon Properties", string(_x) + " " + string(_y) + "name", instance_place(_x, _y, obj_amulet).name);
            ini_write_string("Dungeon Properties", string(_x) + " " + string(_y) + "itemType", instance_place(_x, _y, obj_amulet).itemType);
            ini_write_string("Dungeon Properties", string(_x) + " " + string(_y) + "description", instance_place(_x, _y, obj_amulet).description);
            ini_write_real("Dungeon Properties", string(_x) + " " + string(_y) + "amount", instance_place(_x, _y, obj_amulet).amount);
        }
        else if (place_meeting(_x, _y, obj_ring))
        {
            ini_write_string("Dungeon Properties", string(_x) + " " + string(_y) + " type", "ring");
            ini_write_string("Dungeon Properties", string(_x) + " " + string(_y) + "name", instance_place(_x, _y, obj_ring).name);
            ini_write_string("Dungeon Properties", string(_x) + " " + string(_y) + "itemType", instance_place(_x, _y, obj_ring).itemType);
            ini_write_string("Dungeon Properties", string(_x) + " " + string(_y) + "description", instance_place(_x, _y, obj_ring).description);
            ini_write_real("Dungeon Properties", string(_x) + " " + string(_y) + "amount", instance_place(_x, _y, obj_ring).amount);
        }
        else if (place_meeting(_x, _y, obj_potion))
        {
            ini_write_string("Dungeon Properties", string(_x) + " " + string(_y) + " type", "potion");
            ini_write_string("Dungeon Properties", string(_x) + " " + string(_y) + "name", instance_place(_x, _y, obj_potion).name)
            ini_write_string("Dungeon Properties", string(_x) + " " + string(_y) + "itemType", instance_place(_x, _y, obj_potion).itemType);
            ini_write_string("Dungeon Properties", string(_x) + " " + string(_y) + "description", instance_place(_x, _y, obj_potion).description);
            ini_write_real("Dungeon Properties", string(_x) + " " + string(_y) + "amount", instance_place(_x, _y, obj_potion).amount);
        }
        else if (place_meeting(_x, _y, obj_wand))
        {
            ini_write_string("Dungeon Properties", string(_x) + " " + string(_y) + " type", "wand");
            ini_write_string("Dungeon Properties", string(_x) + " " + string(_y) + "name", instance_place(_x, _y, obj_wand).name)
            ini_write_string("Dungeon Properties", string(_x) + " " + string(_y) + "itemType", instance_place(_x, _y, obj_wand).itemType)
            ini_write_string("Dungeon Properties", string(_x) + " " + string(_y) + "description", instance_place(_x, _y, obj_wand).description)
            ini_write_real("Dungeon Properties", string(_x) + " " + string(_y) + "amount", instance_place(_x, _y, obj_wand).amount)
        }
        else if (place_meeting(_x, _y, obj_floor))
        {
            ini_write_string("Dungeon Properties", string(_x) + " " + string(_y) + " type", "floor");
        }
    }
}
ini_close();
if (file_exists("save.dat"))
{
    show_message("Save Complete!");
}
game_end();
