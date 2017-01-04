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
                if (target.ac >= 0)
                {
                    targetNum = 10 + target.ac + level;
                }
                else
                {
                    targetNum = 10 + irandom_range(target.ac, -1) + level;
                }
                if (irandom_range(1, 20) < targetNum)
                {
                    target.hp -= irandom_range(1, attack);
                    if (target.hp > 0)
                    {
                        print("You hit the " + target.name + "!");
                    }
                    else
                    {
                        print("You kill the " + target.name + "!");
                        xp += target.xp;
                        if (xp > maxXP[level])
                        {
                            xp = maxXP[level];
                        }
                        levelUp();
                    }
                }
                else
                {
                    print("You miss the " + target.name + ".");
                }
            }
            endPlayerTurn();
        }
