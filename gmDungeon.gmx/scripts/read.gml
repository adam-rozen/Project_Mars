//b
ini_open("inventory.dat");
b = argument0;
if (ini_key_exists(base64_encode("Player Inventory"), string(b) + " itemType"))
{
    if (base64_decode(ini_read_string(base64_encode("Player Inventory"), string(b) + " itemType", "")) == "spellbook")
    {
        if (obj_player.confused == 0)
        {
            book = base64_decode(ini_read_string(base64_encode("Player Inventory"), string(b) + " description", "")); 
            book = string_replace(book, "spellbook of ", "");
            spl = "";
            switch(book)
            {
                case "force bolt":
                    spl = "force bolt spell";
                    break;
                case "healing":
                    spl = "healing spell";
                    break;
            }
            if (spl == "force bolt spell")
                addToSpell("Force Bolt");
            print("You add the " + spl + " to your repertoire");
            ini_close();
            room_goto(global.rm);
        }
        else if (choose(0,0,1) == 1)
        {
            ini_key_delete(base64_encode("Player Inventory"), " description");
            ini_key_delete(base64_encode("Player Inventory"), " name");
            ini_key_delete(base64_encode("Player Inventory"), " itemType");
            ini_key_delete(base64_encode("Player Inventory"), " amount");
            ini_key_delete(base64_encode("Player Inventory"), " price");
            print("In your confusion, you rip the spell book to shreds!");
        }
        else
        {
            print("You find yourself reading the first line over and over again.")
        }
    }
    else if (base64_decode(ini_read_string(base64_encode("Player Inventory"), string(b) + " itemType", "")) == "scroll")
    {
        if (obj_player.confused == 0)
        {
            spl = base64_decode(ini_read_string(base64_encode("Player Invenory"), string(b) + " effect", ""));
            print("You use a scroll of " + spl);
            ini_key_delete(base64_encode("Player Inventory"), string(b) + " itemType");
            ini_close();
            room_goto(global.rm);
        }
        else
        {
            print("Being confused, you mispronounce the magic words...")
            switch (base64_decode(ini_read_string(base64_encode("Player Inventory"), string(b) + " effect", "")))
            {
                case "idetify":
                    print("You identify this as an identify scroll.");
                    global.scrollAppearance[0] = "scroll of identify";
                    break;
                case "fire":
                    print("The scroll catches fire and you burn your hands");
                    obj_player.hp -= 1;
                    break;
                case "create monster":
                    repeat(13)
                    {
                        _x = 32 * irandom_range(x-96, x+96);
                        _y = 32 * irandom_range(y-96, y+96);
                        while (place_meeting(_x, _y, obj_entity))
                        {
                            _x = 32 * irandom_range(x-96, x+96);
                            _y = 32 * irandom_range(y-96, y+96);
                        }
                        instance_create(_x, _y, choose(obj_orc, obj_newt, obj_newt, obj_newt, obj_newt, obj_newt, obj_newt, obj_rat, obj_rat, obj_kobold, obj_kobold, obj_zombie, obj_zombie, obj_homunculus, obj_homunculus, obj_homunculus));
                    }
                    break;
            }
        }
    }
}
