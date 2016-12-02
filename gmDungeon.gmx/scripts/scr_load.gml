instance_create(x, y, obj_inventory);
instance_create(x, y, obj_player);
instance_create(x, y, dgen);
ini_open("save.dat");
obj_player.x = ini_read_real("Player Values", "x", 0);
obj_player.y = ini_read_real("Player Values", "y", 0);
global.toughness = ini_read_real("Player Values", "floor", 1);
global.class = ini_read_string("Player Values", "class", "none");
obj_player.turn = ini_read_real("Player Values", "turn", 0);
obj_player.maxHP = ini_read_real("Player Values", "maxHP", 1);
obj_player.hp = ini_read_real("Player Values", "hp", 1);
obj_player.maxPW = ini_read_real("Player Values", "maxPW", 0);
obj_player.pw = ini_read_real("Player Values", "pw", 0);
obj_player.strength = ini_read_real("Player Values", "strength", 1);
obj_player.charisma = ini_read_real("Player Values", "charisma", 1);
obj_player.constitution = ini_read_real("Player Values", "constitution", 1);
obj_player.dexterity = ini_read_real("Player Values", "dexterity", 1);
obj_player.wisdom = ini_read_real("Player Values", "wisdom", 1);
obj_player.attack = ini_read_real("Player Values", "attack", 1);
obj_player.intelligence = ini_read_real("Player Values", "intelligence", 1);
obj_player.level = ini_read_real("Player Values", "level", 1);
obj_player.gold = ini_read_real("Player Values", "gold", 0);
obj_player.maxHP = ini_read_real("Player Values", "maxHP", 1);
obj_player.move = ini_read_real("Player Values", "move", 0);
obj_player.playerNutrition = ini_read_real("Player Values", "playerNutrition", 900);
i = 0;
while(ini_key_exists("Player Inventory", string(i) + " name"))
{
    name = ini_read_string("Player Inventory", i + " name", "");
    var test;
    switch(name)
    {
        case "amulet":
            test = instance_create(0, 0, obj_amulet);
            break;
        case "armor":
            test = instance_create(0, 0, obj_armor);
            test.type = ini_read_string("Player Inventory", string(i) + " type", "");
            break;
        case "scroll":
            test = instance_create(0, 0, obj_scroll);
            break;
        case "spellbook":
            test = instance_create(0, 0, obj_spellbook);
            break;
        case "wand":
            test = instance_create(0, 0, obj_armor);
            break;
        case "foodRation":
            test = instance_create(0, 0, obj_foodRation);
            test.nutrition = ini_read_real("Player Inventory", string(i) + " nutrition", "");
            break;
    }
    test.name = name;
    test.itemType = ini_read_string("Player Inventory", string(i) + "itemType", "");
    test.description = ini_read_string("Player Inventory", string(i) + "description", "");
    test.amount = ini_read_real("Player Inventory", string(i) + "amount", 1);
    addToInv(test);
    instance_deactivate_object(test);
}
a = 0;
while(ini_key_exists("Enemy Values", string(a) + " name"))
{
    name = ini_read_string("Enemy Values", string(a) + " name", "");
    var test;
    switch (name)
    {
        case "orc":
            test = instance_create(ini_read_real("Enemy Values", string(a) + " x", ""), ini_read_real("Enemy Values", string(a) + " y", ""), obj_orc);
            break;
        case "kobold":
            test = instance_create(ini_read_real("Enemy Values", string(a) + " x", ""), ini_read_real("Enemy Values", string(a) + " y", ""), obj_kobold);
            break;
    } 
}
random_set_seed(ini_read_real("Player Values", "seed", 0));
ini_close();
file_delete("save.dat");
