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
    test = noone;
    switch (name)
    {
        case "orc":
            test = instance_create(real(base64_decode(ini_read_string(base64_encode("Enemy Values"), string(a) + " x", base64_encode("")))), real(base64_decode(ini_read_string(base64_encode("Enemy Values"), string(a) + " y", base64_encode("")))), obj_orc);
            break;
        case "kobold":
            test = instance_create(real(base64_decode(ini_read_string(base64_encode("Enemy Values"), string(a) + " x", base64_encode("")))), real(base64_decode(ini_read_string(base64_encode("Enemy Values"), string(a) + " y", base64_encode("")))), obj_kobold);
            break;
        case "rat":
            test = instance_create(real(base64_decode(ini_read_string(base64_encode("Enemy Values"), string(a) + " x", base64_encode("")))), real(base64_decode(ini_read_string(base64_encode("Enemy Values"), string(a) + " y", base64_encode("")))), obj_rat);
            break;
        case "newt":
            test = instance_create(real(base64_decode(ini_read_string(base64_encode("Enemy Values"), string(a) + " x", base64_encode("")))), real(base64_decode(ini_read_string(base64_encode("Enemy Values"), string(a) + " y", base64_encode("")))), obj_newt);
            break;
        case "zombie":
            test = instance_create(real(base64_decode(ini_read_string(base64_encode("Enemy Values"), string(a) + " x", base64_encode("")))), real(base64_decode(ini_read_string(base64_encode("Enemy Values"), string(a) + " y", base64_encode("")))), obj_zombie);
            break;
        case "balrog":
            test = instance_create(real(base64_decode(ini_read_string(base64_encode("Enemy Values"), string(a) + " x", base64_encode("")))), real(base64_decode(ini_read_string(base64_encode("Enemy Values"), string(a) + " y", base64_encode("")))), obj_balrog);
            break;
        case "homunculus":
            test = instance_create(real(base64_decode(ini_read_string(base64_encode("Enemy Values"), string(a) + " x", base64_encode("")))), real(base64_decode(ini_read_string(base64_encode("Enemy Values"), string(a) + " y", base64_encode("")))), obj_homunculus);
            break;
    }
    test.name = name;
    test.maxHP = real(base64_decode(ini_read_string(base64_encode("Enemy Values"), string(a) + " maxHP", base64_encode("1"))));
    test.attack = real(base64_decode(ini_read_string(base64_encode("Enemy Values"), string(a) + " damage", base64_encode("1"))));
    test.moved = real(base64_decode(ini_read_string(base64_encode("Enemy Values"), string(a) + " moved", base64_encode("0"))));
    test.gold = real(base64_decode(ini_read_string(base64_encode("Enemy Values"), string(a) + " gold", base64_encode("0"))));
    test.hp = real(base64_decode(ini_read_string(base64_encode("Enemy Values"), string(a) + " hp", base64_encode("1"))));
    test.ac = real(base64_decode(ini_read_string(base64_encode("Enemy Values"), string(a) + " ac", base64_encode("1"))));
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
                target.weight = real(base64_decode(ini_read_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + " weight", base64_encode("1"))));
                target.name = base64_decode(ini_read_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + " name", base64_encode("")));
                target.effect = base64_decode(ini_read_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + " effect", base64_encode("")));
                target.buc = base64_decode(ini_read_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + " buc", base64_encode("")));
                target.itemType = base64_decode(ini_read_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + " itemType", base64_encode("")));
                target.appearance = base64_decode(ini_read_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + " appearance", base64_encode("")));
                target.price = real(base64_decode(ini_read_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + " price", base64_encode("0"))));
                break;
            case "spellbook":
                target = instance_create(_x, _y, obj_spellbook);
                target.price = real(base64_decode(ini_read_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + " price", base64_encode("1"))));
                target.name = base64_decode(ini_read_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + " name", base64_encode("")));
                target.itemType = base64_decode(ini_read_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + " itemType", base64_encode("")));
                target.appearance = base64_decode(ini_read_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + " appearance", base64_encode("")));
                target.weight = real(base64_decode(ini_read_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + " weight", base64_encode("1"))));
                break;
            case "armor":
                target = instance_create(_x, _y, obj_armor);
                target.price = real(base64_decode(ini_read_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + " price", base64_encode("1"))));
                target.name = base64_decode(ini_read_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + " name", base64_encode("")));
                target.itemType = base64_decode(ini_read_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + " itemType", base64_encode("")));
                target.appearance = base64_decode(ini_read_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + " appearance", base64_encode("")));
                target.slot =  base64_decode(ini_read_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + " slot", ""));
                target.weight = real(base64_decode(ini_read_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + " weight", base64_encode("1"))));
                target.ac = real(base64_decode(ini_read_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + " ac", base64_encode("1"))));
                target.mc = real(base64_decode(ini_read_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + " mc", base64_encode("1"))));
                target.effect =  base64_decode(ini_read_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + " effect", ""));
                target.buc =  base64_decode(ini_read_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + " buc", ""));
                break;
            case "amulet":
                target = instance_create(_x, _y, obj_amulet);
                target.price = real(base64_decode(ini_read_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + " price", base64_encode("1"))));
                target.name = base64_decode(ini_read_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + " name", base64_encode("")));
                target.itemType = base64_decode(ini_read_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + " itemType", base64_encode("")));
                target.appearance = base64_decode(ini_read_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + " appearance", base64_encode("")));
                target.buc = base64_decode(ini_read_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + " buc", base64_encode("")));
                target.weight = real(base64_decode(ini_read_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + " weight", base64_encode("1"))));
                break;
            case "down":
                instance_create(_x, _y, obj_down);
                break;
            case "up":
                instance_create(_x, _y, obj_up);
                break;
            case "ring":
                target = instance_create(_x, _y, obj_ring);
                target.price = real(base64_decode(ini_read_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + " price", base64_encode("1"))));
                target.name = base64_decode(ini_read_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) +  " name", base64_encode("")));
                target.itemType = base64_decode(ini_read_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + " itemType", base64_encode("")));
                target.apperance = base64_decode(ini_read_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + " appearance", base64_encode("")));
                target.weight = real(base64_decode(ini_read_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + " weight", base64_encode("1"))));
                target.buc = base64_decode(ini_read_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + " buc", base64_encode("")));
                target.effect = base64_decode(ini_read_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + " effect", base64_encode("")));
                break;
            case "potion":
                target = instance_create(_x, _y, obj_potion);
                target.price = real(base64_decode(ini_read_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + " price", base64_encode("1"))));
                target.name = base64_decode(ini_read_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + " name", base64_encode("")));
                target.itemType = base64_decode(ini_read_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + " itemType", base64_encode("")));
                target.appearance = base64_decode(ini_read_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + " apperance", base64_encode("")));
                target.weight = real(base64_decode(ini_read_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + " weight", base64_encode(""))));
                break;
            case "wand":
                target = instance_create(_x, _y, obj_wand);
                target.price = real(base64_decode(ini_read_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + " price", base64_encode("1"))));
                target.name = base64_decode(ini_read_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + " name", base64_encode("")));
                target.itemType = base64_decode(ini_read_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + " itemType", base64_encode("")));
                target.appearance = base64_decode(ini_read_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + " description", base64_encode("")));
                target.weight = real(base64_decode(ini_read_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + " weight", base64_encode("1"))));
                target.charges = real(base64_decode(ini_read_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + " charges", base64_encode("1"))));
                target.effect = base64_decode(ini_read_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + " effect", base64_encode("")));
                break;
            case "comestible":
                target = instance_create(_x, _y, obj_comestible);
                target.name = base64_decode(ini_read_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + " name", base64_encode("")));
                target.itemType = base64_decode(ini_read_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + " itemType", base64_encode("")));
                target.appearance = base64_decode(ini_read_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + " appearance", base64_encode("")));
                target.nutrition = real(base64_decode(ini_read_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + " nutrition", base64_encode("1"))));
                target.price = real(base64_decode(ini_read_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + " price", base64_encode("1"))));
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
            test.appearance = base64_decode(ini_read_string(base64_encode("Player Inventory"), string(i) + " appearance", base64_encode("")));
            test.price = real(base64_decode(string(ini_read_string(base64_encode("Player Inventory"), string(i) + " price", base64_encode("1")))));
            test.buc = base64_decode(ini_read_string(base64_encode("Player Inventory"), string(i) + " buc", base64_encode("")));
            test.weight = real(base64_decode(string(ini_read_string(base64_encode("Player Inventory"), string(i) + " weight", base64_encode("1")))));
            ini_close();
            addToInv(test);
            ini_open("save.dat");
            instance_deactivate_object(test);
            break;
        case "ring":
            test = instance_create(0, 0, obj_ring);
            test.itemType = itemType;
            test.name = base64_decode(ini_read_string(base64_encode("Player Inventory"), string(i) + " name", base64_encode("")));
            test.appearance = base64_decode(ini_read_string(base64_encode("Player Inventory"), string(i) + " appearance", base64_encode("")));
            test.price = real(base64_decode(ini_read_string(base64_encode("Player Inventory"), string(i) + " price", base64_encode("1"))));
            test.effect = base64_decode(ini_read_string(base64_encode("Player Inventory"), string(i) + " effect", base64_encode("")));
            test.buc = base64_decode(ini_read_string(base64_encode("Player Inventory"), string(i) + " buc", base64_encode("")));
            test.weight = real(base64_decode(ini_read_string(base64_encode("Player Inventory"), string(i) + " weight", base64_encode("1"))));
            ini_close();
            addToInv(test);
            ini_open("save.dat");
            instance_deactivate_object(test);
            break;
        case "potion":
            test = instance_create(0, 0, obj_potion);
            test.itemType = itemType;
            test.name = base64_decode(ini_read_string(base64_encode("Player Inventory"), string(i) + " name", base64_encode("")));
            test.appearance = base64_decode(ini_read_string(base64_encode("Player Inventory"), string(i) + " appearance", base64_encode("")));
            test.price = real(base64_decode(ini_read_string(base64_encode("Player Inventory"), string(i) + " price", base64_encode("1"))));
            test.weight = real(base64_decode(ini_read_string(base64_encode("Player Inventory"), string(i) + " weight", base64_encode("1"))));
            ini_close();
            addToInv(test);
            ini_open("save.dat");
            instance_deactivate_object(test);
            break;
        case "armor":
            test = instance_create(0, 0, obj_armor);
            test.itemType = itemType;
            test.name = base64_decode(ini_read_string(base64_encode("Player Inventory"), string(i) + " name", ""));
            test.apperance = base64_decode(ini_read_string(base64_encode("Player Inventory"), string(i) + " appearance", ""));
            test.price = real(base64_decode(ini_read_string(base64_encode("Player Inventory"), string(i) + " price", base64_encode(string(1)))));
            test.ac = real(base64_decode(ini_read_string(base64_encode("Player Inventory"), string(i) + " ac", base64_encode(string(1)))));
            test.mc = real(base64_decode(ini_read_string(base64_encode("Player Inventory"), string(i) + " mc", base64_encode(string(1)))));
            test.weight = real(base64_decode(ini_read_string(base64_encode("Player Inventory"), string(i) + " weight", base64_encode(string(1)))));
            test.slot = base64_decode(ini_read_string(base64_encode("Player Inventory"), string(i) + " slot", ""));
            test.effect = base64_decode(ini_read_string(base64_encode("Player Inventory"), string(i) + " effect", ""));
            test.buc = base64_decode(ini_read_string(base64_encode("Player Inventory"), string(i) + " buc", ""));
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
            test.skill = base64_decode(ini_read_string(base64_encode("Player Inventory"), string(i) + " skill", ""));
            test.buc = base64_decode(ini_read_string(base64_encode("Player Inventory"), string(i) + " buc", ""));
            ini_close();
            addToInv(test);
            ini_open("save.dat");
            instance_deactivate_object(test);
            break;
        case "scroll":
            test = instance_create(0, 0, obj_scroll);
            test.itemType = itemType;
            test.name = base64_decode(ini_read_string(base64_encode("Player Inventory"), string(i) + " name", base64_encode("")));
            test.apperance = base64_decode(ini_read_string(base64_encode("Player Inventory"), string(i) + " appearance", base64_encode("")));
            test.price = real(base64_decode(ini_read_string(base64_encode("Player Inventory"), string(i) + " price", base64_encode("1"))));
            test.weight = real(base64_decode(ini_read_string(base64_encode("Player Inventory"), string(i) + " weight", base64_encode("1"))));
            test.effect = base64_decode(ini_read_string(base64_encode("Player Inventory"), string(i) + " effect", base64_encode("")));
            test.buc = base64_decode(ini_read_string(base64_encode("Player Inventory"), string(i) + " buc", base64_encode("")));
            ini_close();
            addToInv(test);
            ini_open("save.dat");
            instance_deactivate_object(test);
            break;
        case "spellbook":
            test = instance_create(0, 0, obj_spellbook);
            test.itemType = itemType;
            test.name = base64_decode(ini_read_string(base64_encode("Player Inventory"), string(i) + " name", ""));
            test.description = base64_decode(ini_read_string(base64_encode("Player Inventory"), string(i) + " appearance", ""));
            test.price = real(base64_decode(ini_read_string(base64_encode("Player Inventory"), string(i) + " price", base64_encode("1"))));
            test.weight = real(base64_decode(ini_read_string(base64_encode("Player Inventory"), string(i) + " weight", base64_encode("1"))));
            ini_close();
            addToInv(test);
            ini_open("save.dat");
            instance_deactivate_object(test);
            break;
        case "wand":
            test = instance_create(0, 0, obj_wand);
            test.itemType = itemType;
            test.name = base64_decode(ini_read_string(base64_encode("Player Inventory"), string(i) + " name", ""));
            test.appearance = base64_decode(ini_read_string(base64_encode("Player Inventory"), string(i) + " appearance", ""));
            test.price = real(base64_decode(ini_read_string(base64_encode("Player Inventory"), string(i) + " price", base64_encode("1"))));
            test.charges = real(base64_decode(ini_read_string(base64_encode("Player Inventory"), string(i) + " charges", base64_encode("1"))));
            test.weight = real(base64_decode(ini_read_string(base64_encode("Player Inventory"), string(i) + " weight", base64_encode("1"))));
            test.effect = base64_decode(ini_read_string(base64_encode("Player Inventory"), string(i) + " effect", ""));
            ini_close();
            addToInv(test);
            ini_open("save.dat");
            instance_deactivate_object(test);
            break;
        case "food":
            test = instance_create(0, 0, obj_comestible);
            test.nutrition = real(base64_decode(ini_read_string(base64_encode("Player Inventory"), string(i) + " nutrition", base64_encode(""))));
            test.itemType = itemType;
            test.name = base64_decode(ini_read_string(base64_encode("Player Inventory"), string(i) + " name", ""));
            test.appearance = base64_decode(ini_read_string(base64_encode("Player Inventory"), string(i) + " description", base64_encode("")));
            test.price = real(base64_decode(ini_read_string(base64_encode("Player Inventory"), string(i) + " price", base64_encode("1"))));
            test.weight = real(base64_decode(ini_read_string(base64_encode("Player Inventory"), string(i) + " weight", base64_encode("1"))));
            ini_close();
            addToInv(test);
            ini_open("save.dat");
            instance_deactivate_object(test);
            break;
    }
    i++;
}
if ini_key_exists(base64_encode("Equipped Stuff"), "wield" + " name")
{
    target = instance_create(600, 600, obj_dagger);
    target.name = base64_decode(ini_read_string(base64_encode("Equipped Stuff"), "wield" + " name", ""));
    target.appearance = base64_decode(ini_read_string(base64_encode("Equipped Stuff"), "wield" + " appearance", ""));
    target.itemType = base64_decode(ini_read_string(base64_encode("Equipped Stuff"), "wield" + " itemType", ""));
    target.price = real(base64_decode(ini_read_string(base64_encode("Equipped Stuff"), "wield" + " price", "")));
    target.weight = real(base64_decode(ini_read_string(base64_encode("Equipped Stuff"), "wield" + " weight", "")));
    target.skill = base64_decode(ini_read_string(base64_encode("Equipped Stuff"), "wield" + " skill", ""));
    target.hands = base64_decode(ini_read_string(base64_encode("Equipped Stuff"), "wield" + " hands", ""));
    target.weaponType = base64_decode(ini_read_string(base64_encode("Equipped Stuff"), "wield" + " weaponType", ""));
    target.toHitBonus = real(base64_decode(ini_read_string(base64_encode("Equipped Stuff"), "wield" + " toHitBonus", "")));
    target.damageSmall[0] = real(base64_decode(ini_read_string(base64_encode("Equipped Stuff"), "wield" + " damageSmall[0]", "")));
    target.damageLarge[0] = real(base64_decode(ini_read_string(base64_encode("Equipped Stuff"), "wield" + " damageLarge[0]", "")));
}
if ini_key_exists(base64_encode("Equipped Stuff"), "putOnRl" + " name")
{
    target = instance_create(600, 600, obj_ring);
    target.name = base64_decode(ini_read_string(base64_encode("Equipped Stuff"), "putOnRl" + " name", ""));
    target.appearance = base64_decode(ini_read_string(base64_encode("Equipped Stuff"), "putOnRl" + " appearance", ""));
    target.itemType = base64_decode(ini_read_string(base64_encode("Equipped Stuff"), "putOnRl" + " itemType", ""));
    target.price = real(base64_decode(ini_read_string(base64_encode("Equipped Stuff"), "putOnRl" + " price", "")));
    target.weight = real(base64_decode(ini_read_string(base64_encode("Equipped Stuff"), "putOnRl" + " weight", "")));
}
if ini_key_exists(base64_encode("Equipped Stuff"), "putOnRr" + " name")
{
    target = instance_create(650, 650, obj_ring);
    target.name = base64_decode(ini_read_string(base64_encode("Equipped Stuff"), "putOnRr" + " name", ""));
    target.appearance = base64_decode(ini_read_string(base64_encode("Equipped Stuff"), "putOnRr" + " appearance", ""));
    target.itemType = base64_decode(ini_read_string(base64_encode("Equipped Stuff"), "putOnRr" + " itemType", ""));
    target.price = real(base64_decode(ini_read_string(base64_encode("Equipped Stuff"), "putOnRr" + " price", "")));
    target.weight = real(base64_decode(ini_read_string(base64_encode("Equipped Stuff"), "putOnRr" + " weight", "")));
}
if ini_key_exists(base64_encode("Equipped Stuff"), "putOnA" + " name")
{
    target = instance_create(600, 600, obj_amulet);
    target.name = base64_decode(ini_read_string(base64_encode("Equipped Stuff"), "putOnA" + " name", ""));
    target.appearance = base64_decode(ini_read_string(base64_encode("Equipped Stuff"), "putOnA" + " appearance", ""));
    target.itemType = base64_decode(ini_read_string(base64_encode("Equipped Stuff"), "putOnA" + " itemType", ""));
    target.price = real(base64_decode(ini_read_string(base64_encode("Equipped Stuff"), "putOnA" + " price", "")));
    target.weight = real(base64_decode(ini_read_string(base64_encode("Equipped Stuff"), "putOnA" + " weight", "")));
}
if ini_key_exists(base64_encode("Equipped Stuff"), "wearCloak" + " name")
{
    target = instance_create(600, 600, obj_robe);
    target.name = base64_decode(ini_read_string(base64_encode("Equipped Stuff"), "wearCloak" + " name", ""));
    target.appearance = base64_decode(ini_read_string(base64_encode("Equipped Stuff"), "wearCloak" + " appearance", ""));
    target.itemType = base64_decode(ini_read_string(base64_encode("Equipped Stuff"), "wearCloak" + " itemType", ""));
    target.price = real(base64_decode(ini_read_string(base64_encode("Equipped Stuff"), "wearCloak" + " price", "")));
    target.weight = real(base64_decode(ini_read_string(base64_encode("Equipped Stuff"), "wearCloak" + " weight", "")));
    target.buc = base64_decode(ini_read_string(base64_encode("Equipped Stuff"), "wearCloak" + " buc", ""));
    target.slot = base64_decode(ini_read_string(base64_encode("Equipped Stuff"), "wearCloak" + " slot", ""));
    target.effect = base64_decode(ini_read_string(base64_encode("Equipped Stuff"), "wearCloak" + " effect", ""));
    target.ac = real(base64_decode(ini_read_string(base64_encode("Equipped Stuff"), "wearCloak" + " ac", "")));
    target.mc = real(base64_decode(ini_read_string(base64_encode("Equipped Stuff"), "wearCloak" + " mc", "")));
}
if ini_key_exists(base64_encode("Equipped Stuff"), "wearShirt" + " name")
{
    target = instance_create(600, 600, obj_tShirt);
    target.name = base64_decode(ini_read_string(base64_encode("Equipped Stuff"), "wearShirt" + " name", ""));
    target.appearance = base64_decode(ini_read_string(base64_encode("Equipped Stuff"), "wearShirt" + " appearance", ""));
    target.itemType = base64_decode(ini_read_string(base64_encode("Equipped Stuff"), "wearShirt" + " itemType", ""));
    target.price = real(base64_decode(ini_read_string(base64_encode("Equipped Stuff"), "wearShirt" + " price", "")));
    target.weight = real(base64_decode(ini_read_string(base64_encode("Equipped Stuff"), "wearShirt" + " weight", "")));
    target.buc = base64_decode(ini_read_string(base64_encode("Equipped Stuff"), "wearShirt" + " buc", ""));
    target.slot = base64_decode(ini_read_string(base64_encode("Equipped Stuff"), "wearShirt" + " slot", ""));
    target.effect = base64_decode(ini_read_string(base64_encode("Equipped Stuff"), "wearShirt" + " effect", ""));
    target.ac = real(base64_decode(ini_read_string(base64_encode("Equipped Stuff"), "wearShirt" + " ac", "")));
    target.mc = real(base64_decode(ini_read_string(base64_encode("Equipped Stuff"), "wearShirt" + " mc", "")));
}
if ini_key_exists(base64_encode("Equipped Stuff"), "wearBodyArmor" + " name")
{
    target = instance_create(600, 600, obj_leatherJacket);
    target.name = base64_decode(ini_read_string(base64_encode("Equipped Stuff"), "wearBodyArmor" + " name", ""));
    target.appearance = base64_decode(ini_read_string(base64_encode("Equipped Stuff"), "wearBodyArmor" + " appearance", ""));
    target.itemType = base64_decode(ini_read_string(base64_encode("Equipped Stuff"), "wearBodyArmor" + " itemType", ""));
    target.price = real(base64_decode(ini_read_string(base64_encode("Equipped Stuff"), "wearBodyArmor" + " price", "")));
    target.weight = real(base64_decode(ini_read_string(base64_encode("Equipped Stuff"), "wearBodyArmor" + " weight", "")));    
    target.buc = base64_decode(ini_read_string(base64_encode("Equipped Stuff"), "wearBodyArmor" + " buc", ""));
    target.slot = base64_decode(ini_read_string(base64_encode("Equipped Stuff"), "wearBodyArmor" + " slot", ""));
    target.effect = base64_decode(ini_read_string(base64_encode("Equipped Stuff"), "wearBodyArmor" + " effect", ""));
    target.ac = real(base64_decode(ini_read_string(base64_encode("Equipped Stuff"), "wearBodyArmor" + " ac", "")));
    target.mc = real(base64_decode(ini_read_string(base64_encode("Equipped Stuff"), "wearBodyArmor" + " mc", "")));
}
if ini_key_exists(base64_encode("Equipped Stuff"), "wearHelm" + " name")
{
    target = instance_create(600, 600, obj_helmet);
    target.name = base64_decode(ini_read_string(base64_encode("Equipped Stuff"), "wearHelm" + " name", ""));
    target.appearance = base64_decode(ini_read_string(base64_encode("Equipped Stuff"), "wearHelm" + " appearance", ""));
    target.itemType = base64_decode(ini_read_string(base64_encode("Equipped Stuff"), "wearHelm" + " itemType", ""));
    target.price = real(base64_decode(ini_read_string(base64_encode("Equipped Stuff"), "wearHelm" + " price", "")));
    target.weight = real(base64_decode(ini_read_string(base64_encode("Equipped Stuff"), "wearHelm" + " weight", "")));
    target.buc = base64_decode(ini_read_string(base64_encode("Equipped Stuff"), "wearHelm" + " buc", ""));
    target.slot = base64_decode(ini_read_string(base64_encode("Equipped Stuff"), "wearHelm" + " slot", ""));
    target.effect = base64_decode(ini_read_string(base64_encode("Equipped Stuff"), "wearHelm" + " effect", ""));
    target.ac = real(base64_decode(ini_read_string(base64_encode("Equipped Stuff"), "wearHelm" + " ac", "")));
    target.mc = real(base64_decode(ini_read_string(base64_encode("Equipped Stuff"), "wearHelm" + " mc", "")));
}
if ini_key_exists(base64_encode("Equipped Stuff"), "wearGloves" + " name")
{
    target = instance_create(600, 600, obj_leatherGloves);
    target.name = base64_decode(ini_read_string(base64_encode("Equipped Stuff"), "wearGloves" + " name", ""));
    target.appearance = base64_decode(ini_read_string(base64_encode("Equipped Stuff"), "wearGloves" + " appearance", ""));
    target.itemType = base64_decode(ini_read_string(base64_encode("Equipped Stuff"), "wearGloves" + " itemType", ""));
    target.price = real(base64_decode(ini_read_string(base64_encode("Equipped Stuff"), "wearGloves" + " price", "")));
    target.weight = real(base64_decode(ini_read_string(base64_encode("Equipped Stuff"), "wearGloves" + " weight", "")));
    target.buc = base64_decode(ini_read_string(base64_encode("Equipped Stuff"), "wearGloves" + " buc", ""));
    target.slot = base64_decode(ini_read_string(base64_encode("Equipped Stuff"), "wearGloves" + " slot", ""));
    target.effect = base64_decode(ini_read_string(base64_encode("Equipped Stuff"), "wearGloves" + " effect", ""));
    target.ac = real(base64_decode(ini_read_string(base64_encode("Equipped Stuff"), "wearGloves" + " ac", "")));
    target.mc = real(base64_decode(ini_read_string(base64_encode("Equipped Stuff"), "wearGloves" + " mc", "")));
}
if ini_key_exists(base64_encode("Equipped Stuff"), "wearShield" + " name")
{
    target = instance_create(600, 600, obj_smallShield);
    target.name = base64_decode(ini_read_string(base64_encode("Equipped Stuff"), "wearShield" + " name", ""));
    target.appearance = base64_decode(ini_read_string(base64_encode("Equipped Stuff"), "wearShield" + " appearance", ""));
    target.itemType = base64_decode(ini_read_string(base64_encode("Equipped Stuff"), "wearShield" + " itemType", ""));
    target.price = real(base64_decode(ini_read_string(base64_encode("Equipped Stuff"), "wearShield" + " price", "")));
    target.weight = real(base64_decode(ini_read_string(base64_encode("Equipped Stuff"), "wearShield" + " weight", "")));
    target.buc = base64_decode(ini_read_string(base64_encode("Equipped Stuff"), "wearShield" + " buc", ""));
    target.slot = base64_decode(ini_read_string(base64_encode("Equipped Stuff"), "wearShield" + " slot", ""));
    target.effect = base64_decode(ini_read_string(base64_encode("Equipped Stuff"), "wearShield" + " effect", ""));
    target.ac = real(base64_decode(ini_read_string(base64_encode("Equipped Stuff"), "wearShield" + " ac", "")));
    target.mc = real(base64_decode(ini_read_string(base64_encode("Equipped Stuff"), "wearShield" + " mc", "")));
}
if ini_key_exists(base64_encode("Equipped Stuff"), "wearBoots" + " name")
{
    target = instance_create(600, 600, obj_lowBoots);
    target.name = base64_decode(ini_read_string(base64_encode("Equipped Stuff"), "wearBoots" + " name", ""));
    target.appearance = base64_decode(ini_read_string(base64_encode("Equipped Stuff"), "wearBoots" + " appearance", ""));
    target.itemType = base64_decode(ini_read_string(base64_encode("Equipped Stuff"), "wearBoots" + " itemType", ""));
    target.price = real(base64_decode(ini_read_string(base64_encode("Equipped Stuff"), "wearBoots" + " price", "")));
    target.weight = real(base64_decode(ini_read_string(base64_encode("Equipped Stuff"), "wearBoots" + " weight", "")));
    target.buc = base64_decode(ini_read_string(base64_encode("Equipped Stuff"), "wearBoots" + " buc", ""));
    target.slot = base64_decode(ini_read_string(base64_encode("Equipped Stuff"), "wearBoots" + " slot", ""));
    target.effect = base64_decode(ini_read_string(base64_encode("Equipped Stuff"), "wearBoots" + " effect", ""));
    target.ac = real(base64_decode(ini_read_string(base64_encode("Equipped Stuff"), "wearBoots" + " ac", "")));
    target.mc = real(base64_decode(ini_read_string(base64_encode("Equipped Stuff"), "wearBoots" + " mc", "")));
}
if ini_key_exists(base64_encode("Equipped Stuff"), "quiver" + " name")
{
    target = instance_create(600, 600, obj_boomerang);
    target.name = base64_decode(ini_read_string(base64_encode("Equipped Stuff"), "quiver" + " name", ""));
    target.appearance = base64_decode(ini_read_string(base64_encode("Equipped Stuff"), "quiver" + " appearance", ""));
    target.itemType = base64_decode(ini_read_string(base64_encode("Equipped Stuff"), "quiver" + " itemType", ""));
    target.price = real(base64_decode(ini_read_string(base64_encode("Equipped Stuff"), "quiver" + " price", "")));
    target.weight = real(base64_decode(ini_read_string(base64_encode("Equipped Stuff"), "quiver" + " weight", "")));
    target.skill = base64_decode(ini_read_string(base64_encode("Equipped Stuff"), "quiver" + " skill", ""));
    target.hands = base64_decode(ini_read_string(base64_encode("Equipped Stuff"), "quiver" + " hands", ""));
    target.weaponType = base64_decode(ini_read_string(base64_encode("Equipped Stuff"), "quiver" + " weaponType", ""));
    target.toHitBonus = real(base64_decode(ini_read_string(base64_encode("Equipped Stuff"), "quiver" + " toHitBonus", "")));
    target.damageSmall[0] = real(base64_decode(ini_read_string(base64_encode("Equipped Stuff"), "quiver" + " damageSmall[0]", "")));
    target.damageLarge[0] = real(base64_decode(ini_read_string(base64_encode("Equipped Stuff"), "quiver" + " damageLarge[0]", "")));
}



random_set_seed(real(base64_decode(ini_read_string(base64_encode("Player Values"), "seed", base64_encode("0")))));
ini_close();
file_delete("save.dat");
