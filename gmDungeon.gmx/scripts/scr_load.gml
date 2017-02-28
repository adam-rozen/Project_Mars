if (!file_exists("save.dat"))
{
    show_message("No save file found!");
    exit;
}
instance_destroy();
ini_open("save.dat");
global.toughness = real(base64_decode(ini_read_string(base64_encode("Player Values"), "floor", base64_encode("1"))));
global.class = base64_decode(ini_read_string(base64_encode("Player Values"), "class", base64_encode("none")));
instance_create(x, y, obj_inventory);
instance_create(x, y, obj_player);
obj_player.x = real(base64_decode(ini_read_string(base64_encode("Player Values"), "x", base64_encode("0"))));
obj_player.y = real(base64_decode(ini_read_string(base64_encode("Player Values"), "y", base64_encode("0"))));
obj_player.name = base64_decode(ini_read_string(base64_encode("Player Values"), "name", base64_encode("Joe")));
obj_player.turn = real(base64_decode(ini_read_string(base64_encode("Player Values"), "turn", base64_encode("0"))));
obj_player.maxHP = real(base64_decode(ini_read_string(base64_encode("Player Values"), "maxHP", base64_encode("1"))));
obj_player.hp = real(base64_decode(ini_read_string(base64_encode("Player Values"), "hp", base64_encode("1"))));
obj_player.maxPW = real(base64_decode(ini_read_string(base64_encode("Player Values"), "maxPW", base64_encode("0"))));
obj_player.pw = real(base64_decode(ini_read_string(base64_encode("Player Values"), "pw", base64_encode("0"))));
obj_player.strength = real(base64_decode(ini_read_string(base64_encode("Player Values"), "strength", base64_encode("1"))));
obj_player.charisma = real(base64_decode(ini_read_string(base64_encode("Player Values"), "charisma", base64_encode("1"))));
obj_player.constitution = real(base64_decode(ini_read_string(base64_encode("Player Values"), "constitution", base64_encode("1"))));
obj_player.dexterity = real(base64_decode(ini_read_string(base64_encode("Player Values"), "dexterity", base64_encode("1"))));
obj_player.wisdom = real(base64_decode(ini_read_string(base64_encode("Player Values"), "wisdom", base64_encode("1"))));
obj_player.toHitBonus = real(base64_decode(ini_read_string(base64_encode("Player Values"), "toHitBonus", base64_encode("0"))));
obj_player.damageLarge[0] = real(base64_decode(ini_read_string(base64_encode("Player Values"), "damageLarge[0]", base64_encode("2"))));
obj_player.damageSmall[0] = real(base64_decode(ini_read_string(base64_encode("Player Values"), "damageSmall[0]", base64_encode("2"))));
obj_player.intelligence = real(base64_decode(ini_read_string(base64_encode("Player Values"), "intelligence", base64_encode("1"))));
obj_player.level = real(base64_decode(ini_read_string(base64_encode("Player Values"), "level", base64_encode("1"))));
obj_player.gold = real(base64_decode(ini_read_string(base64_encode("Player Values"), "gold", base64_encode("0"))));
obj_player.maxHP = real(base64_decode(ini_read_string(base64_encode("Player Values"), "maxHP", base64_encode("1"))));
obj_player.xp = real(base64_decode(ini_read_string(base64_encode("Player Values"), "xp", base64_encode("0"))));
obj_player.ac = real(base64_decode(ini_read_string(base64_encode("Player Values"), "ac", base64_encode("10"))));
obj_player.playerNutrition = real(base64_decode(ini_read_string(base64_encode("Player Values"), "playerNutrition", base64_encode("900"))));
a = 0;
while(ini_key_exists(base64_encode("Enemy Values"), string(a) + " name"))
{
    name = base64_decode(ini_read_string(base64_encode("Enemy Values"), string(a) + " name", base64_encode("")));
    switch (name)
    {
        case "orc":
            test = instance_create(real(base64_decode(ini_read_string(base64_encode("Enemy Values"), string(a) + " x", base64_encode("")))), real(base64_decode(ini_read_string(base64_encode("Enemy Values"), string(a) + " y", base64_encode("")))), obj_orc);
            test.name = name;
            test.maxHP = real(base64_decode(ini_read_string(base64_encode("Enemy Values"), string(a) + " maxHP", base64_encode("1"))));
            test.xp = real(base64_decode(ini_read_string(base64_encode("Enemy Values"), string(a) + " xp", base64_encode("0"))));
            test.attack = real(base64_decode(ini_read_string(base64_encode("Enemy Values"), string(a) + " damage", base64_encode("1"))));
            test.moved = real(base64_decode(ini_read_string(base64_encode("Enemy Values"), string(a) + " moved", base64_encode("0"))));
            test.gold = real(base64_decode(ini_read_string(base64_encode("Enemy Values"), string(a) + " gold", base64_encode("0"))));
            test.hp = real(base64_decode(ini_read_string(base64_encode("Enemy Values"), string(a) + " hp", base64_encode("1"))));
            test.level = real(base64_decode(ini_read_string(base64_encode("Enemy Values"), string(a) + " level", base64_encode("1"))));
            break;
        case "kobold":
            test = instance_create(real(base64_decode(ini_read_string(base64_encode("Enemy Values"), string(a) + " x", base64_encode("")))), real(base64_decode(ini_read_string(base64_encode("Enemy Values"), string(a) + " y", base64_encode("")))), obj_kobold);
            test.name = name;
            test.maxHP = real(base64_decode(ini_read_string(base64_encode("Enemy Values"), string(a) + " maxHP", base64_encode("1"))));
            test.xp = real(base64_decode(ini_read_string(base64_encode("Enemy Values"), string(a) + " xp", base64_encode("0"))));
            test.attack = real(base64_decode(ini_read_string(base64_encode("Enemy Values"), string(a) + " damage", base64_encode("1"))));
            test.moved = real(base64_decode(ini_read_string(base64_encode("Enemy Values"), string(a) + " moved", base64_encode("0"))));
            test.gold = real(base64_decode(ini_read_string(base64_encode("Enemy Values"), string(a) + " gold", base64_encode("0"))));
            test.hp = real(base64_decode(ini_read_string(base64_encode("Enemy Values"), string(a) + " hp", base64_encode("1"))));
            test.level = real(base64_decode(ini_read_string(base64_encode("Enemy Values"), string(a) + " level", base64_encode("0"))));
            break;
    }
    a++;
}
world_w = real(base64_decode(ini_read_string(base64_encode("Dungeon Properties"), "world_w", base64_encode("32"))));
world_h = real(base64_decode(ini_read_string(base64_encode("Dungeon Properties"), "world_h", base64_encode("32"))));
wsiz1 = real(base64_decode(ini_read_string(base64_encode("Dungeon Properties"), "wsiz1", base64_encode("1"))));
wsiz2 = real(base64_decode(ini_read_string(base64_encode("Dungeon Properties"), "wsiz2", base64_encode("2"))));
for (i=0; i <= world_w + 1; i += .5)
{
    for (j = 0; j <= world_h + 1; j += .5)
    {
        _x = i * wsiz2 - wsiz1;
        _y = j * wsiz2 - wsiz1;
        type = base64_decode(ini_read_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + " type", base64_encode("")));
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
                target.amount = real(base64_decode(ini_read_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + "amount", base64_encode("1"))));
            case "scroll":
                target = instance_create(_x, _y, obj_scroll);
                target.amount = real(base64_decode(ini_read_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + "amount", base64_encode("1"))));
                target.name = base64_decode(ini_read_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + "name", base64_encode("")));
                target.itemType = base64_decode(ini_read_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + "itemType", base64_encode("")));
                target.description = base64_decode(ini_read_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + "description", base64_encode("")));
                target.price = (real(base64_decode(ini_read_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + "price", base64_encode("0")))));
                break;
            case "spellbook":
                target = instance_create(_x, _y, obj_spellbook);
                target.amount = real(base64_decode(ini_read_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + "amount", base64_encode("1"))));
                target.name = base64_decode(ini_read_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + "name", base64_encode("")));
                target.itemType = base64_decode(ini_read_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + "itemType", base64_encode("")));
                target.description = base64_decode(ini_read_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + "description", base64_encode("")));
                break;
            case "armor":
                target = instance_create(_x, _y, obj_armor);
                target.amount = real(base64_decode(ini_read_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + "amount", base64_encode("1"))));
                target.name = base64_decode(ini_read_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + "name", base64_encode("")));
                target.itemType = base64_decode(ini_read_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + "itemType", base64_encode("")));
                target.description = base64_decode(ini_read_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + "description", base64_encode("")));
                target.type =  base64_decode(ini_read_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + "type", ""));
                break;
            case "amulet":
                target = instance_create(_x, _y, obj_amulet);
                target.amount = real(base64_decode(ini_read_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + "amount", base64_encode("1"))));
                target.name = base64_decode(ini_read_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + "name", base64_encode("")));
                target.itemType = base64_decode(ini_read_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + "itemType", base64_encode("")));
                target.description = base64_decode(ini_read_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + "description", base64_encode("")));
                break;
            case "down":
                instance_create(_x, _y, obj_down);
                break;
            case "up":
                instance_create(_x, _y, obj_up);
                break;
            case "ring":
                target = instance_create(_x, _y, obj_ring);
                target.amount = real(base64_decode(ini_read_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + "amount", base64_encode("1"))));
                target.name = base64_decode(ini_read_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + "name", base64_encode("")));
                target.itemType = base64_decode(ini_read_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + "itemType", base64_encode("")));
                target.description = base64_decode(ini_read_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + "description", base64_encode("")));
                break;
            case "potion":
                target = instance_create(_x, _y, obj_potion);
                target.amount = real(base64_decode(ini_read_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + "amount", base64_encode("1"))));
                target.name = base64_decode(ini_read_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + "name", base64_encode("")));
                target.itemType = base64_decode(ini_read_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + "itemType", base64_encode("")));
                target.description = base64_decode(ini_read_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + "description", base64_encode("")));
                break;
            case "wand":
                target = instance_create(_x, _y, obj_wand);
                target.amount = real(base64_decode(ini_read_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + "amount", base64_encode("1"))));
                target.name = base64_decode(ini_read_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + "name", base64_encode("")));
                target.itemType = base64_decode(ini_read_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + "itemType", base64_encode("")));
                target.description = base64_decode(ini_read_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + "description", base64_encode("")));
                break;
            case "comestible":
                target = instance_create(_x, _y, obj_comestible);
                target.amount = real(base64_decode(ini_read_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + "amount", base64_encode("1"))));
                target.name = base64_decode(ini_read_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + "name", base64_encode("")));
                target.itemType = base64_decode(ini_read_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + "itemType", base64_encode("")));
                target.description = base64_decode(ini_read_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + "description", base64_encode("")));
                target.nutrition = real(base64_decode(ini_read_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + "nutrition", base64_encode("1"))));
                target.type = base64_decode(ini_read_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + "type", base64_encode("")));
                target.price = real(base64_decode(ini_read_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + "price", base64_encode("1"))));
                break;
            case "tool":
                target = instance_create(_x, _y, obj_tool);
                target.name = base64_decode(ini_read_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + "name", base64_encode("")));
                target.itemType = base64_decode(ini_read_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + " itemType", base64_encode("")));
                target.description = base64_decode(ini_read_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + " description", base64_encode("")));
                target.type = base64_decode(ini_read_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + "type", base64_encode("")));
                target.amount = real(base64_decode(ini_read_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + " amount", base64_encode("1"))));
                target.price = real(base64_decode(ini_read_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + "price", base64_encode("1"))));
                break;
        }
    }
}
i = 0;
while (ini_key_exists(base64_encode("Player Spell"), string(i) + " name"))
{
    test = base64_decode(ini_read_string(base64_encode("Player Spell"), string(i) + " name", ""));
    ini_close();
    addToSpell(test);
    ini_open("save.dat");
    i++;
}
i = 0;
while (ini_key_exists(base64_encode("Player Inventory"), string(i) + " itemType"))
{
    itemType = base64_decode(ini_read_string(base64_encode("Player Inventory"), (string(i) + " itemType"), base64_encode("")));
    switch(itemType)
    {
        case "amulet":
            test = instance_create(0, 0, obj_amulet);
            test.itemType = itemType;
            test.name = base64_decode(ini_read_string(base64_encode("Player Inventory"), string(i) + " name", base64_encode("")));
            test.description = base64_decode(ini_read_string(base64_encode("Player Inventory"), string(i) + " description", base64_encode("")));
            test.amount = real(base64_decode(string(ini_read_string(base64_encode("Player Inventory"), string(i) + " amount", base64_encode("1")))));
            ini_close();
            addToInv(test);
            ini_open("save.dat");
            instance_deactivate_object(test);
            break;
        case "ring":
            test = instance_create(0, 0, obj_ring);
            test.itemType = itemType;
            test.name = base64_decode(ini_read_string(base64_encode("Player Inventory"), string(i) + " name", base64_encode("")));
            test.description = base64_decode(ini_read_string(base64_encode("Player Inventory"), string(i) + " description", base64_encode("")));
            test.amount = real(base64_decode(ini_read_string(base64_encode("Player Inventory"), string(i) + " amount", base64_encode("1"))));
            ini_close();
            addToInv(test);
            ini_open("save.dat");
            instance_deactivate_object(test);
            break;
        case "potion":
            test = instance_create(0, 0, obj_potion);
            test.itemType = itemType;
            test.name = base64_decode(ini_read_string(base64_encode("Player Inventory"), string(i) + " name", base64_encode("")));
            test.description = base64_decode(ini_read_string(base64_encode("Player Inventory"), string(i) + " description", base64_encode("")));
            test.amount = real(base64_decode(ini_read_string(base64_encode("Player Inventory"), string(i) + " amount", base64_encode("1"))));
            ini_close();
            addToInv(test);
            ini_open("save.dat");
            instance_deactivate_object(test);
            break;
        case "armor":
            test = instance_create(0, 0, obj_armor);
            test.itemType = itemType;
            test.name = base64_decode(ini_read_string(base64_encode("Player Inventory"), string(i) + " name", ""));
            test.description = base64_decode(ini_read_string(base64_encode("Player Inventory"), string(i) + " description", ""));
            test.amount = real(base64_decode(ini_read_string(base64_encode("Player Inventory"), string(i) + " amount", base64_encode(string(1)))));
            test.type = base64_decode(ini_read_string(base64_encode("Player Inventory"), string(i) + " type", ""));
            ini_close();
            addToInv(test);
            ini_open("save.dat");
            instance_deactivate_object(test);
            break;
        case "gem":
            test = instance_create(0, 0, obj_gem);
            test.itemType = itemType;
            test.name = base64_decode(ini_read_string(base64_encode("Player Inventory"), string(i) + " name", ""));
            test.description = base64_decode(ini_read_string(base64_encode("Player Inventory"), string(i) + " description", ""));
            test.amount = real(base64_decode(ini_read_string(base64_encode("Player Inventory"), string(i) + " amount", base64_encode(string(1)))));
            test.type = base64_decode(ini_read_string(base64_encode("Player Inventory"), string(i) + " type", ""));
            ini_close();
            addToInv(test);
            ini_open("save.dat");
            instance_deactivate_object(test);
            break;
        case "weapon":
            show_debug_message("weapon");
            test = instance_create(0, 0, obj_weapon);
            test.itemType = itemType;
            test.name = base64_decode(ini_read_string(base64_encode("Player Inventory"), string(i) + " name", ""));
            test.appearance = base64_decode(ini_read_string(base64_encode("Player Inventory"), string(i) + " appearance", ""));
            test.price = real(base64_decode(ini_read_string(base64_encode("Player Inventory"), string(i) + " price", base64_encode(string(1)))));
            test.toHitBonus = real(base64_decode(ini_read_string(base64_encode("Player Inventory"), string(i) + " toHitBonus", base64_encode(string(1)))));
            test.hands = real(base64_decode(ini_read_string(base64_encode("Player Inventory"), string(i) + " hands", base64_encode(string(1)))));
            test.weight = real(base64_decode(ini_read_string(base64_encode("Player Inventory"), string(i) + " weight", base64_encode(string(1)))));
            test.damageSmall[0] = real(base64_decode(ini_read_string(base64_encode("Player Inventory"), string(i) + " damageSmall[0]", base64_encode(string(1)))));
            test.damageLarge[0] = real(base64_decode(ini_read_string(base64_encode("Player Inventory"), string(i) + " damageLarge[0]", base64_encode(string(1)))));
            test.weaponType = base64_decode(ini_read_string(base64_encode("Player Inventory"), string(i) + " weaponType", ""));
            test.type = base64_decode(ini_read_string(base64_encode("Player Inventory"), string(i) + " type", ""));
            ini_close();
            addToInv(test);
            ini_open("save.dat");
            instance_deactivate_object(test);
            break;
        case "tool":
            test = instance_create(0, 0, obj_tool);
            test.itemType = itemType;
            test.name = base64_decode(ini_read_string(base64_encode("Player Inventory"), string(i) + " name", base64_encode("")));
            test.description = base64_decode(ini_read_string(base64_encode("Player Inventory"), string(i) + " description", base64_encode("")));
            test.amount = real(base64_decode(ini_read_string(base64_encode("Player Inventory"), string(i) + " amount", base64_encode("1"))));
            test.type = base64_decode(ini_read_string(base64_encode("Player Inventory"), string(i) + " type", base64_encode("")));
            ini_close();
            addToInv(test);
            ini_open("save.dat");
            instance_deactivate_object(test);
            break;
        case "scroll":
            test = instance_create(0, 0, obj_scroll);
            test.itemType = itemType;
            test.name = base64_decode(ini_read_string(base64_encode("Player Inventory"), string(i) + " name", base64_encode("")));
            test.description = base64_decode(ini_read_string(base64_encode("Player Inventory"), string(i) + " description", base64_encode("")));
            test.amount = real(base64_decode(ini_read_string(base64_encode("Player Inventory"), string(i) + " amount", base64_encode("1"))));
            ini_close();
            addToInv(test);
            ini_open("save.dat");
            instance_deactivate_object(test);
            break;
        case "spellbook":
            test = instance_create(0, 0, obj_spellbook);
            test.itemType = itemType;
            test.name = base64_decode(ini_read_string(base64_encode("Player Inventory"), string(i) + " name", ""));
            test.description = base64_decode(ini_read_string(base64_encode("Player Inventory"), string(i) + " description", ""));
            test.amount = real(base64_decode(ini_read_string(base64_encode("Player Inventory"), string(i) + " amount", base64_encode("1"))));
            ini_close();
            addToInv(test);
            ini_open("save.dat");
            instance_deactivate_object(test);
            break;
        case "wand":
            test = instance_create(0, 0, obj_wand);
            test.itemType = itemType;
            test.name = base64_decode(ini_read_string(base64_encode("Player Inventory"), string(i) + " name", ""));
            test.description = base64_decode(ini_read_string(base64_encode("Player Inventory"), string(i) + " description", ""));
            test.amount = real(base64_decode(ini_read_string(base64_encode("Player Inventory"), string(i) + " amount", base64_encode("1"))));
            ini_close();
            addToInv(test);
            ini_open("save.dat");
            instance_deactivate_object(test);
            break;
        case "comestible":
            test = instance_create(0, 0, obj_comestible);
            test.nutrition = real(base64_decode(ini_read_string(base64_encode("Player Inventory"), string(i) + " nutrition", base64_encode(""))));
            test.itemType = itemType;
            test.name = base64_decode(ini_read_string(base64_encode("Player Inventory"), string(i) + " name", ""));
            test.description = base64_decode(ini_read_string(base64_encode("Player Inventory"), string(i) + " description", base64_encode("")));
            test.amount = real(base64_decode(ini_read_string(base64_encode("Player Inventory"), string(i) + " amount", base64_encode("1"))));
            ini_close();
            addToInv(test);
            ini_open("save.dat");
            instance_deactivate_object(test);
            break;
    }
    i++;
}
random_set_seed(real(base64_decode(ini_read_string(base64_encode("Player Values"), "seed", base64_encode("0")))));
ini_close();
file_delete("save.dat");
