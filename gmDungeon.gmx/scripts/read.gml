//b
ini_open("inventory.dat");
b = argument0;
if (ini_key_exists(base64_encode("Player Inventory"), string(b) + " itemType"))
{
    book = base64_decode(ini_read_string(base64_encode("Player Inventory"), string(b) + " description", "")); 
    book = string_replace(book, "spellbook of ", "");
    switch(book)
    {
        case "force bolt":
            spl = "force bolt spell";
            break;
        case "extra healing":
            spl = "extra healing spell";
            break;
    }
    print("You add the " + spl + " to your repertoire");
    ini_close();
    room_goto(global.rm);
}
