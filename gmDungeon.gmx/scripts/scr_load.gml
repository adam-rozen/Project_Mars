if (!file_exists("save.dat"))
{
    show_message("No save file found!");
    exit;
}
instance_destroy();
ini_open("save.dat");
global.toughness = ini_read_real("Player Values", "floor", 1);
global.class = ini_read_string("Player Values", "class", "none");
instance_create(x, y, obj_inventory);
instance_create(x, y, obj_player);
obj_player.x = ini_read_real("Player Values", "x", 0);
obj_player.y = ini_read_real("Player Values", "y", 0);
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
obj_player.xp = ini_read_real("Player Values", "xp", 0);
obj_player.playerNutrition = ini_read_real("Player Values", "playerNutrition", 900);
i = 0;
while (ini_key_exists("Player Inventory", string(i) + " itemType"))
{
    itemType = ini_read_string("Player Inventory", string(i) + " itemType", "");
    switch(itemType)
    {
        case "amulet":
            test = instance_create(0, 0, obj_amulet);
            test.itemType = itemType;
            test.name = ini_read_string("Player Inventory", string(i) + " name", "");
            test.description = ini_read_string("Player Inventory", string(i) + " description", "");
            test.amount = ini_read_real("Player Inventory", string(i) + " amount", 1);
            addToInv(test);
            instance_deactivate_object(test);
            break;
        case "ring":
            test = instance_create(0, 0, obj_ring);
            test.itemType = itemType;
            test.name = ini_read_string("Player Inventory", string(i) + " name", "");
            test.description = ini_read_string("Player Inventory", string(i) + " description", "");
            test.amount = ini_read_real("Player Inventory", string(i) + " amount", 1);
            addToInv(test);
            instance_deactivate_object(test);
            break;
        case "potion":
            test = instance_create(-300000, -3000000, obj_potion);
            test.itemType = itemType;
            test.name = ini_read_string("Player Inventory", string(i) + " name", "");
            test.description = ini_read_string("Player Inventory", string(i) + " description", "");
            test.amount = ini_read_real("Player Inventory", string(i) + " amount", 1);
            show_debug_message(test.name);
            addToInv(test);
            //instance_deactivate_object(test);
            //show_debug_message(test.name);
            break;
        case "armor":
            test = instance_create(0, 0, obj_armor);
            test.itemType = itemType;
            test.name = ini_read_string("Player Inventory", string(i) + " name", "");
            test.description = ini_read_string("Player Inventory", string(i) + " description", "");
            test.amount = ini_read_real("Player Inventory", string(i) + " amount", 1);
            test.type = ini_read_string("Player Inventory", string(i) + " type", "");
            addToInv(test);
            instance_deactivate_object(test);
            break;
        case "gem":
            test = instance_create(0, 0, obj_gem);
            test.itemType = itemType;
            test.name = ini_read_string("Player Inventory", string(i) + " name", "");
            test.description = ini_read_string("Player Inventory", string(i) + " description", "");
            test.amount = ini_read_real("Player Inventory", string(i) + " amount", 1);
            test.type = ini_read_string("Player Inventory", string(i) + " type", "");
            addToInv(test);
            instance_deactivate_object(test);
            break;
        case "weapon":
            test = instance_create(0, 0, obj_weapon);
            test.itemType = itemType;
            test.name = ini_read_string("Player Inventory", string(i) + " name", "");
            test.description = ini_read_string("Player Inventory", string(i) + " description", "");
            test.amount = ini_read_real("Player Inventory", string(i) + " amount", 1);
            test.type = ini_read_string("Player Inventory", string(i) + " type", "");
            addToInv(test);
            instance_deactivate_object(test);
            break;
        case "tool":
            test = instance_create(0, 0, obj_tool);
            test.itemType = itemType;
            test.name = ini_read_string("Player Inventory", string(i) + " name", "");
            test.description = ini_read_string("Player Inventory", string(i) + " description", "");
            test.amount = ini_read_real("Player Inventory", string(i) + " amount", 1);
            test.type = ini_read_string("Player Inventory", string(i) + " type", "");
            addToInv(test);
            instance_deactivate_object(test);
            break;
        case "scroll":
            test = instance_create(0, 0, obj_scroll);
            test.itemType = itemType;
            test.name = ini_read_string("Player Inventory", string(i) + " name", "");
            test.description = ini_read_string("Player Inventory", string(i) + " description", "");
            test.amount = ini_read_real("Player Inventory", string(i) + " amount", 1);
            addToInv(test);
            instance_deactivate_object(test);
            break;
        case "spellbook":
            test = instance_create(0, 0, obj_spellbook);
            test.itemType = itemType;
            test.name = ini_read_string("Player Inventory", string(i) + " name", "");
            test.description = ini_read_string("Player Inventory", string(i) + " description", "");
            test.amount = ini_read_real("Player Inventory", string(i) + " amount", 1);
            addToInv(test);
            instance_deactivate_object(test);
            break;
        case "wand":
            test = instance_create(0, 0, obj_wand);
            test.itemType = itemType;
            test.name = ini_read_string("Player Inventory", string(i) + " name", "");
            test.description = ini_read_string("Player Inventory", string(i) + " description", "");
            test.amount = ini_read_real("Player Inventory", string(i) + " amount", 1);
            addToInv(test);
            instance_deactivate_object(test);
            break;
        case "foodRation":
            test = instance_create(0, 0, obj_foodRation);
            test.nutrition = ini_read_real("Player Inventory", string(i) + " nutrition", "");
            test.itemType = itemType;
            test.name = ini_read_string("Player Inventory", string(i) + " name", "");
            test.description = ini_read_string("Player Inventory", string(i) + " description", "");
            test.amount = ini_read_real("Player Inventory", string(i) + " amount", 1);
            addToInv(test);
            instance_deactivate_object(test);
            break;
    }
    i++;
}
a = 0;
while(ini_key_exists("Enemy Values", string(a) + " name"))
{
    name = ini_read_string("Enemy Values", string(a) + " name", "");
    switch (name)
    {
        case "orc":
            test = instance_create(ini_read_real("Enemy Values", string(a) + " x", ""), ini_read_real("Enemy Values", string(a) + " y", ""), obj_orc);
            test.name = name;
            test.maxHP = ini_read_real("Enemy Values", string(a) + " maxHP", 1);
            test.xp = ini_read_real("Enemy Values", string(a) + " xp", 0);
            test.attack = ini_read_real("Enemy Values", string(a) + " attack", 1);
            test.moved = ini_read_real("Enemy Values", string(a) + " moved", 0);
            test.gold = ini_read_real("Enemy Values", string(a) + " gold", 0);
            test.hp = ini_read_real("Enemy Values", string(a) + " hp", 1);
            break;
        case "kobold":
            test = instance_create(ini_read_real("Enemy Values", string(a) + " x", ""), ini_read_real("Enemy Values", string(a) + " y", ""), obj_kobold);
            test.name = name;
            test.maxHP = ini_read_real("Enemy Values", string(a) + " maxHP", 1);
            test.xp = ini_read_real("Enemy Values", string(a) + " xp", 0);
            test.attack = ini_read_real("Enemy Values", string(a) + " attack", 1);
            test.moved = ini_read_real("Enemy Values", string(a) + " moved", 0);
            test.gold = ini_read_real("Enemy Values", string(a) + " gold", 0);
            test.hp = ini_read_real("Enemy Values", string(a) + " hp", 1);
            break;
    }
    a++;
}
world_w = ini_read_real("Dungeon Properties", "world_w", 32);
world_h = ini_read_real("Dungeon Properties", "world_h", 32);
wsiz1 = ini_read_real("Dungeon Properties", "wsiz1", 1);
wsiz2 = ini_read_real("Dungeon Properties", "wsiz2", 2);
for (i=0; i <= world_w + 1; i += .5)
{
    for (j = 0; j <= world_h + 1; j += .5)
    {
        _x = i * wsiz2 - wsiz1;
        _y = j * wsiz2 - wsiz1;
        type = ini_read_string("Dungeon Properties", string(_x) + " " + string(_y) + " type", "");
        switch (type)
        {
            case "floor":
                instance_create(_x, _y, obj_floor);
                break;
            case "wall":
                instance_create(_x, _y, obj_wall);
                break;
            case "gold":
                target = instance_create(_x, _y, obj_gold);
                target.amount = ini_read_real("Dungeon Properties", string(_x) + " " + string(_y) + "amount", 1);
            case "scroll":
                target = instance_create(_x, _y, obj_scroll);
                target.amount = ini_read_real("Dungeon Properties", string(_x) + " " + string(_y) + "amount", 1);
                target.name = ini_read_string("Dungeon Properties", string(_x) + " " + string(_y) + "name", "");
                target.itemType = ini_read_string("Dungeon Properties", string(_x) + " " + string(_y) + "itemType", "");
                target.description = ini_read_string("Dungeon Properties", string(_x) + " " + string(_y) + "description", "");
                break;
            case "spellbook":
                target = instance_create(_x, _y, obj_spellbook);
                target.amount = ini_read_real("Dungeon Properties", string(_x) + " " + string(_y) + "amount", 1);
                target.name = ini_read_string("Dungeon Properties", string(_x) + " " + string(_y) + "name", "");
                target.itemType = ini_read_string("Dungeon Properties", string(_x) + " " + string(_y) + "itemType", "");
                target.description = ini_read_string("Dungeon Properties", string(_x) + " " + string(_y) + "description", "");
                break;
            case "armor":
                target = instance_create(_x, _y, obj_armor);
                target.amount = ini_read_real("Dungeon Properties", string(_x) + " " + string(_y) + "amount", 1);
                target.name = ini_read_string("Dungeon Properties", string(_x) + " " + string(_y) + "name", "");
                target.itemType = ini_read_string("Dungeon Properties", string(_x) + " " + string(_y) + "itemType", "");
                target.description = ini_read_string("Dungeon Properties", string(_x) + " " + string(_y) + "description", "");
                target.type = ini_read_string("Dungeon Properties", string(_x) + " " + string(_y) + "type", "");
                break;
            case "amulet":
                target = instance_create(_x, _y, obj_amulet);
                target.amount = ini_read_real("Dungeon Properties", string(_x) + " " + string(_y) + "amount", 1);
                target.name = ini_read_string("Dungeon Properties", string(_x) + " " + string(_y) + "name", "");
                target.itemType = ini_read_string("Dungeon Properties", string(_x) + " " + string(_y) + "itemType", "");
                target.description = ini_read_string("Dungeon Properties", string(_x) + " " + string(_y) + "description", "");
                break;
            case "down":
                instance_create(_x, _y, obj_down);
                break;
            case "up":
                instance_create(_x, _y, obj_up);
                break;
            case "ring":
                target = instance_create(_x, _y, obj_ring);
                target.amount = ini_read_real("Dungeon Properties", string(_x) + " " + string(_y) + "amount", 1);
                target.name = ini_read_string("Dungeon Properties", string(_x) + " " + string(_y) + "name", "");
                target.itemType = ini_read_string("Dungeon Properties", string(_x) + " " + string(_y) + "itemType", "");
                target.description = ini_read_string("Dungeon Properties", string(_x) + " " + string(_y) + "description", "");
                break;
            case "potion":
                target = instance_create(_x, _y, obj_potion);
                target.amount = ini_read_real("Dungeon Properties", string(_x) + " " + string(_y) + "amount", 1);
                target.name = ini_read_string("Dungeon Properties", string(_x) + " " + string(_y) + "name", "");
                target.itemType = ini_read_string("Dungeon Properties", string(_x) + " " + string(_y) + "itemType", "");
                target.description = ini_read_string("Dungeon Properties", string(_x) + " " + string(_y) + "description", "");
                break;
            case "wand":
                target = instance_create(_x, _y, obj_wand);
                target.amount = ini_read_real("Dungeon Properties", string(_x) + " " + string(_y) + "amount", 1);
                target.name = ini_read_string("Dungeon Properties", string(_x) + " " + string(_y) + "name", "");
                target.itemType = ini_read_string("Dungeon Properties", string(_x) + " " + string(_y) + "itemType", "");
                target.description = ini_read_string("Dungeon Properties", string(_x) + " " + string(_y) + "description", "");
                break;
        }
    }
}

random_set_seed(ini_read_real("Player Values", "seed", 0));
ini_close();
file_delete("save.dat");
