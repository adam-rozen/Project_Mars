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
while(ini_key_exists("Player Inventory", i + " name"))
{
    type = ini_read_string("Player Inventory", i + " type", "");
    switch(type)
    {
        case "amulet":
            test = instance_create(0,0,obj_amulet);
            test.type = type;
            test.itemType = ini_read_string("Player Inventory", i + "itemType", "");
            test.description = ini_read_string("Player Inventory", i + "description", "");
            test.name = ini_read_string("Player Inventory", i + "name", "");
            addToInv(test);
            instance_deactivate_object(test);
            break;
    }}
random_set_seed(ini_read_real("Player Values", "seed", 0));
ini_close();
file_delete("save.dat");
