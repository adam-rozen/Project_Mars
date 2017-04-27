ini_open("inventory.dat");
b = argument0;
if (ini_key_exists(base64_encode("Player Inventory"), string(b) + " itemType"))
{
    if (base64_decode(ini_read_string(base64_encode("Player Inventory"), string(b) + " itemType", "")) == "armor")
    {
        if (base64_decode(ini_read_string(base64_encode("Player Inventory"), string(b) + " buc", "")) == "false")
        {
            if (base64_decode(ini_read_string(base64_encode("Player Inventory"), string(b) + " slot", "")) == "cloak")
            {
                with instance_position(600, 600, obj_robe)
                {
                    instance_destroy();
                }
            }
            if (base64_decode(ini_read_string(base64_encode("Player Inventory"), string(b) + " slot", "")) == "body armor")
            {
                with instance_position(600, 600, obj_leatherJacket)
                {
                    instance_destroy();
                }
            }
            if (base64_decode(ini_read_string(base64_encode("Player Inventory"), string(b) + " slot", "")) == "shirt")
            {
                with instance_position(600, 600, obj_tShirt)
                {
                    instance_destroy();
                }
            }
            if (base64_decode(ini_read_string(base64_encode("Player Inventory"), string(b) + " slot", "")) == "helm")
            {
                with instance_position(600, 600, obj_helmet)
                {
                    instance_destroy();
                }
            }
        }
        else
        {
            print("You can't, it is cursed.");
        }
    }
}
