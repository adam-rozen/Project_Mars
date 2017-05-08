ini_open("inventory.dat");
b = argument0;
if (ini_key_exists(base64_encode("Player Inventory"), string(b) + " itemType"))
{
    if (base64_decode(ini_read_string(base64_encode("Player Inventory"), string(b) + " itemType", "")) == "ring")
    {
        if (instance_position(600, 600, obj_ring))
        {
            if (instance_position(650, 650, obj_ring))
            {
                print("You already have a ring on both hands!");
            }
            else
            {
                temp = instance_create(650, 650, obj_ring);
                temp.name = base64_decode(ini_read_string(base64_encode("Player Inventory"), string(b) + " name", ""));
                temp.appearance = base64_decode(ini_read_string(base64_encode("Player Inventory"), string(b) + " appearance", ""));
                temp.price = real(base64_decode(ini_read_string(base64_encode("Player Inventory"), string(b) + " price", "")));
                temp.weight = real(base64_decode(ini_read_string(base64_encode("Player Inventory"), string(b) + " weight", "")));
                temp.itemType = base64_decode(ini_read_string(base64_encode("Player Inventory"), string(b) + " itemType", ""));
                ini_write_string(base64_encode("Player Inventory"), string(b) + " finger", base64_encode("l"));
                print("You put on the " + temp.name);
            }
        }
        else
        {
            temp = instance_create(600, 600, obj_ring);
            temp.name = base64_decode(ini_read_string(base64_encode("Player Inventory"), string(b) + " name", ""));
            temp.appearance = base64_decode(ini_read_string(base64_encode("Player Inventory"), string(b) + " appearance", ""));
            temp.price = real(base64_decode(ini_read_string(base64_encode("Player Inventory"), string(b) + " price", "")));
            temp.weight = real(base64_decode(ini_read_string(base64_encode("Player Inventory"), string(b) + " weight", "")));
            temp.itemType = base64_decode(ini_read_string(base64_encode("Player Inventory"), string(b) + " itemType", ""));
            ini_write_string(base64_encode("Player Inventory"), string(b) + " finger", base64_encode("r"));
            print("You put on the " + temp.name);
        }
        ini_close();
        room_goto(global.rm);
    }
    else if (base64_decode(ini_read_string(base64_encode("Player Inventory"), string(b) + " itemType", "")) == "amulet")
    {
        if(instance_position(600, 600, obj_amulet))
        {
            print("You already have an amulet on!");
        }
        else
        {
            temp = instance_create(600, 600, obj_amulet);
            temp.name = base64_decode(ini_read_string(base64_encode("Player Inventory"), string(b) + " name", ""));
            temp.appearance = base64_decode(ini_read_string(base64_encode("Player Inventory"), string(b) + " appearance", ""));
            temp.price = real(base64_decode(ini_read_string(base64_encode("Player Inventory"), string(b) + " price", "")));
            temp.weight = real(base64_decode(ini_read_string(base64_encode("Player Inventory"), string(b) + " weight", "")));
            temp.itemType = base64_decode(ini_read_string(base64_encode("Player Inventory"), string(b) + " itemType", ""));
            print("You put on the " + temp.name);
        }
        ini_close();
        room_goto(global.rm);
    }
}
