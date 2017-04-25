if (file_exists("inventory.dat"))
{
    file_copy("inventory.dat", "save.dat");
}
ini_open("save.dat");
ini_write_string(base64_encode("Player Values"), "x", base64_encode(string(x)));
ini_write_string(base64_encode("Player Values"), "y", base64_encode(string(y)));
ini_write_string(base64_encode("Player Values"), "floor", base64_encode(string(global.toughness)));
ini_write_string(base64_encode("Player Values"), "class", base64_encode(global.class));
ini_write_string(base64_encode("Player Values"), "name", base64_encode(name));
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
ini_write_string(base64_encode("Player Values"), "toHitBonus", base64_encode(string(toHitBonus)));
ini_write_string(base64_encode("Player Values"), "damageLarge[0]", base64_encode(string(damageLarge[0])));
ini_write_string(base64_encode("Player Values"), "damageSmall[0]", base64_encode(string(damageSmall[0])));
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
    ini_write_string(base64_encode("Enemy Values"), string(a) + " maxHP", base64_encode(string(ida.maxHP)));    
    /*ini_write_string(base64_encode("Enemy Values"), string(a) + " ac", base64_encode(string(ida.ac)));
    ini_write_string(base64_encode("Enemy Values"), string(a) + " size", base64_encode(string(ida.size)));
    ini_write_string(base64_encode("Enemy Values"), string(a) + " nutrition", base64_encode(string(ida.nutrition)));
    ini_write_string(base64_encode("Enemy Values"), string(a) + " weight", base64_encode(string(ida.weight)));
    ini_write_string(base64_encode("Enemy Values"), string(a) + " genocidable", base64_encode(string(ida.genocidable)));
    ini_write_string(base64_encode("Enemy Values"), string(a) + " frequency", base64_encode(string(ida.frequency)));
    ini_write_string(base64_encode("Enemy Values"), string(a) + " alignment", base64_encode(string(ida.alignment)));
    ini_write_string(base64_encode("Enemy Values"), string(a) + " mr", base64_encode(string(ida.mr)));
    ini_write_string(base64_encode("Enemy Values"), string(a) + " mSpeed", base64_encode(string(ida.mSpeed)));
    ini_write_string(base64_encode("Enemy Values"), string(a) + " level", base64_encode(string(ida.level)));
    ini_write_string(base64_encode("Enemy Values"), string(a) + " difficulty", base64_encode(string(ida.difficulty)));
    ini_write_string(base64_encode("Enemy Values"), string(a) + " damage", base64_encode(string(ida.damage)));*/

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
            target = instance_place(_x, _y, obj_weapon)
            ini_write_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + " skill", base64_encode(target.skill));
            ini_write_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + " price", base64_encode(string(target.price)));
            ini_write_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + " appearance", base64_encode(target.appearance));
            ini_write_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + " toHitBonus", base64_encode(string(target.toHitBonus)));
            ini_write_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + " hands", base64_encode(string(target.hands)));
            ini_write_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + " weight", base64_encode(string(target.weight)));
            ini_write_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + " damageSmall[0]", base64_encode(string(target.damageSmall[0])));
            ini_write_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + " damageLarge[0]", base64_encode(string(target.damageLarge[0])));
            ini_write_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + " itemType", base64_encode(target.itemType));
            ini_write_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + " weaponType", base64_encode(target.weaponType));
            ini_write_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + " name", base64_encode(target.name));
            
        }
        else if (place_meeting(_x, _y, obj_gold))
        {
            ini_write_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + " type", base64_encode("gold"));
            ini_write_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + "amount", base64_encode(string(instance_place(_x, _y, obj_gold).amount)));
        }
        else if (place_meeting(_x, _y, obj_scroll))
        {
            target = instance_place(_x, _y, obj_scroll);
            ini_write_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + "name", base64_encode(target.name));
            ini_write_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + "itemType", base64_encode(target.itemType));
            ini_write_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + "appearance", base64_encode(target.appearance));
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
            target = instance_place(_x, _y, obj_armor);
            ini_write_string(base64_encode("Dungeon Properties"), base64_encode(string(i) + " itemType"), base64_encode(target.itemType));
            ini_write_string(base64_encode("Dungeon Properties"), base64_encode(string(i) + " name"), base64_encode(target.name));
            ini_write_string(base64_encode("Dungeon Properties"), base64_encode(string(i) + " appearance"), base64_encode(target.appearance));
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
            target = instance_place(_x, _y, obj_comestible);    
            ini_write_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + "nutrition", base64_encode(string(instance_place(_x, _y, obj_comestible).nutrition)));
            ini_write_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + "itemType", base64_encode(instance_place(_x, _y, obj_comestible).itemType));
            ini_write_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + "name", base64_encode(instance_place(_x, _y, obj_comestible).name));
            ini_write_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + "price", base64_encode(string(target.price)));
            ini_write_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + "appearance", base64_encode(target.appearance));
        }
        else if (place_meeting(_x, _y, obj_amulet))
        {
            target = instance_place(_x, _y, obj_amulet);
            ini_write_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + "name", base64_encode(target.name));
            ini_write_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + "itemType", base64_encode(target.itemType));
            ini_write_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + "description", base64_encode(target.description));
        }
        else if (place_meeting(_x, _y, obj_ring))
        {
            target = instance_place(_x, _y, obj_ring);
            ini_write_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + "name", base64_encode(target.name));
            ini_write_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + "itemType", base64_encode(target.itemType));
            ini_write_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + "appearance", base64_encode(target.appearance));
        }
        else if (place_meeting(_x, _y, obj_potion))
        {
            target = instance_place(_x, _y, obj_potion);
            ini_write_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + "name", base64_encode(target.name));
            ini_write_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + "itemType", base64_encode(target.itemType));
            ini_write_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + "appearance", base64_encode(target.appearance));
        }
        else if (place_meeting(_x, _y, obj_wand))
        {
            ini_write_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + "name", base64_encode(instance_place(_x, _y, obj_wand).name));
            ini_write_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + "itemType", base64_encode(instance_place(_x, _y, obj_wand).itemType));
            ini_write_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + "description", base64_encode(instance_place(_x, _y, obj_wand).description));
            ini_write_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + "amount", base64_encode(string(instance_place(_x, _y, obj_wand).amount)));
        }
        else if (place_meeting(_x, _y, obj_floor))
        {
            ini_write_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + " type", base64_encode("floor"));
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
