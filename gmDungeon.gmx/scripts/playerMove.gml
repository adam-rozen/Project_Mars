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
        temp = instance_position(600, 600, obj_player);
        if ((irandom_range(1, 20) + toHitBonus) < targetNum)
        {
            if (target.size == "tiny" || target.size == "small" || target.size = "medium")
            {
                if (temp == noone)
                {
                    for (i = 0; i <= array_length_1d(damageSmall) - 1; i++)
                    {
                        target.hp -= irandom_range(1, damageSmall[i]);
                    }
                }
                else
                {
                    for (i = 0; i <= array_length_1d(temp.damageSmall) - 1; i++)
                    {
                       target.hp -= irandom_range(1, temp.damageSmall[i]);
                    }
                }
                 
            }
            else
            {
                if (temp == noone)
                {
                    for (i = 0; i <= array_length_1d(damageLarge); i++)
                    {
                        target.hp -= irandom_range(1, damageLarge[i]);
                    }
                }
                else
                {
                    for (i = 0; i <= array_length_1d(temp.damageLarge); i++)
                    {
                        target.hp -= irandom_range(1, temp.damageLarge[i]);
                    }
                }
            }
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
