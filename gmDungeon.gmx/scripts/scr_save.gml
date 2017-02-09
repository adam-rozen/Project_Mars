if (file_exists("inventory.dat"))
{
    file_copy("inventory.dat", "save.dat");
}
ini_open("save.dat");
ini_write_string(base64_encode("Player Values"), "x", base64_encode(string(x)));
ini_write_string(base64_encode("Player Values"), "y", base64_encode(string(y)));
ini_write_string(base64_encode("Player Values"), "floor", base64_encode(string(global.toughness)));
ini_write_string(base64_encode("Player Values"), "class", base64_encode(global.class));
ini_write_string(base64_encode("Player Values"), "turn", base64_encode(string(turn)));
ini_write_string(base64_encode("Player Values"), "maxHP", base64_encode(string(maxHP)));
ini_write_string(base64_encode("Player Values"), "hp", base64_encode(string(hp)));
ini_write_string(base64_encode("Player Values"), "maxPW", base64_encode(string(maxPW)));
ini_write_string(base64_encode("Player Values"), "pw", base64_encode(string(pw)));
ini_write_string(base64_encode("Player Values"), "xp", base64_encode(string(xp)));
ini_write_string(base64_encode("Player Values"), "ac", base64_encode(string(ac)));
ini_write_string(base64_encode("Player Values"), "strength", base64_encode(string(strength)));
ini_write_string(base64_encode("Player Values"), "charisma", base64_encode(string(charisma)));
ini_write_string(base64_encode("Player Values"), "constitution", base64_encode(string(constitution)));
ini_write_string(base64_encode("Player Values"), "dexterity", base64_encode(string(dexterity)));
ini_write_string(base64_encode("Player Values"), "wisdom", base64_encode(string(wisdom)));
ini_write_string(base64_encode("Player Values"), "attack", base64_encode(string(attack)));
ini_write_string(base64_encode("Player Values"), "intelligence", base64_encode(string(intelligence)));
ini_write_string(base64_encode("Player Values"), "level", base64_encode(string(level)));
ini_write_string(base64_encode("Player Values"), "gold", base64_encode(string(gold)));
ini_write_string(base64_encode("Player Values"), "playerNutrition", base64_encode(string(playerNutrition)));
ini_write_string(base64_encode("Player Values"), "seed", base64_encode(string(random_get_seed())));
for (a = 0; a <= instance_number(obj_enemy); a++)
{
    ida = instance_find(obj_enemy, a);
    ini_write_string(base64_encode("Enemy Values"), string(a) + " x", base64_encode(string(ida.x)));
    ini_write_string(base64_encode("Enemy Values"), string(a) + " y", base64_encode(string(ida.y)));
    ini_write_string(base64_encode("Enemy Values"), string(a) + " hp", base64_encode(string(ida.hp)));
    ini_write_string(base64_encode("Enemy Values"), string(a) + " name", base64_encode(string(ida.name)));
    ini_write_string(base64_encode("Enemy Values"), string(a) + " gold", base64_encode(string(ida.gold)));
    ini_write_string(base64_encode("Enemy Values"), string(a) + " moved", base64_encode(string(ida.moved)));
    ini_write_string(base64_encode("Enemy Values"), string(a) + " attack", base64_encode(string(ida.attack)));
    ini_write_string(base64_encode("Enemy Values"), string(a) + " maxHP", base64_encode(string(ida.maxHP)));    
    ini_write_string(base64_encode("Enemy Values"), string(a) + " xp", base64_encode(string(ida.xp)));
    ini_write_string(base64_encode("Enemy Values"), string(a) + " level", base64_encode(string(ida.level)));
}
ini_write_string(base64_encode("Dungeon Properties"), "world_w", base64_encode(string(31)));
ini_write_string(base64_encode("Dungeon Properties"), "world_h", base64_encode(string(31)));
ini_write_string(base64_encode("Dungeon Properties"), "wsiz1", base64_encode(string(32)));
ini_write_string(base64_encode("Dungeon Properties"), "wsiz2", base64_encode(string(64)));
for (i = 0; i <= 31 + 1; i += .5)
{
    for (j = 0; j <= 31 + 1; j += .5)
    {
        _x = i * 64 - 32;
        _y = j * 64 - 32;
        if (place_meeting(_x, _y, obj_wall))
        {
            ini_write_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + " type", base64_encode("wall"));
        }
        else if (place_meeting(_x, _y, obj_weapon))
        {
            ini_write_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + " skill", base64_encode(instance_place(_x, _y, obj_weapon).skill));
            ini_write_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + " price", base64_encode(string(instance_place(_x, _y, obj_weapon).price)));
            ini_write_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + " appearance", base64_encode(instance_place(_x, _y, obj_weapon).appearance));
            ini_write_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + " toHitBonus", base64_encode(string(instance_place(_x, _y, obj_weapon).toHitBonus)));
            ini_write_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + " hands", base64_encode(string(instance_place(_x, _y, obj_weapon).hands)));
            ini_write_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + " weight", base64_encode(string(instance_place(_x, _y, obj_weapon).weight)));
            ini_write_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + " damageSmall[0]", base64_encode(string(instance_place(_x, _y, obj_weapon).damageSmall[0])));
            ini_write_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + " damageLarge[0]", base64_encode(string(instance_place(_x, _y, obj_weapon).damageLarge[0])));
            ini_write_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + " itemType", base64_encode(instance_place(_x, _y, obj_weapon).itemType));
            ini_write_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + " weaponType", base64_encode(instance_place(_x, _y, obj_weapon).weaponType));
            ini_write_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + " type", base64_encode("weapon"));
        }
        else if (place_meeting(_x, _y, obj_gem))
        {
            ini_write_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + " type", base64_encode(instance_place(_x, _y, obj_gem).type));
            ini_write_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + " itemType", base64_encode(instance_place(_x, _y, obj_gem).itemType));
            ini_write_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + " name", base64_encode(instance_place(_x, _y, obj_gem).name));
            ini_write_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + " price", base64_encode(string(instance_place(_x, _y, obj_gem).price)));
            ini_write_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + " description", base64_encode(instance_place(_x, _y, obj_gem).description));
            ini_write_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + " amount", base64_encode(string(instance_place(_x, _y, obj_gem).amount)));
        }
        else if (place_meeting(_x, _y, obj_gold))
        {
            ini_write_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + " type", base64_encode("gold"));
            ini_write_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + "amount", base64_encode(string(instance_place(_x, _y, obj_gold).amount)));
        }
        else if (place_meeting(_x, _y, obj_scroll))
        {
            ini_write_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + " type", base64_encode("scroll"));
            ini_write_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + "amount", base64_encode(string(instance_place(_x, _y, obj_scroll).amount)));
            ini_write_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + "name", base64_encode(instance_place(_x, _y, obj_scroll).name));
            ini_write_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + "itemType", base64_encode(instance_place(_x, _y, obj_scroll).itemType));
            ini_write_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + "description", base64_encode(instance_place(_x, _y, obj_scroll).description));
            ini_write_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + "price", base64_encode(string(instance_place(_x, _y, obj_scroll).name)));
        }
        else if (place_meeting(_x, _y, obj_spellbook))
        {
            ini_write_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + " type", base64_encode("spellbook"));
            ini_write_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + "price", base64_encode(string(instance_place(_x, _y, obj_spellbook).price)));
            ini_write_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + "itemType", base64_encode(instance_place(_x, _y, obj_spellbook).itemType));
            ini_write_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + "description", base64_encode(instance_place(_x, _y, obj_spellbook).description));
            ini_write_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + "name", base64_encode(instance_place(_x, _y, obj_spellbook).name));
            ini_write_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + "amount", base64_encode(string(instance_place(_x, _y, obj_spellbook).amount)));
        }
        else if (place_meeting(_x, _y, obj_armor))
        {
            ini_write_string(base64_encode("Dungeon Properties"), base64_encode(string(i) + " type"), base64_encode(argument0.type));
            ini_write_string(base64_encode("Dungeon Properties"), base64_encode(string(i) + " itemType"), base64_encode(argument0.itemType));
            ini_write_string(base64_encode("Dungeon Properties"), base64_encode(string(i) + " name"), base64_encode(argument0.name));
            ini_write_string(base64_encode("Dungeon Properties"), base64_encode(string(i) + " description"), base64_encode(argument0.description));
            ini_write_string(base64_encode("Dungeon Properties"), base64_encode(string(i) + " price"), base64_encode(string(argument0.price)));
            ini_write_string(base64_encode("Dungeon Properties"), base64_encode(string(i) + " amount"), base64_encode(argument0.amount));
        }
        else if (place_meeting(_x, _y, obj_down))
        {
            ini_write_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + " type", base64_encode("down"));
        }
        else if (place_meeting(_x, _y, obj_up))
        {
            ini_write_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + " type", base64_encode("up"));
        }
        else if (place_meeting(_x, _y, obj_comestible))
        {
            ini_write_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + " type", base64_encode("comestible"));
            ini_write_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + "nutrition", base64_encode(string(instance_place(_x, _y, obj_foodRation).nutrition)));
            ini_write_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + "itemType", base64_encode(instance_place(_x, _y, obj_foodRation).itemType));
            ini_write_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + "type", base64_encode(instance_place(_x, _y, obj_foodRation).type));
            ini_write_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + "name", base64_encode(instance_place(_x, _y, obj_foodRation).name));
            ini_write_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + "amount", base64_encode(string(instance_place(_x, _y, obj_foodRation).amount)));
            ini_write_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + "description", base64_encode(instance_place(_x, _y, obj_foodRation).description));
        }
        else if (place_meeting(_x, _y, obj_amulet))
        {
            ini_write_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + " type", base64_encode("amulet"));
            ini_write_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + "name", base64_encode(instance_place(_x, _y, obj_amulet).name));
            ini_write_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + "itemType", base64_encode(instance_place(_x, _y, obj_amulet).itemType));
            ini_write_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + "description", base64_encode(instance_place(_x, _y, obj_amulet).description));
            ini_write_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + "amount", base64_encode(string(instance_place(_x, _y, obj_amulet).amount)));
        }
        else if (place_meeting(_x, _y, obj_ring))
        {
            ini_write_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + " type", base64_encode("ring"));
            ini_write_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + "name", base64_encode(instance_place(_x, _y, obj_ring).name));
            ini_write_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + "itemType", base64_encode(instance_place(_x, _y, obj_ring).itemType));
            ini_write_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + "description", base64_encode(instance_place(_x, _y, obj_ring).description));
            ini_write_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + "amount", base64_encode(string(instance_place(_x, _y, obj_ring).amount)));
        }
        else if (place_meeting(_x, _y, obj_potion))
        {
            ini_write_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + " type", base64_encode("potion"));
            ini_write_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + "name", base64_encode(instance_place(_x, _y, obj_potion).name));
            ini_write_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + "itemType", base64_encode(instance_place(_x, _y, obj_potion).itemType));
            ini_write_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + "description", base64_encode(instance_place(_x, _y, obj_potion).description));
            ini_write_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + "amount", base64_encode(string(instance_place(_x, _y, obj_potion).amount)));
        }
        else if (place_meeting(_x, _y, obj_wand))
        {
            ini_write_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + " type", base64_encode("wand"));
            ini_write_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + "name", base64_encode(instance_place(_x, _y, obj_wand).name));
            ini_write_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + "itemType", base64_encode(instance_place(_x, _y, obj_wand).itemType));
            ini_write_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + "description", base64_encode(instance_place(_x, _y, obj_wand).description));
            ini_write_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + "amount", base64_encode(string(instance_place(_x, _y, obj_wand).amount)));
        }
        else if (place_meeting(_x, _y, obj_floor))
        {
            ini_write_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + " type", base64_encode("floor"));
        }
        else if (place_meeting(_x, _y, obj_tool))
        {
            ini_write_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + " type", base64_encode("tool"));
            ini_write_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + "type", base64_encode(instance_place(_x, _y, obj_tool).type));
            ini_write_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + " itemType", base64_encode(instance_place(_x, _y, obj_tool).itemType));
            ini_write_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + " name", base64_encode(instance_place(_x, _y, obj_tool).name));
            ini_write_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + " description", base64_encode(instance_place(_x, _y, obj_tool).description));
            ini_write_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + " price", base64_encode(string(instance_place(_x, _y, obj_tool).price)));
            ini_write_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + " amount", base64_encode(instance_place(_x, _y, obj_tool).amount));
        }
    }
}
ini_close();
if (file_exists("save.dat"))
{
    show_message("Save Complete!");
    game_end();
}
else
{
    show_message("Error while saving");
}
