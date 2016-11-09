i = 0;
test = obj_inventory.inv[i];
while(test!=-1)
{
    i++;
    test = obj_inventory.inv[i];
}
obj_inventory.inv[i] = argument0;
