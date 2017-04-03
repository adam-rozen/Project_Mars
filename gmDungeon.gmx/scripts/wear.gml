ini_open("inventory.dat");
b = argument0;
if (ini_key_exists(base64_encode("Player Inventory"), string(b) + " itemType"))
{
    if (base64_decode(ini_read_string(base64_encode("Player Inventory"), string(b) + " itemType", "")) == "armor")
    {
        temp = 0;
        if (base64_decode(ini_read_string(base64_encode("Player Inventory"), string(b) + " slot", "")) == "cloak")
        {
            with instance_position(600, 600, obj_robe)
            {
                instance_destroy();
            }
            temp = instance_create(600, 600, obj_robe);
        }
        if (base64_decode(ini_read_string(base64_encode("Player Inventory"), string(b) + " slot", "")) == "body armor")
        {
            with instance_position(600, 600, obj_leatherJacket)
            {
                instance_destroy();
            }
            temp = instance_create(600, 600, obj_leatherJacket);
        }
        if (base64_decode(ini_read_string(base64_encode("Player Inventory"), string(b) + " slot", "")) == "shirt")
        {
            with instance_position(600, 600, obj_tShirt)
            {
                instance_destroy();
            }
            temp = instance_create(600, 600, obj_tShirt);
        }
        if (base64_decode(ini_read_string(base64_encode("Player Inventory"), string(b) + " slot", "")) == "helm")
        {
            with instance_position(600, 600, obj_helmet)
            {
                instance_destroy();
            }
            temp = instance_create(600, 600, obj_helmet);
        }
        temp.name = base64_decode(ini_read_string(base64_encode("Player Inventory"), string(b) + " name", ""));
        temp.appearance = base64_decode(ini_read_string(base64_encode("Player Inventory"), string(b) + " appearance", ""));
        temp.slot = base64_decode(ini_read_string(base64_encode("Player Inventory"), string(b) + " slot", ""));
        temp.ac = real(base64_decode(ini_read_string(base64_encode("Player Inventory"), string(b) + " mc", "")));
        temp.mc = real(base64_decode(ini_read_string(base64_encode("Player Inventory"), string(b) + " mc", "")));
        temp.damageLarge[0] = real(base64_decode(ini_read_string(base64_encode("Player Inventory"), string(b) + " damageLarge[0]", "")));
        temp.effect = real(base64_decode(ini_read_string(base64_encode("Player Inventory"), string(b) + " effect", "")));
        temp.price = real(base64_decode(ini_read_string(base64_encode("Player Inventory"), string(b) + " price", "")));
        temp.weight = real(base64_decode(ini_read_string(base64_encode("Player Inventory"), string(b) + " weight", "")));
        temp.itemType = base64_decode(ini_read_string(base64_encode("Player Inventory"), string(b) + " itemType", ""));
        print("You wield the " + temp.name);
        ini_close();
        room_goto(global.rm);
    }
}
