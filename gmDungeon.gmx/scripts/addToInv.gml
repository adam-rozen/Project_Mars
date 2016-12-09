i = 0;
test = obj_inventory.inv[i];
while(test!=-1)
{
    i++;
    test = obj_inventory.inv[i];
}
obj_inventory.inv[i] = argument0;
show_debug_message(string(i));
show_debug_message(obj_inventory.inv[i]);
show_debug_message(obj_inventory.inv[i].name);
