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
if (argument0.itemType == "armor" || argument0.itemType == "gem"
        || argument0.itemType == "weapon" || argument0.itemType == "tool")
{
        ini_write_string(base64_encode("Player Inventory"), base64_encode(string(i) + " type"), base64_encode(argument0.type));
}
else if (argument0.itemType == "food")
{
        ini_write_real(base64_encode("Player Inventory"), base64_encode(string(i) + " nutrition"), base64_encode(string(argument0.nutrition)));
}
ini_write_string(base64_encode("Player Inventory"), base64_encode(string(i) + " name"), base64_encode(argument0.name))
ini_write_string(base64_encode("Player Inventory"), base64_encode(string(i) + " amount"), base64_encode(string(argument0.amount)));
ini_write_string(base64_encode("Player Inventory"), base64_encode(string(i) + " description"), base64_encode(argument0.description));
ini_close();
