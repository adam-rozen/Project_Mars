ini_open("inventory.dat");
i=0;
while(ini_key_exists(base64_encode("Player Inventory"), string(i) + " itemType"))
{
    i++;
}
if (argument0.itemType == "armor")
{
    ini_write_string(base64_encode("Player Inventory"), (string(i) + " ac"), base64_encode(argument0.ac));
    ini_write_string(base64_encode("Player Inventory"), (string(i) + " itemType"), base64_encode(argument0.itemType));
    ini_write_string(base64_encode("Player Inventory"), (string(i) + " name"), base64_encode(argument0.name));
    ini_write_string(base64_encode("Player Inventory"), (string(i) + " appearance"), base64_encode(argument0.appearance));
    ini_write_string(base64_encode("Player Inventory"), (string(i) + " price"), base64_encode(string(argument0.price)));
    ini_write_string(base64_encode("Player Inventory"), (string(i) + " mc"), base64_encode(string(argument0.mc)));
    ini_write_string(base64_encode("Player Inventory"), (string(i) + " slot"), base64_encode(string(argument0.slot)));
    ini_write_string(base64_encode("Player Inventory"), (string(i) + " weight"), base64_encode(string(argument0.weight)));
    ini_write_string(base64_encode("Player Inventory"), (string(i) + " effect"), base64_encode(string(argument0.effect)));
    //ini_write_string(base64_encode("Player Inventory"), (string(i) + " enchantment"), base64_encode(argument0.enchantment));
    ini_write_string(base64_encode("Player Inventory"), (string(i) + " buc"), base64_encode(argument0.buc));
    ini_write_string(base64_encode("Player Inventory"), (string(i) + " type"), base64_encode(argument0.type));
    ini_write_string(base64_encode("Player Inventory"), (string(i) + " description"), base64_encode(argument0.description));

}
else if (argument0.itemType == "weapon")
{
    ini_write_string(base64_encode("Player Inventory"), (string(i) + " skill"), base64_encode(argument0.skill));
    ini_write_string(base64_encode("Player Inventory"), (string(i) + " price"), base64_encode(string(argument0.price)));
    ini_write_string(base64_encode("Player Inventory"), (string(i) + " appearance"), base64_encode(argument0.appearance));
    ini_write_string(base64_encode("Player Inventory"), (string(i) + " toHitBonus"), base64_encode(string(argument0.toHitBonus)));
    ini_write_string(base64_encode("Player Inventory"), (string(i) + " hands"), base64_encode(string(argument0.hands)));
    ini_write_string(base64_encode("Player Inventory"), (string(i) + " weight"), base64_encode(string(argument0.weight)));
    ini_write_string(base64_encode("Player Inventory"), (string(i) + " damageSmall[0]"), base64_encode(string(argument0.damageSmall[0])));
    ini_write_string(base64_encode("Player Inventory"), (string(i) + " damageLarge[0]"), base64_encode(string(argument0.damageLarge[0])));
    ini_write_string(base64_encode("Player Inventory"), (string(i) + " itemType"), base64_encode(argument0.itemType));
    ini_write_string(base64_encode("Player Inventory"), (string(i) + " weaponType"), base64_encode(argument0.weaponType));
    ini_write_string(base64_encode("Player Inventory"), (string(i) + " name"), base64_encode(argument0.name));
    ini_write_string(base64_encode("Player Inventory"), (string(i) + " buc"), base64_encode(argument0.buc));
    //ini_write_string(base64_encode("Player Inventory"), (string(i) + " enchantment"), base64_encode(argument0.enchantment));
}
else if (argument0.itemType == "wand")
{
    ini_write_string(base64_encode("Player Inventory"), (string(i) + " description"), base64_encode(argument0.description));
    ini_write_string(base64_encode("Player Inventory"), (string(i) + " name"), base64_encode(argument0.name));
    ini_write_string(base64_encode("Player Inventory"), (string(i) + " itemType"), base64_encode(argument0.itemType));
    ini_write_string(base64_encode("Player Inventory"), (string(i) + " amount"), base64_encode(string(argument0.amount)));
    //ini_write_string(base64_encode("Player Inventory"), (string(i) + " buc"), base64_encode(argument0.buc));
    ini_write_string(base64_encode("Player Inventory"), (string(i) + " weight"), base64_encode(string(argument0.weight)));
    //ini_write_string(base64_encode("Player Inventory"), (string(i) + " effect"), base64_encode(argument0.effect));
    //ini_write_string(base64_encode("Player Inventory"), (string(i) + " appearance"), base64_encode(argument0.appearance));
    //ini_write_string(base64_encode("Player Inventory"), (string(i) + " charges"), base64_encode(argument0.charges));
    //ini_write_string(base64_encode("Player Inventory"), (string(i) + " price"), base64_encode(argument0.price));

}
else if (argument0.itemType == "amulet")
{
    ini_write_string(base64_encode("Player Inventory"), (string(i) + " description"), base64_encode(argument0.description));
    ini_write_string(base64_encode("Player Inventory"), (string(i) + " name"), base64_encode(argument0.name));
    ini_write_string(base64_encode("Player Inventory"), (string(i) + " itemType"), base64_encode(argument0.itemType));
    ini_write_string(base64_encode("Player Inventory"), (string(i) + " price"), base64_encode(string(argument0.price)));
    ini_write_string(base64_encode("Player Inventory"), (string(i) + " amount"), base64_encode(string(argument0.amount)));
    //ini_write_string(base64_encode("Player Inventory"), (string(i) + " appearance"), base64_encode(argument0.appearance));
    //ini_write_string(base64_encode("Player Inventory"), (string(i) + " effect"), base64_encode(argument0.effect));
    ini_write_string(base64_encode("Player Inventory"), (string(i) + " buc"), base64_encode(argument0.buc));
    //ini_write_string(base64_encode("Player Inventory"), (string(i) + " weight"), base64_encode(argument0.weight));

}
else if (argument0.itemType == "ring")
{
    ini_write_string(base64_encode("Player Inventory"), (string(i) + " appearance"), base64_encode(argument0.appearance));
    //ini_write_string(base64_encode("Player Inventory"), (string(i) + " name"), base64_encode(argument0.name));
    ini_write_string(base64_encode("Player Inventory"), (string(i) + " itemType"), base64_encode(argument0.itemType));
    //ini_write_string(base64_encode("Player Inventory"), (string(i) + " price"), base64_encode(string(argument0.price)));
    //ini_write_string(base64_encode("Player Inventory"), (string(i) + " amount"), base64_encode(string(argument0.amount)));
    ini_write_string(base64_encode("Player Inventory"), (string(i) + " buc"), base64_encode(argument0.buc));
    //ini_write_string(base64_encode("Player Inventory"), (string(i) + " appearance"), base64_encode(argument0.appearance));
    //ini_write_string(base64_encode("Player Inventory"), (string(i) + " effect"), base64_encode(argument0.effect));

}
else if (argument0.itemType == "spellbook")
{
    ini_write_string(base64_encode("Player Inventory"), (string(i) + " description"), base64_encode(argument0.description));
    ini_write_string(base64_encode("Player Inventory"), (string(i) + " name"), base64_encode(argument0.name));
    ini_write_string(base64_encode("Player Inventory"), (string(i) + " itemType"), base64_encode(argument0.itemType));
    ini_write_string(base64_encode("Player Inventory"), (string(i) + " price"), base64_encode(string(argument0.price)));
    ini_write_string(base64_encode("Player Inventory"), (string(i) + " amount"), base64_encode(string(argument0.amount)));
    //ini_write_string(base64_encode("Player Inventory"), (string(i) + " buc"), base64_encode(argument0.buc));
}
else if (argument0.itemType == "scroll")
{
    ini_write_string(base64_encode("Player Inventory"), (string(i) + " appearance"), base64_encode(argument0.appearance));
    ini_write_string(base64_encode("Player Inventory"), (string(i) + " name"), base64_encode(argument0.name));
    ini_write_string(base64_encode("Player Inventory"), (string(i) + " itemType"), base64_encode(argument0.itemType));
    ini_write_string(base64_encode("Player Inventory"), (string(i) + " price"), base64_encode(string(argument0.price)));
    ini_write_string(base64_encode("Player Inventory"), (string(i) + " weight"), base64_encode(string(argument0.weight)));
    ini_write_string(base64_encode("Player Inventory"), (string(i) + " effect"), base64_encode(string(argument0.effect)));
    ini_write_string(base64_encode("Player Inventory"), (string(i) + " buc"), base64_encode(argument0.buc));
    //ini_write_string(base64_encode("Player Inventory"), (string(i) + " amount"), base64_encode(string(argument0.amount)));
}
else if (argument0.itemType == "potion")
{
    ini_write_string(base64_encode("Player Inventory"), (string(i) + " appearance"), base64_encode(argument0.appearance));
    ini_write_string(base64_encode("Player Inventory"), (string(i) + " name"), base64_encode(argument0.name));
    ini_write_string(base64_encode("Player Inventory"), (string(i) + " itemType"), base64_encode(argument0.itemType));
    ini_write_string(base64_encode("Player Inventory"), (string(i) + " price"), base64_encode(string(argument0.price)));
    ini_write_string(base64_encode("Player Inventory"), (string(i) + " weight"), base64_encode(string(argument0.weight)));
    ini_write_string(base64_encode("Player Inventory"), (string(i) + " buc"), base64_encode(argument0.buc));
//    ini_write_string(base64_encode("Player Inventory"), (string(i) + " amount"), base64_encode(string(argument0.amount)));
}
else if (argument0.itemType == "food")
{
    ini_write_string(base64_encode("Player Inventory"), (string(i) + " nutrition"), base64_encode(string(argument0.nutrition)));
    ini_write_string(base64_encode("Player Inventory"), (string(i) + " name"), base64_encode(argument0.name));
    ini_write_string(base64_encode("Player Inventory"), (string(i) + " price"), base64_encode(string(argument0.price)));
    ini_write_string(base64_encode("Player Inventory"), (string(i) + " amount"), base64_encode(string(argument0.amount)));
    ini_write_string(base64_encode("Player Inventory"), (string(i) + " appearance"), base64_encode(argument0.appearance));
    ini_write_string(base64_encode("Player Inventory"), (string(i) + " itemType"), base64_encode(argument0.itemType));
    //ini_write_string(base64_encode("Player Inventory"), (string(i) + " buc"), base64_encode(argument0.buc));
}
ini_close();
