ini_open("inventory.dat");
b = argument0;
if (ini_key_exists(base64_encode("Player Inventory"),string(b) + " itemType"))
{
    if (base64_decode(ini_read_string(base64_encode("Player Inventory"), string(b) + " itemType", "")) == "potion")
    {
        name = ini_read_string(base64_encode("Player Inventory"), string(b) + " name", "")
        name = string_replace(name, "potion of ", "")
        switch(name)
        {
            case "water":
                print("This tastes like water");
                obj_player.nutrition += irandom_range(1,10);
                break;
            case "booze":
                print("Ooph! This tastes like liquid fire!");
                obj_player.nutrition += 10;
                obj_player.confused = 10;
                break;
        }
        ini_key_delete(base64_encode("Player Inventory"), string(b) + "name")
        ini_close();
        room_goto(global.rm);
    }
}
