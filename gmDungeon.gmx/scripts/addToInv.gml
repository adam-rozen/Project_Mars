/*i = 0;
test = obj_inventory.inv[i];
while(test!=-1)
{
    i++;
    test = obj_inventory.inv[i];
}
obj_inventory.inv[i] = argument0;
show_debug_message(string(i));
show_debug_message(obj_inventory.inv[i]);
show_debug_message(obj_inventory.inv[i].name);*/
ini_open("inventory.dat");
i=0;
while(ini_key_exists(base64_encode("Player Inventory"), base64_encode(string(i) + " itemType")))
{
    i++;
}
ini_write_string(base64_encode("Player Inventory"), base64_encode(string(i) + " itemType"), base64_encode(argument0.itemType));
if (argument0.itemType == "armor")
{
    ini_write_string(base64_encode("Player Inventory"), base64_encode(string(i) + " type"), base64_encode(argument0.type));
    ini_write_string(base64_encode("Player Inventory"), base64_encode(string(i) + " itemType"), base64_encode(argument0.itemType));
    ini_write_string(base64_encode("Player Inventory"), base64_encode(string(i) + " name"), base64_encode(argument0.name));
    ini_write_string(base64_encode("Player Inventory"), base64_encode(string(i) + " description"), base64_encode(argument0.description));
    ini_write_string(base64_encode("Player Inventory"), base64_encode(string(i) + " price"), base64_encode(argument0.price));
    ini_write_string(base64_encode("Player Inventory"), base64_encode(string(i) + " amount"), base64_encode(argument0.amount));

}
else if (argument0.itemType == "tool")
{
    ini_write_string(base64_encode("Player Inventory"), base64_encode(string(i) + " type"), base64_encode(argument0.type));
    ini_write_string(base64_encode("Player Inventory"), base64_encode(string(i) + " itemType"), base64_encode(argument0.itemType));
    ini_write_string(base64_encode("Player Inventory"), base64_encode(string(i) + " name"), base64_encode(argument0.name));
    ini_write_string(base64_encode("Player Inventory"), base64_encode(string(i) + " description"), base64_encode(argument0.description));
    ini_write_string(base64_encode("Player Inventory"), base64_encode(string(i) + " price"), base64_encode(argument0.price));
    ini_write_string(base64_encode("Player Inventory"), base64_encode(string(i) + " amount"), base64_encode(argument0.amount));
}
else if (argument0.itemType == "gem")
{
    ini_write_string(base64_encode("Player Inventory"), base64_encode(string(i) + " type"), base64_encode(argument0.type));
    ini_write_string(base64_encode("Player Inventory"), base64_encode(string(i) + " itemType"), base64_encode(argument0.itemType));
    ini_write_string(base64_encode("Player Inventory"), base64_encode(string(i) + " name"), base64_encode(argument0.name));
    ini_write_string(base64_encode("Player Inventory"), base64_encode(string(i) + " price"), base64_encode(argument0.price));
    ini_write_string(base64_encode("Player Inventory"), base64_encode(string(i) + " description"), base64_encode(argument0.description));
    ini_write_string(base64_encode("Player Inventory"), base64_encode(string(i) + " amount"), base64_encode(argument0.amount));

}
else if (argument0.itemType == "weapon")
{
    ini_write_string(base64_encode("Player Inventory"), base64_encode(string(i) + " skill"), base64_encode(argument0.skill));
    ini_write_string(base64_encode("Player Inventory"), base64_encode(string(i) + " price"), base64_encode(argument0.price));
    ini_write_string(base64_encode("Player Inventory"), base64_encode(string(i) + " appearance"), base64_encode(argument0.appearance));
    ini_write_string(base64_encode("Player Inventory"), base64_encode(string(i) + " toHitBonus"), base64_encode(argument0.toHitBonus));
    ini_write_string(base64_encode("Player Inventory"), base64_encode(string(i) + " hands"), base64_encode(argument0.hands));
    ini_write_string(base64_encode("Player Inventory"), base64_encode(string(i) + " weight"), base64_encode(argument0.weight));
    ini_write_string(base64_encode("Player Inventory"), base64_encode(string(i) + " damageSmall[0]"), base64_encode(argument0.damageSmall[0]));
    ini_write_string(base64_encode("Player Inventory"), base64_encode(string(i) + " damageLarge[0]"), base64_encode(argument0.damageLarge[0]));
    ini_write_string(base64_encode("Player Inventory"), base64_encode(string(i) + " itemType"), base64_encode(argument0.itemType));
    ini_write_string(base64_encode("Player Inventory"), base64_encode(string(i) + " price"), base64_encode(argument0.price));
}
else if (argument0.itemType == "wand")
{
    ini_write_string(base64_encode("Player Inventory"), base64_encode(string(i) + " description"), base64_encode(argument0.description));
    ini_write_string(base64_encode("Player Inventory"), base64_encode(string(i) + " name"), base64_encode(argument0.name));
    ini_write_string(base64_encode("Player Inventory"), base64_encode(string(i) + " itemType"), base64_encode(argument0.itemType));
    ini_write_string(base64_encode("Player Inventory"), base64_encode(string(i) + " amount"), base64_encode(argument0.amount));
}
else if (argument0.itemType == "amulet")
{
    ini_write_string(base64_encode("Player Inventory"), base64_encode(string(i) + " description"), base64_encode(argument0.description));
    ini_write_string(base64_encode("Player Inventory"), base64_encode(string(i) + " name"), base64_encode(argument0.name));
    ini_write_string(base64_encode("Player Inventory"), base64_encode(string(i) + " itemType"), base64_encode(argument0.itemType));
    ini_write_string(base64_encode("Player Inventory"), base64_encode(string(i) + " price"), base64_encode(argument0.price));
    ini_write_string(base64_encode("Player Inventory"), base64_encode(string(i) + " amount"), base64_encode(argument0.amount));
}
else if (argument0.itemType == "ring")
{
    ini_write_string(base64_encode("Player Inventory"), base64_encode(string(i) + " description"), base64_encode(argument0.description));
    ini_write_string(base64_encode("Player Inventory"), base64_encode(string(i) + " name"), base64_encode(argument0.name));
    ini_write_string(base64_encode("Player Inventory"), base64_encode(string(i) + " itemType"), base64_encode(argument0.itemType));
    ini_write_string(base64_encode("Player Inventory"), base64_encode(string(i) + " price"), base64_encode(argument0.price));
    ini_write_string(base64_encode("Player Inventory"), base64_encode(string(i) + " amount"), base64_encode(argument0.amount));
}
else if (argument0.itemType == "spellbook")
{
    ini_write_string(base64_encode("Player Inventory"), base64_encode(string(i) + " description"), base64_encode(argument0.description));
    ini_write_string(base64_encode("Player Inventory"), base64_encode(string(i) + " name"), base64_encode(argument0.name));
    ini_write_string(base64_encode("Player Inventory"), base64_encode(string(i) + " itemType"), base64_encode(argument0.itemType));
    ini_write_string(base64_encode("Player Inventory"), base64_encode(string(i) + " price"), base64_encode(argument0.price));
    ini_write_string(base64_encode("Player Inventory"), base64_encode(string(i) + " amount"), base64_encode(argument0.amount));
}
else if (argument0.itemType == "scroll")
{
    ini_write_string(base64_encode("Player Inventory"), base64_encode(string(i) + " description"), base64_encode(argument0.description));
    ini_write_string(base64_encode("Player Inventory"), base64_encode(string(i) + " name"), base64_encode(argument0.name));
    ini_write_string(base64_encode("Player Inventory"), base64_encode(string(i) + " itemType"), base64_encode(argument0.itemType));
    ini_write_string(base64_encode("Player Inventory"), base64_encode(string(i) + " price"), base64_encode(argument0.price));
    ini_write_string(base64_encode("Player Inventory"), base64_encode(string(i) + " amount"), base64_encode(argument0.amount));
}
else if (argument0.itemType == "tool")
{
    ini_write_string(base64_encode("Player Inventory"), base64_encode(string(i) + " description"), base64_encode(argument0.description));
    ini_write_string(base64_encode("Player Inventory"), base64_encode(string(i) + " name"), base64_encode(argument0.name));
    ini_write_string(base64_encode("Player Inventory"), base64_encode(string(i) + " itemType"), base64_encode(argument0.itemType));
    ini_write_string(base64_encode("Player Inventory"), base64_encode(string(i) + " price"), base64_encode(argument0.price));
    ini_write_string(base64_encode("Player Inventory"), base64_encode(string(i) + " type"), base64_encode(argument0.type));
    ini_write_string(base64_encode("Player Inventory"), base64_encode(string(i) + " amount"), base64_encode(argument0.amount));
}
else if (argument0.itemType == "potion")
{
    ini_write_string(base64_encode("Player Inventory"), base64_encode(string(i) + " description"), base64_encode(argument0.description));
    ini_write_string(base64_encode("Player Inventory"), base64_encode(string(i) + " name"), base64_encode(argument0.name));
    ini_write_string(base64_encode("Player Inventory"), base64_encode(string(i) + " itemType"), base64_encode(argument0.itemType));
    ini_write_string(base64_encode("Player Inventory"), base64_encode(string(i) + " price"), base64_encode(argument0.price));
    ini_write_string(base64_encode("Player Inventory"), base64_encode(string(i) + " amount"), base64_encode(argument0.amount));
}
else if (argument0.itemType == "food")
{
    ini_write_string(base64_encode("Player Inventory"), base64_encode(string(i) + " nutrition"), base64_encode(string(argument0.nutrition)));
    ini_write_string(base64_encode("Player Inventory"), base64_encode(string(i) + " name"), base64_encode(argument0.name));
    ini_write_string(base64_encode("Player Inventory"), base64_encode(string(i) + " type"), base64_encode(argument0.type));
    ini_write_string(base64_encode("Player Inventory"), base64_encode(string(i) + " price"), base64_encode(argument0.price));
    ini_write_string(base64_encode("Player Inventory"), base64_encode(string(i) + " amount"), base64_encode(string(argument0.amount)));
    ini_write_string(base64_encode("Player Inventory"), base64_encode(string(i) + " description"), base64_encode(argument0.description));
}
ini_close();
