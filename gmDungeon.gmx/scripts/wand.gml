ini_open("inventory.dat");
b = argument0;
if ini_key_exists(base64_encode("Player Inventory"), string(b) + " itemType")
{
    if base64_decode(ini_read_string(base64_encode("Player Inventory"), string(b) + " itemType", ""))
    {
        if real(base64_decode(ini_read_string(base64_encode("Player Inventory"), string(b) + " charges", "")))>0
        {
            var name = base64_decode(ini_read_string(base64_encode("Player Inventory"), string(b) + " name", "")); 
            name = string_replace(wan, "wand of ", "");            
            room_goto(global.rm);
            dir = scr_direction();
            xMovespeed = dir[0];
            yMovespeed = dir[1];
            switch(name)
            {
                case "striking":
                    ini_write_string(base64_encode("Player Inventory"), string(b) + " charges", string(real(ini_read_string(base64_encode("Player Inventory"), string(b) + " charges", "")) - 1));
                    range = irandom_range(6, 13);
                    damage = irandom_range(1, 12) + irandom_range(1, 12);
                    for(i = 1; i < range; i++)
                    {
                        target = instance_place(x + (i * xMovespeed), y + (i * yMovespeed), obj_entity);
                        if (target != noone)
                        {
                            target.hp -= damage;
                            if (target.hp > 0)
                                print("Kapow!");
                            else
                            {
                                print("You kill the " + target.name + "!");
                                xp += target.xp;
                                levelUp();
                            }
                        }
                        target2 = instance_place(x + (i * xMovespeed), y + (i * yMovespeed), obj_wall);
                        if (target2 != noone)
                        {
                            break;
                        }
                    }
                    break;
                case "cold":
                    range = irandom_range(6, 13);
                    damage = irandom_range(1, 6) + irandom_range(1, 6) + irandom_range(1, 6) + irandom_range(1, 6) + irandom_range(1, 6) + irandom_range(1, 6);
                    for(i = 1; i < range; i++)
                    {
                        target = instance_place(x + (i * xMovespeed), y + (i * yMovespeed), obj_entity);
                        if (target != noone)
                        {
                            if place_meeting(target.x, target.y, obj_balrog)
                            {
                                damage += irandom_range(1, 3) + irandom_range(1, 3) + irandom_range(1, 3) + irandom_range(1, 3) + irandom_range(1, 3) + irandom_range(1, 3);
                            }
                            target.hp -= damage;
                            if (target.hp > 0)
                                print("Kapow!");
                            else
                            {
                                print("You kill the " + target.name + "!");
                                xp += target.xp;
                                levelUp();
                            }
                        }
                        target2 = instance_place(x + (i * xMovespeed), y + (i * yMovespeed), obj_wall);
                        if (target2 != noone)
                        {
                            break;
                        }
                    }
                    break;
                case "fire":
                    range = irandom_range(6, 13);
                    damage = irandom_range(1, 6) + irandom_range(1, 6) + irandom_range(1, 6) + irandom_range(1, 6) + irandom_range(1, 6) + irandom_range(1, 6);
                    for(i = 1; i < range; i++)
                    {
                        target = instance_place(x + (i * xMovespeed), y + (i * yMovespeed), obj_entity);
                        if (target != noone)
                        {
                            target.hp -= damage;
                            if (target.hp > 0)
                                print("Kapow!");
                            else
                            {
                                print("You kill the " + target.name + "!");
                                xp += target.xp;
                                levelUp();
                            }
                        }
                        target2 = instance_place(x + (i * xMovespeed), y + (i * yMovespeed), obj_wall);
                        if (target2 != noone)
                        {
                            break;
                        }
                    }
                    break;
                case "lightning":
                    range = irandom_range(6, 13);
                    damage = irandom_range(1, 6) + irandom_range(1, 6) + irandom_range(1, 6) + irandom_range(1, 6) + irandom_range(1, 6) + irandom_range(1, 6);
                    for(i = 1; i < range; i++)
                    {
                        target = instance_place(x + (i * xMovespeed), y + (i * yMovespeed), obj_entity);
                        if (target != noone)
                        {
                            target.hp -= damage;
                            if (target.hp > 0)
                                print("Kapow!");
                            else
                            {
                                print("You kill the " + target.name + "!");
                                xp += target.xp;
                                levelUp();
                            }
                        }
                        target2 = instance_place(x + (i * xMovespeed), y + (i * yMovespeed), obj_wall);
                        if (target2 != noone)
                        {
                            break;
                        }
                    }
                    break;
            }
        }
    }
}
