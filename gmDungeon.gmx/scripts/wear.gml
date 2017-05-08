ini_open("inventory.dat");
b = argument0;
if (ini_key_exists(base64_encode("Player Inventory"), string(b) + " itemType"))
{
    if (base64_decode(ini_read_string(base64_encode("Player Inventory"), string(b) + " itemType", "")) == "armor")
    {
        temp = 0;
        if (base64_decode(ini_read_string(base64_encode("Player Inventory"), string(b) + " slot", "")) == "cloak")
        {
            if position_meeting(600, 600, obj_robe)
            {
                print("You are already wearing something there");
                exit;
            }
            else temp = instance_create(600, 600, obj_robe);
        }
        else if (base64_decode(ini_read_string(base64_encode("Player Inventory"), string(b) + " slot", "")) == "body armor")
        {
            if position_meeting(600, 600, obj_leatherJacket)
            {
                print("You are already wearing something there");
                exit;
            }
            else temp = instance_create(600, 600, obj_leatherJacket);
        }
        else if (base64_decode(ini_read_string(base64_encode("Player Inventory"), string(b) + " slot", "")) == "shirt")
        {
            if position_meeting(600, 600, obj_tShirt)
            {
                print("You are already wearing something there");
                exit;
            }
            else temp = instance_create(600, 600, obj_tShirt);
        }
        else if (base64_decode(ini_read_string(base64_encode("Player Inventory"), string(b) + " slot", "")) == "helm")
        {
            if position_meeting(600, 600, obj_helmet)
            {
                print("You are already wearing something there");
                exit;
            }
            else temp = instance_create(600, 600, obj_helmet);
        }
        else if (base64_decode(ini_read_string(base64_encode("Player Inventory"), string(b) + " slot", "")) == "helm")
        {
            if position_meeting(600, 600, obj_helmet)
            {
                print("You are already wearing something there");
                exit;
            }
            else temp = instance_create(600, 600, obj_helmet);
        }
        else if (base64_decode(ini_read_string(base64_encode("Player Inventory"), string(b) + " slot", "")) == "gloves")
        {
            if position_meeting(600, 600, obj_leatherGloves)
            {
                print("You are already wearing something there");
                exit;
            }
            else temp = instance_create(600, 600, obj_leatherGloves);
        }
        else if (base64_decode(ini_read_string(base64_encode("Player Inventory"), string(b) + " slot", "")) == "shield")
        {
            if position_meeting(600, 600, obj_smallShield)
            {
                print("You are already wearing something there");
                exit;
            }
            else temp = instance_create(600, 600, obj_smallShield);
        }
        else if (base64_decode(ini_read_string(base64_encode("Player Inventory"), string(b) + " slot", "")) == "boots")
        {
            if position_meeting(600, 600, obj_lowBoots)
            {
                print("You are already wearing something there");
                exit;
            }
            else temp = instance_create(600, 600, obj_lowBoots);
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
