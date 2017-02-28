ini_open("inventory.dat");
b = argument0;
if (ini_key_exists(base64_encode("Player Spell"), string(b) + " name"))
{
    switch (name)
    {
        case "Force Bolt":
            if (pw >= 5)
            {
                print("In what direction?");
                zap = true;
            }
            else
            {
                print("You don't have enough energy to cast that spell.");
            }
    }
    room_goto(global.rm);
}
