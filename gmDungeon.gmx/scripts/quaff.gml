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
            case "fruit juice":
                print("This tastes like slime mold juice.")
                obj_player.nutrition += 20;
                break;
            case "sickness":
                print("Yecch! This stuff tastes like poison.");
                if (global.class == "healer")
                {
                    print("Fortunately, you have been immunized.");
                }
                else
                {
                    obj_player.hp -= irandom_range(1,10);
                }
                break;
            case "confusion":
                print("You just don't understand.");
                obj_player.confused = irandom_range(16,24);
                break;
            case "extra healing":
                print("");
                hpGain = choose(6,7,8,9,10,11,12,13,14,15,16,16,17,17,18,18,19,19,20,20,
                    21,21,21,21,21,21,22,22,22,22,22,22,23,23,23,23,23,23,24,24,24,24,
                    24,24,25,26,27,27,27,27,27,27,27,27,27,27,27,27,27,27,
                    28,28,28,28,28,28,28,29,29,29,29,29,29,29,
                    30,30,30,30,30,30,30,31,31,31,31,31,31,31,
                    32,32,32,32,32,32,32,33,33,34,34,35,35,36,36,37,37,38,38,
                    39,40,41,42,43,44,45,46,47,48);
                obj_player.hp += hpGain;
                if (obj_player.hp + hpGain <= obj_player.maxHP)
                {
                    obj_player.hp += hpGain;
                }
                else
                {
                    obj_player.maxHP += 2;
                    obj_player.hp = obj_player.maxHP;
                }
                break;
            case "healing":
                print("");
                hpGain = irandom_range(6, 24);
                if (obj_player.hp + hpGain <= obj_player.maxHP)
                {
                    obj_player.hp += hpGain;
                }
                else
                {
                    obj_player.maxHP += 1;
                    obj_player.hp = obj_player.maxHP;
                }
                break;
            case "sleeping":
                print("You feel rather tired");
                obj_player.sleep += irandom_range(25,35)
                break;
            case "gain energy":
                print("Magical energies course through your body.");
                pw = irandom_range(2,12);
                obj_player.maxPW += pw;
                if (obj_player.pw + pw > obj_player.maxPW)
                {
                    obj_player.pw = obj_player.maxPW;
                }
                else
                {
                    obj_player.pw += pw;
                }
                break;
            case "full healing":
                print("");
                hpGain = 400;
                if (obj_player.hp + hpGain <= obj_player.maxHP)
                {
                    obj_player.hp += hpGain;
                }
                else
                {
                    obj_player.maxHP += 4;
                    obj_player.hp = obj_player.maxHP;
                }
                break;
            case "acid":
                print("This burns like acid!");
                obj_player.hp -= irandom_range(1,8);
                break;
            case "oil":
                print("That was smooth");
                //nothing happens
                break;
            case "gain level":
                print("");
                obj_player.xp = obj_player.levelUpRequirement[level];
                levelUp();
                break;
            case "paralysis":
                print("");
                obj_player.sleep += irandom_range(25,34);
                break;
        }
        ini_key_delete(base64_encode("Player Inventory"), string(b) + "name")
        ini_close();
        room_goto(global.rm);
    }
}
