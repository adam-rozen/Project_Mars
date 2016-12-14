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
while(ini_key_exists("Player Inventory", string(i) + " itemType"))
{
    i++;
}
ini_write_string("Player Inventory", string(i) + " itemType", argument0.itemType);
if (argument0.itemType == "armor" || argument0.itemType == "gem"
        || argument0.itemType == "weapon" || argument0.itemType == "tool")
{
        ini_write_string("Player Inventory", string(i) + " type", argument0.type);
}
else if (argument0.itemType == "food")
{
        ini_write_real("Player Inventory", string(i) + " nutrition", argument0.nutrition);
}
ini_write_string("Player Inventory", string(i) + " name", argument0.name)
ini_write_real("Player Inventory", string(i) + " amount", argument0.amount);
ini_write_string("Player Inventory", string(i) + " description", argument0.description);
ini_close();
