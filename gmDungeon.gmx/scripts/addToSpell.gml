ini_open("inventory.dat");
i = 0;
while(ini_key_exists(base64_encode("Player Spell"), string(i) + " name"))
{
    i++;
}
ini_write_string(base64_encode("Player Spell"), (string(i) + " name"), base64_encode(argument0));
ini_close();
