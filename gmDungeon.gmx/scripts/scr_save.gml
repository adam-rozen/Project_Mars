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
            ini_write_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + " weaponType ", base64_encode(target.weaponType));
            ini_write_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + " name", base64_encode(target.name));
            ini_write_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + " buc", base64_encode(target.buc));
            ini_write_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + " type", base64_encode("weapon"));
        }
        else if (place_meeting(_x, _y, obj_gold))
        {
            ini_write_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + " type", base64_encode("gold"));
            ini_write_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + " amount", base64_encode(string(instance_place(_x, _y, obj_gold).amount)));
        }
        else if (place_meeting(_x, _y, obj_scroll))
        {
            target = instance_place(_x, _y, obj_scroll);
            ini_write_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + " type", base64_encode("scroll"));
            ini_write_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + " name", base64_encode(target.name));
            ini_write_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + " itemType", base64_encode(target.itemType));
            ini_write_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + " appearance", base64_encode(target.appearance));
            ini_write_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + " price", base64_encode(string(target.price)));
            ini_write_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + " weight", base64_encode(string(target.weight)));
            ini_write_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + " effect", base64_encode(string(target.effect)));
            ini_write_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + " buc", base64_encode(target.buc));
        }
        else if (place_meeting(_x, _y, obj_spellbook))
        {
            ini_write_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + " type", base64_encode("spellbook"));
            ini_write_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + " price", base64_encode(string(instance_place(_x, _y, obj_spellbook).price)));
            ini_write_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + " itemType", base64_encode(instance_place(_x, _y, obj_spellbook).itemType));
            ini_write_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + " appearance", base64_encode(instance_place(_x, _y, obj_spellbook).appearance));
            ini_write_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + " name", base64_encode(instance_place(_x, _y, obj_spellbook).name));
            ini_write_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + " weight", base64_encode(string(instance_place(_x, _y, obj_spellbook).weight)));
        }
        else if (place_meeting(_x, _y, obj_armor))
        {
            target = instance_place(_x, _y, obj_armor);
            ini_write_string(base64_encode("Dungeon Properties"), base64_encode(string(i) + " itemType"), base64_encode(target.itemType));
            ini_write_string(base64_encode("Dungeon Properties"), base64_encode(string(i) + " name"), base64_encode(target.name));
            ini_write_string(base64_encode("Dungeon Properties"), base64_encode(string(i) + " appearance"), base64_encode(target.appearance));
            ini_write_string(base64_encode("Dungeon Properties"), base64_encode(string(i) + " ac"), base64_encode(string(target.ac)));
            ini_write_string(base64_encode("Dungeon Properties"), base64_encode(string(i) + " price"), base64_encode(string(target.price)));
            ini_write_string(base64_encode("Dungeon Properties"), base64_encode(string(i) + " mc"), base64_encode(string(target.mc)));
            ini_write_string(base64_encode("Dungeon Properties"), base64_encode(string(i) + " slot"), base64_encode(target.slot));
            ini_write_string(base64_encode("Dungeon Properties"), base64_encode(string(i) + " weight"), base64_encode(string(target.weight)));
            ini_write_string(base64_encode("Dungeon Properties"), base64_encode(string(i) + " effect"), base64_encode(target.effect));
            ini_write_string(base64_encode("Dungeon Properties"), base64_encode(string(i) + " buc"), base64_encode(target.buc));
            ini_write_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + " type", base64_encode("armor"));        
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
            ini_write_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + " nutrition", base64_encode(string(target.nutrition)));
            ini_write_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + " itemType", base64_encode(target.itemType));
            ini_write_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + " name", base64_encode(target.name));
            ini_write_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + " price", base64_encode(string(target.price)));
            ini_write_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + " appearance", base64_encode(target.appearance));
            ini_write_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + " type", base64_encode("comestible"))        
        }
        else if (place_meeting(_x, _y, obj_amulet))
        {
            target = instance_place(_x, _y, obj_amulet);
            ini_write_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + " type", base64_encode("amulet"));
            ini_write_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + " name", base64_encode(target.name));
            ini_write_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + " itemType", base64_encode(target.itemType));
            ini_write_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + " appearance", base64_encode(target.appearance));
            ini_write_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + " price", base64_encode(string(target.price)));
            ini_write_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + " buc", base64_encode(target.buc));
            ini_write_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + " weight", base64_encode(target.weight));

        }
        else if (place_meeting(_x, _y, obj_ring))
        {
            target = instance_place(_x, _y, obj_ring);
            ini_write_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + " name", base64_encode(target.name));
            ini_write_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + " itemType", base64_encode(target.itemType));
            ini_write_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + " appearance", base64_encode(target.appearance));
            ini_write_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + " weight", base64_encode(string(target.weight)));
            ini_write_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + " price", base64_encode(string(target.price)));
            ini_write_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + " buc", base64_encode(target.buc));
            ini_write_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + " effect", base64_encode(target.effect));
            ini_write_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + " type", base64_encode("ring"));
        }
        else if (place_meeting(_x, _y, obj_potion))
        {
            target = instance_place(_x, _y, obj_potion);
            ini_write_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + " name", base64_encode(target.name));
            ini_write_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + " itemType", base64_encode(target.itemType));
            ini_write_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + " appearance", base64_encode(target.appearance));
            ini_write_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + " price", base64_encode(string(target.price)));
            ini_write_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + " weight", base64_encode(string(target.weight)));
            ini_write_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + " type", base64_encode("potion"));
        }
        else if (place_meeting(_x, _y, obj_wand))
        {
            ini_write_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + " name", base64_encode(instance_place(_x, _y, obj_wand).name));
            ini_write_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + " itemType", base64_encode(instance_place(_x, _y, obj_wand).itemType));
            ini_write_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + " appearance", base64_encode(instance_place(_x, _y, obj_wand).appearance));
            ini_write_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + " price", base64_encode(string(instance_place(_x, _y, obj_wand).price)));
            ini_write_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + " weight", base64_encode(string(instance_place(_x, _y, obj_wand).weight)));
            ini_write_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + " charges", base64_encode(string(instance_place(_x, _y, obj_wand).charges)));
            ini_write_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + " effect", base64_encode(instance_place(_x, _y, obj_wand).effect));
            ini_write_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + " type", base64_encode("wand"));
        }
        else if (place_meeting(_x, _y, obj_floor))
        {
            ini_write_string(base64_encode("Dungeon Properties"), string(_x) + " " + string(_y) + " type", base64_encode("floor"));
        }
    }
}
if place_meeting(600, 600, obj_dagger)
{
    target = instance_place(600, 600, obj_dagger);
    ini_write_string(base64_encode("Equipped Stuff"), "wield" + " name", base64_encode(target.name));
    ini_write_string(base64_encode("Equipped Stuff"), "wield" + " appearance", base64_encode(target.appearance));
    ini_write_string(base64_encode("Equipped Stuff"), "wield" + " skill", base64_encode(target.skill));
    ini_write_string(base64_encode("Equipped Stuff"), "wield" + " hands", base64_encode(target.hands));
    ini_write_string(base64_encode("Equipped Stuff"), "wield" + " damageSmall[0]", base64_encode(string(target.damageSmall[0])));
    ini_write_string(base64_encode("Equipped Stuff"), "wield" + " damageLarge[0]", base64_encode(string(target.damagelarge[0])));
    ini_write_string(base64_encode("Equipped Stuff"), "wield" + " toHitBonus", base64_encode(string(stringtarget.toHitBonus)));
    ini_write_string(base64_encode("Equipped Stuff"), "wield" + " price", base64_encode(string(target.price)));
    ini_write_string(base64_encode("Equipped Stuff"), "wield" + " weight", base64_encode(string(target.weight)));
    ini_write_string(base64_encode("Equipped Stuff"), "wield" + " weaponType", base64_encode(target.weaponType));
    ini_write_string(base64_encode("Equipped Stuff"), "wield" + " itemType", base64_encode(target.itemType));
}
if place_meeting(600, 600, obj_ring)
{
    target = instance_place(600, 600, obj_ring);
    ini_write_string(base64_encode("Equipped Stuff"), "putOnRl" + " name", base64_encode(target.name));
    ini_write_string(base64_encode("Equipped Stuff"), "putOnRl" + " apperance", base64_encode(target.apperance));
    ini_write_string(base64_encode("Equipped Stuff"), "putOnRl" + " itemType", base64_encode(target.itemType));
    ini_write_string(base64_encode("Equipped Stuff"), "putOnRl" + " weight", base64_encode(string(target.weight)));    
    ini_write_string(base64_encode("Equipped Stuff"), "putOnRl" + " price", base64_encode(string(target.price)));
}
if place_meeting(650, 650, obj_ring)
{
    target = instance_place(650, 650, obj_ring);
    ini_write_string(base64_encode("Equipped Stuff"), "putOnRr" + " name", base64_encode(target.name));
    ini_write_string(base64_encode("Equipped Stuff"), "putOnRr" + " appearance", base64_encode(target.appearance));
    ini_write_string(base64_encode("Equipped Stuff"), "putOnRr" + " itemType", base64_encode(target.itemType));
    ini_write_string(base64_encode("Equipped Stuff"), "putOnRr" + " weight", base64_encode(string(target.weight)));
    ini_write_string(base64_encode("Equipped Stuff"), "putOnRr" + " price", base64_encode(string(target.price)));
}
if place_meeting(600, 600, obj_amulet)
{
    target = instance_place(600, 600, obj_amulet);
    ini_write_string(base64_encode("Equipped Stuff"), "putOnA" + " name", base64_encode(target.name));
    ini_write_string(base64_encode("Equipped Stuff"), "putOnA" + " appearance", base64_encode(target.appearance));
    ini_write_string(base64_encode("Equipped Stuff"), "putOnA" + " itemType", base64_encode(target.itemType));
    ini_write_string(base64_encode("Equipped Stuff"), "putOnA" + " weight", base64_encode(string(target.weight)));
    ini_write_string(base64_encode("Equipped Stuff"), "putOnA" + " price", base64_encode(string(target.price)));
}
if place_meeting(600, 600, obj_robe)
{
    target = instance_place(600, 600, obj_robe);
    ini_write_string(base64_encode("Equipped Stuff"), "wearCloak" + " name", base64_encode(target.name));
    ini_write_string(base64_encode("Equipped Stuff"), "wearCloak" + " appearance", base64_encode(target.appearance));
    ini_write_string(base64_encode("Equipped Stuff"), "wearCloak" + " itemType", base64_encode(target.itemType));
    ini_write_string(base64_encode("Equipped Stuff"), "wearCloak" + " weight", base64_encode(string(target.weight)));
    ini_write_string(base64_encode("Equipped Stuff"), "wearCloak" + " price", base64_encode(string(target.price)));
    ini_write_string(base64_encode("Equipped Stuff"), "wearCloak" + " ac", base64_encode(string(target.ac)));
    ini_write_string(base64_encode("Equipped Stuff"), "wearCloak" + " mc", base64_encode(string(target.mc)));
    ini_write_string(base64_encode("Equipped Stuff"), "wearCloak" + " slot", base64_encode(target.slot));
    ini_write_string(base64_encode("Equipped Stuff"), "wearCloak" + " effect", base64_encode(target.effect));
    ini_write_string(base64_encode("Equipped Stuff"), "wearCloak" + " buc", base64_encode(target.buc));
}
if place_meeting(600, 600, obj_tShirt)
{
    target = instance_place(600, 600, obj_tShirt);
    ini_write_string(base64_encode("Equipped Stuff"), "wearShirt" + " name", base64_encode(target.name));
    ini_write_string(base64_encode("Equipped Stuff"), "wearShirt" + " appearance", base64_encode(target.appearance));
    ini_write_string(base64_encode("Equipped Stuff"), "wearShirt" + " itemType", base64_encode(target.itemType));
    ini_write_string(base64_encode("Equipped Stuff"), "wearShirt" + " weight", base64_encode(string(target.weight)));
    ini_write_string(base64_encode("Equipped Stuff"), "wearShirt" + " price", base64_encode(string(target.price)));
    ini_write_string(base64_encode("Equipped Stuff"), "wearShirt" + " ac", base64_encode(string(target.ac)));
    ini_write_string(base64_encode("Equipped Stuff"), "wearShirt" + " mc", base64_encode(string(target.mc)));
    ini_write_string(base64_encode("Equipped Stuff"), "wearShirt" + " slot", base64_encode(target.slot));
    ini_write_string(base64_encode("Equipped Stuff"), "wearShirt" + " effect", base64_encode(target.effect));
    ini_write_string(base64_encode("Equipped Stuff"), "wearShirt" + " buc", base64_encode(target.buc));
}
if place_meeting(600, 600, obj_leatherJacket)
{
    target = instance_place(600, 600, obj_leatherJacket);
    ini_write_string(base64_encode("Equipped Stuff"), "wearBodyArmor" + " name", base64_encode(target.name));
    ini_write_string(base64_encode("Equipped Stuff"), "wearBodyArmor" + " appearance", base64_encode(target.appearance));
    ini_write_string(base64_encode("Equipped Stuff"), "wearBodyArmor" + " itemType", base64_encode(target.itemType));
    ini_write_string(base64_encode("Equipped Stuff"), "wearBodyArmor" + " weight", base64_encode(string(target.weight)));
    ini_write_string(base64_encode("Equipped Stuff"), "wearBodyArmor" + " price", base64_encode(string(target.price)));
    ini_write_string(base64_encode("Equipped Stuff"), "wearBodyArmor" + " ac", base64_encode(string(target.ac)));
    ini_write_string(base64_encode("Equipped Stuff"), "wearBodyArmor" + " mc", base64_encode(string(target.mc)));
    ini_write_string(base64_encode("Equipped Stuff"), "wearBodyArmor" + " slot", base64_encode(target.slot));
    ini_write_string(base64_encode("Equipped Stuff"), "wearBodyArmor" + " effect", base64_encode(target.effect));
    ini_write_string(base64_encode("Equipped Stuff"), "wearBodyArmor" + " buc", base64_encode(target.buc));
}
if place_meeting(600, 600, obj_helmet)
{
    target = instance_place(600, 600, obj_helmet);
    ini_write_string(base64_encode("Equipped Stuff"), "wearHelm" + " name", base64_encode(target.name));
    ini_write_string(base64_encode("Equipped Stuff"), "wearHelm" + " appearance", base64_encode(target.appearance));
    ini_write_string(base64_encode("Equipped Stuff"), "wearHelm" + " itemType", base64_encode(target.itemType));
    ini_write_string(base64_encode("Equipped Stuff"), "wearHelm" + " weight", base64_encode(string(target.weight)));
    ini_write_string(base64_encode("Equipped Stuff"), "wearHelm" + " price", base64_encode(string(target.price)));
    ini_write_string(base64_encode("Equipped Stuff"), "wearHelm" + " ac", base64_encode(string(target.ac)));
    ini_write_string(base64_encode("Equipped Stuff"), "wearHelm" + " mc", base64_encode(string(target.mc)));
    ini_write_string(base64_encode("Equipped Stuff"), "wearHelm" + " slot", base64_encode(target.slot));
    ini_write_string(base64_encode("Equipped Stuff"), "wearHelm" + " effect", base64_encode(target.effect));
    ini_write_string(base64_encode("Equipped Stuff"), "wearHelm" + " buc", base64_encode(target.buc));
}
if place_meeting(600, 600, obj_leatherGloves)
{
    target = instance_place(600, 600, obj_leatherGloves);
    ini_write_string(base64_encode("Equipped Stuff"), "wearGloves" + " name", base64_encode(target.name));
    ini_write_string(base64_encode("Equipped Stuff"), "wearGloves" + " appearance", base64_encode(target.appearance));
    ini_write_string(base64_encode("Equipped Stuff"), "wearGloves" + " itemType", base64_encode(target.itemType));
    ini_write_string(base64_encode("Equipped Stuff"), "wearGloves" + " weight", base64_encode(string(target.weight)));
    ini_write_string(base64_encode("Equipped Stuff"), "wearGloves" + " price", base64_encode(string(target.price)));
    ini_write_string(base64_encode("Equipped Stuff"), "wearGloves" + " ac", base64_encode(string(target.ac)));
    ini_write_string(base64_encode("Equipped Stuff"), "wearGloves" + " mc", base64_encode(string(target.mc)));
    ini_write_string(base64_encode("Equipped Stuff"), "wearGloves" + " slot", base64_encode(target.slot));
    ini_write_string(base64_encode("Equipped Stuff"), "wearGloves" + " effect", base64_encode(target.effect));
    ini_write_string(base64_encode("Equipped Stuff"), "wearGloves" + " buc", base64_encode(target.buc));
}
if place_meeting(600, 600, obj_smallShield)
{
    target = instance_place(600, 600, obj_smallShield);
    ini_write_string(base64_encode("Equipped Stuff"), "wearShield" + " name", base64_encode(target.name));
    ini_write_string(base64_encode("Equipped Stuff"), "wearShield" + " appearance", base64_encode(target.appearance));
    ini_write_string(base64_encode("Equipped Stuff"), "wearShield" + " itemType", base64_encode(target.itemType));
    ini_write_string(base64_encode("Equipped Stuff"), "wearShield" + " weight", base64_encode(string(target.weight)));
    ini_write_string(base64_encode("Equipped Stuff"), "wearShield" + " price", base64_encode(string(target.price)));
    ini_write_string(base64_encode("Equipped Stuff"), "wearShield" + " ac", base64_encode(string(target.ac)));
    ini_write_string(base64_encode("Equipped Stuff"), "wearShield" + " mc", base64_encode(string(target.mc)));
    ini_write_string(base64_encode("Equipped Stuff"), "wearShield" + " slot", base64_encode(target.slot));
    ini_write_string(base64_encode("Equipped Stuff"), "wearShield" + " effect", base64_encode(target.effect));
    ini_write_string(base64_encode("Equipped Stuff"), "wearShield" + " itemType", base64_encode(target.itemType));
    ini_write_string(base64_encode("Equipped Stuff"), "wearShield" + " buc", base64_encode(target.buc));
}
if place_meeting(600, 600, obj_lowBoots)
{
    target = instance_place(600, 600, obj_lowBoots);
    ini_write_string(base64_encode("Equipped Stuff"), "wearBoots" + " name", base64_encode(target.name));
    ini_write_string(base64_encode("Equipped Stuff"), "wearBoots" + " appearance", base64_encode(target.appearance));
    ini_write_string(base64_encode("Equipped Stuff"), "wearBoots" + " itemType", base64_encode(target.itemType));
    ini_write_string(base64_encode("Equipped Stuff"), "wearBoots" + " weight", base64_encode(string(target.weight)));
    ini_write_string(base64_encode("Equipped Stuff"), "wearBoots" + " price", base64_encode(string(target.price)));
    ini_write_string(base64_encode("Equipped Stuff"), "wearBoots" + " ac", base64_encode(string(target.ac)));
    ini_write_string(base64_encode("Equipped Stuff"), "wearBoots" + " mc", base64_encode(string(target.mc)));
    ini_write_string(base64_encode("Equipped Stuff"), "wearBoots" + " slot", base64_encode(target.slot));
    ini_write_string(base64_encode("Equipped Stuff"), "wearBoots" + " effect", base64_encode(target.effect));
    ini_write_string(base64_encode("Equipped Stuff"), "wearBoots" + " buc", base64_encode(target.buc));
}
if place_meeting(600, 600, obj_boomerang)
{
    target = instance_place(600, 600, obj_boomerang);
    ini_write_string(base64_encode("Equipped Stuff"), "quiver" + " name", base64_encode(target.name));
    ini_write_string(base64_encode("Equipped Stuff"), "quiver" + " appearance", base64_encode(target.appearance));
    ini_write_string(base64_encode("Equipped Stuff"), "quiver" + " skill", base64_encode(target.skill));
    ini_write_string(base64_encode("Equipped Stuff"), "quiver" + " hands", base64_encode(target.hands));
    ini_write_string(base64_encode("Equipped Stuff"), "quiver" + " damageSmall[0]", base64_encode(string(target.damageSmall[0])));
    ini_write_string(base64_encode("Equipped Stuff"), "quiver" + " damageLarge[0]", base64_encode(string(target.damagelarge[0])));
    ini_write_string(base64_encode("Equipped Stuff"), "quiver" + " toHitBonus", base64_encode(string(stringtarget.toHitBonus)));
    ini_write_string(base64_encode("Equipped Stuff"), "quiver" + " price", base64_encode(string(target.price)));
    ini_write_string(base64_encode("Equipped Stuff"), "quiver" + " weight", base64_encode(string(target.weight)));
    ini_write_string(base64_encode("Equipped Stuff"), "quiver" + " weaponType", base64_encode(target.weaponType));
    ini_write_string(base64_encode("Equipped Stuff"), "quiver" + " itemType", base64_encode(target.itemType));
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
