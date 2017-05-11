ini_open("inventory.dat");
b = argument0;
if ini_key_exists(base64_encode("Player Inventory"), string(b) + " itemType")
{
    if base64_decode(ini_read_string(base64_encode("Player Inventory"), string(b) + " itemType", ""))=="food"
    {
        obj_player.playerNutrition += real(base64_decode(ini_read_string(base64_encode("Player Inventory"), string(b) + " nutrition", "")))
        ini_key_delete(base64_encode("Player Inventory"), string(b) + " nutrition")
        ini_key_delete(base64_encode("Player Inventory"), string(b) + " name")
        ini_key_delete(base64_encode("Player Inventory"), string(b) + " price")
        ini_key_delete(base64_encode("Player Inventory"), string(b) + " appearance")
        ini_key_delete(base64_encode("Player Inventory"), string(b) + " itemType")
    }
}
