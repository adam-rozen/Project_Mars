if (!place_meeting(x + xMovespeed, y + yMovespeed, obj_wall))
        {
            print("");
            target = instance_place(x + xMovespeed, y + yMovespeed, obj_entity);
            if (target == noone)
            {
                x += xMovespeed
                y += yMovespeed;
            }
            else
            {
                target.hp-=irandom_range(1, attack);
                if (target.hp > 0)
                {
                    print("You hit the " + target.name + "!");
                }
                else
                {
                    print("You kill the " + target.name + "!");
                    xp += target.xp;
                    levelUp();
                }
            }
            endPlayerTurn();
        }
