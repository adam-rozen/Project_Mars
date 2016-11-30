num = 0;
for(i = 0; i < 8; i++)
{
    if(argument[i] != -1)
    {
        num++;
    }
}
dir = 0;
switch(num)
{
    case 0:
        moved = true;
        global.move += 1;
        break;
    case 1:
        dir = argument0;
        break;
    case 2:
        dir = choose(argument0, argument1);
        break;
    case 3:
        dir = choose(argument0, argument1, argument2);
        break;
    case 4:
        dir = choose(argument0, argument1, argument2, argument3);
        break;
    case 5:
        dir = choose(argument0, argument1, argument2, argument3, argument4);
        break;
    case 6:
        dir = choose(argument0, argument1, argument2, argument3, argument4, argument5);
        break;
    case 7:
        dir = choose(argument0, argument1, argument2, argument3, argument4, argument5, argument6);
        break;
    case 8:
        dir = choose(argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7);
        break;
}
if(dir == 1)
{
    if (!place_meeting(x - movespeed, y + movespeed, obj_entity))
    {
        if (!place_meeting(x - movespeed, y + movespeed, obj_wall))
        {
            x -= movespeed;
            y += movespeed;
            moved = true;
            global.move += 1;
        }
        else
        {
            switch(num)
            {
                case 1:
                    moved = true;
                    global.move +=1;
                    break;
                case 2:
                    if (argument0 == 1)
                    {
                        randomEnemyMove(argument1, -1, -1, -1, -1, -1, -1, -1);
                    }
                    else
                    {
                        randomEnemyMove(argument0, -1, -1, -1, -1, -1, -1, -1);
                    }
                    break;
                case 3:
                    if (argument0 == 1)
                    {
                        randomEnemyMove(argument1, argument2, -1, -1, -1, -1, -1, -1);
                    }
                    else if (argument1 == 1)
                    {
                        randomEnemyMove(argument0, argument2, -1, -1, -1, -1, -1, -1);
                    }
                    else
                    {
                        randomEnemyMove(argument0, argument1, -1, -1, -1, -1 ,-1, -1);
                    }
                    break;
                case 4:
                    if (argument0 == 1)
                    {
                        randomEnemyMove(argument1, argument2, argument3, -1, -1, -1, -1, -1);
                    }
                    else if (argument1 == 1)
                    {
                        randomEnemyMove(argument0, argument2, argument3, -1, -1, -1, -1, -1);
                    }
                    else if (argument2 == 1)
                    {
                        randomEnemyMove(argument0, argument1, argument3, -1, -1, -1, -1, -1);
                    }
                    else
                    {
                        randomEnemyMove(argument0, argument1, argument2, -1, -1, -1, -1, -1);
                    }
                    break;
                case 5:
                    if (argument0 == 1)
                    {
                        randomEnemyMove(argument1, argument2, argument3, argument4, -1, -1, -1, -1);
                    }
                    else if (argument1 == 1)
                    {
                        randomEnemyMove(argument0, argument2, argument3, argument4, -1, -1, -1, -1);
                    }
                    else if (argument2 == 1)
                    {
                        randomEnemyMove(argument0, argument1, argument3, argument4, -1, -1, -1, -1);
                    }
                    else if (argument3 == 1)
                    {
                        randomEnemyMove(argument0, argument1, argument2, argument4, -1, -1, -1, -1);
                    }
                    else
                    {
                        randomEnemyMove(argument0, argument1, argument2, argument3, -1, -1, -1, -1);
                    }
                    break;
                case 6:
                    if (argument0 == 1)
                    {
                        randomEnemyMove(argument1, argument2, argument3, argument4, argument5, -1, -1, -1);
                    }
                    else if (argument1 == 1)
                    {
                        randomEnemyMove(argument0, argument2, argument3, argument4, argument5, -1, -1, -1);
                    }
                    else if (argument2 == 1)
                    {
                        randomEnemyMove(argument0, argument1, argument3, argument4, argument5, -1, -1, -1);
                    }
                    else if (argument3 == 1)
                    {
                        randomEnemyMove(argument0, argument1, argument2, argument4, argument5, -1, -1, -1);
                    }
                    else if (argument4 == 1)
                    {
                        randomEnemyMove(argument0, argument1, argument2, argument3, argument5, -1, -1, -1);
                    }
                    else
                    {
                        randomEnemyMove(argument0, argument1, argument2, argument3, argument4, -1, -1, -1);
                    }
                    break;
                case 7:
                    if (argument0 == 1)
                    {
                        randomEnemyMove(argument1, argument2, argument3, argument4, argument5, argument6, -1, -1);
                    }
                    else if (argument1 == 1)
                    {
                        randomEnemyMove(argument0, argument2, argument3, argument4, argument5, argument6, -1, -1);
                    }
                    else if (argument2 == 1)
                    {
                        randomEnemyMove(argument0, argument1, argument3, argument4, argument5, argument6, -1, -1);
                    }
                    else if (argument3 == 1)
                    {
                        randomEnemyMove(argument0, argument1, argument2, argument4, argument5, argument6, -1, -1);
                    }
                    else if (argument4 == 1)
                    {
                        randomEnemyMove(argument0, argument1, argument2, argument3, argument5, argument6, -1, -1);
                    }
                    else if (argument5 == 1)
                    {
                        randomEnemyMove(argument0, argument1, argument2, argument3, argument4, argument6, -1, -1);
                    }
                    else
                    {
                        randomEnemyMove(argument0, argument1, argument2, argument3, argument4, argument5, -1, -1);
                    }
                    break;
                case 8:
                    if (argument0 == 1)
                    {
                        randomEnemyMove(argument1, argument2, argument3, argument4, argument5, argument6, argument7, -1);
                    }
                    else if (argument1 == 1)
                    {
                        randomEnemyMove(argument0, argument2, argument3, argument4, argument5, argument6, argument7, -1);
                    }
                    else if (argument2 == 1)
                    {
                        randomEnemyMove(argument0, argument1, argument3, argument4, argument5, argument6, argument7, -1);
                    }
                    else if (argument3 == 1)
                    {
                        randomEnemyMove(argument0, argument1, argument2, argument4, argument5, argument6, argument7, -1);
                    }
                    else if (argument4 == 1)
                    {
                        randomEnemyMove(argument0, argument1, argument2, argument3, argument5, argument6, argument7, -1);
                    }
                    else if (argument5 == 1)
                    {
                        randomEnemyMove(argument0, argument1, argument2, argument3, argument4, argument6, argument7, -1);
                    }
                    else if (argument6 == 1)
                    {
                        randomEnemyMove(argument0, argument1, argument2, argument3, argument4, argument5, argument7, -1);
                    }
                    else
                    {
                        randomEnemyMove(argument0, argument1, argument2, argument3, argument4, argument5, argument6, -1);
                    }
                    break;
            }
        }
    }
    else
    {
        switch(num)
        {
            case 1:
                moved = true;
                global.move +=1;
                break;
            case 2:
                if (argument0 == 1)
                {
                    randomEnemyMove(argument1, -1, -1, -1, -1, -1, -1, -1);
                }
                else
                {
                    randomEnemyMove(argument0, -1, -1, -1, -1, -1, -1, -1);
                }
                break;
            case 3:
                if (argument0 == 1)
                {
                    randomEnemyMove(argument1, argument2, -1, -1, -1, -1, -1, -1);
                }
                else if (argument1 == 1)
                {
                    randomEnemyMove(argument0, argument2, -1, -1, -1, -1, -1, -1);
                }
                else
                {
                    randomEnemyMove(argument0, argument1, -1, -1, -1, -1, -1, -1);
                }
                break;
            case 4:
                if (argument0 == 1)
                {
                    randomEnemyMove(argument1, argument2, argument3, -1, -1, -1, -1, -1);
                }
                else if (argument1 == 1)
                {
                    randomEnemyMove(argument0, argument2, argument3, -1, -1, -1, -1, -1);
                }
                else if (argument2 == 1)
                {
                    randomEnemyMove(argument0, argument1, argument3, -1, -1, -1, -1, -1);
                }
                else
                {
                    randomEnemyMove(argument0, argument1, argument2, -1, -1, -1, -1, -1);
                }
                break;
            case 5:
                if (argument0 == 1)
                {
                    randomEnemyMove(argument1, argument2, argument3, argument4, -1, -1, -1, -1);
                }
                else if (argument1 == 1)
                {
                    randomEnemyMove(argument0, argument2, argument3, argument4, -1, -1, -1, -1);
                }
                else if (argument2 == 1)
                {
                    randomEnemyMove(argument0, argument1, argument3, argument4, -1, -1, -1, -1);
                }
                else if (argument3 == 1)
                {
                    randomEnemyMove(argument0, argument1, argument2, argument4, -1, -1, -1, -1);
                }
                else
                {
                    randomEnemyMove(argument0, argument1, argument2, argument3, -1, -1, -1, -1);
                }
                break;
            case 6:
                if (argument0 == 1)
                {
                    randomEnemyMove(argument1, argument2, argument3, argument4, argument5, -1, -1, -1);
                }
                else if (argument1 == 1)
                {
                    randomEnemyMove(argument0, argument2, argument3, argument4, argument5, -1, -1, -1);
                }
                else if (argument2 == 1)
                {
                    randomEnemyMove(argument0, argument1, argument3, argument4, argument5, -1, -1, -1);
                }
                else if (argument3 == 1)
                {
                    randomEnemyMove(argument0, argument1, argument2, argument4, argument5, -1, -1, -1);
                }
                else if (argument4 == 1)
                {
                    randomEnemyMove(argument0, argument1, argument2, argument3, argument5, -1, -1, -1);
                }
                else
                {
                    randomEnemyMove(argument0, argument1, argument2, argument3, argument4, -1, -1, -1);
                }
                break;
            case 7:
                if (argument0 == 1)
                {
                    randomEnemyMove(argument1, argument2, argument3, argument4, argument5, argument6, -1, -1);
                }
                else if (argument1 == 1)
                {
                    randomEnemyMove(argument0, argument2, argument3, argument4, argument5, argument6, -1, -1);
                }
                else if (argument2 == 1)
                {
                    randomEnemyMove(argument0, argument1, argument3, argument4, argument5, argument6, -1, -1);
                }
                else if (argument3 == 1)
                {
                    randomEnemyMove(argument0, argument1, argument2, argument4, argument5, argument6, -1, -1);
                }
                else if (argument4 == 1)
                {
                    randomEnemyMove(argument0, argument1, argument2, argument3, argument5, argument6, -1, -1);
                }
                else if (argument5 == 1)
                {
                    randomEnemyMove(argument0, argument1, argument2, argument3, argument4, argument6, -1, -1);
                }
                else
                {
                    randomEnemyMove(argument0, argument1, argument2, argument3, argument4, argument5, -1, -1);
                }
                break;
            case 8:
                if (argument0 == 1)
                {
                    randomEnemyMove(argument1, argument2, argument3, argument4, argument5, argument6, argument7, -1);
                }
                else if (argument1 == 1)
                {
                    randomEnemyMove(argument0, argument2, argument3, argument4, argument5, argument6, argument7, -1);
                }
                else if (argument2 == 1)
                {
                    randomEnemyMove(argument0, argument1, argument3, argument4, argument5, argument6, argument7, -1);
                }
                else if (argument3 == 1)
                {
                    randomEnemyMove(argument0, argument1, argument2, argument4, argument5, argument6, argument7, -1);
                }
                else if (argument4 == 1)
                {
                    randomEnemyMove(argument0, argument1, argument2, argument3, argument5, argument6, argument7, -1);
                }
                else if (argument5 == 1)
                {
                    randomEnemyMove(argument0, argument1, argument2, argument3, argument4, argument6, argument7, -1);
                }
                else if (argument6 == 1)
                {
                    randomEnemyMove(argument0, argument1, argument2, argument3, argument4, argument5, argument7, -1);
                }
                else
                {
                    randomEnemyMove(argument0, argument1, argument2, argument3, argument4, argument5, argument6, -1);
                }
                break;
        }
    }
}
else if(dir == 2)
{
    if (!place_meeting(x, y + movespeed, obj_entity))
    {
        if (!place_meeting(x, y + movespeed, obj_wall))
        {
            y += movespeed;
            moved = true;
            global.move += 1;
        }
        else
        {
            switch(num)
            {
                case 1:
                    moved = true;
                    global.move +=1;
                    break;
                case 2:
                    if (argument0 == 2)
                    {
                        randomEnemyMove(argument1, -1, -1, -1, -1, -1, -1, -1);
                    }
                    else
                    {
                        randomEnemyMove(argument0, -1, -1, -1, -1, -1, -1, -1);
                    }
                    break;
                case 3:
                    if (argument0 == 2)
                    {
                        randomEnemyMove(argument1, argument2, -1, -1, -1, -1, -1, -1);
                    }
                    else if (argument1 == 2)
                    {
                        randomEnemyMove(argument0, argument2, -1, -1, -1, -1, -1, -1);
                    }
                    else
                    {
                        randomEnemyMove(argument0, argument1, -1, -1, -1, -1, -1, -1);
                    }
                    break;
                case 4:
                    if (argument0 == 2)
                    {
                        randomEnemyMove(argument1, argument2, argument3, -1, -1, -1, -1, -1);
                    }
                    else if (argument1 == 2)
                    {
                        randomEnemyMove(argument0, argument2, argument3, -1, -1, -1, -1, -1);
                    }
                    else if (argument2 == 2)
                    {
                        randomEnemyMove(argument0, argument1, argument3, -1, -1, -1, -1, -1);
                    }
                    else
                    {
                        randomEnemyMove(argument0, argument1, argument2, -1, -1, -1, -1, -1);
                    }
                    break;
                case 5:
                    if (argument0 == 2)
                    {
                        randomEnemyMove(argument1, argument2, argument3, argument4, -1, -1, -1, -1);
                    }
                    else if (argument1 == 2)
                    {
                        randomEnemyMove(argument0, argument2, argument3, argument4, -1, -1, -1, -1);
                    }
                    else if (argument2 == 2)
                    {
                        randomEnemyMove(argument0, argument1, argument3, argument4, -1, -1, -1, -1);
                    }
                    else if (argument3 == 2)
                    {
                        randomEnemyMove(argument0, argument1, argument2, argument4, -1, -1, -1, -1);
                    }
                    else
                    {
                        randomEnemyMove(argument0, argument1, argument2, argument3, -1, -1, -1, -1);
                    }
                    break;
                case 6:
                    if (argument0 == 2)
                    {
                        randomEnemyMove(argument1, argument2, argument3, argument4, argument5, -1, -1, -1);
                    }
                    else if (argument1 == 2)
                    {
                        randomEnemyMove(argument0, argument2, argument3, argument4, argument5, -1, -1, -1);
                    }
                    else if (argument2 == 2)
                    {
                        randomEnemyMove(argument0, argument1, argument3, argument4, argument5, -1, -1, -1);
                    }
                    else if (argument3 == 2)
                    {
                        randomEnemyMove(argument0, argument1, argument2, argument4, argument5, -1, -1, -1);
                    }
                    else if (argument4 == 2)
                    {
                        randomEnemyMove(argument0, argument1, argument2, argument3, argument5, -1, -1, -1);
                    }
                    else
                    {
                        randomEnemyMove(argument0, argument1, argument2, argument3, argument4, -1, -1, -1);
                    }
                    break;
                case 7:
                    if (argument0 == 2)
                    {
                        randomEnemyMove(argument1, argument2, argument3, argument4, argument5, argument6, -1, -1);
                    }
                    else if (argument1 == 2)
                    {
                        randomEnemyMove(argument0, argument2, argument3, argument4, argument5, argument6, -1, -1);
                    }
                    else if (argument2 == 2)
                    {
                        randomEnemyMove(argument0, argument1, argument3, argument4, argument5, argument6, -1, -1);
                    }
                    else if (argument3 == 2)
                    {
                        randomEnemyMove(argument0, argument1, argument2, argument4, argument5, argument6, -1, -1);
                    }
                    else if (argument4 == 2)
                    {
                        randomEnemyMove(argument0, argument1, argument2, argument3, argument5, argument6, -1, -1);
                    }
                    else if (argument5 == 2)
                    {
                        randomEnemyMove(argument0, argument1, argument2, argument3, argument4, argument6, -1, -1);
                    }
                    else
                    {
                        randomEnemyMove(argument0, argument1, argument2, argument3, argument4, argument5, -1, -1);
                    }
                    break;
                case 8:
                    if (argument0 == 2)
                    {
                        randomEnemyMove(argument1, argument2, argument3, argument4, argument5, argument6, argument7, -1);
                    }
                    else if (argument1 == 2)
                    {
                        randomEnemyMove(argument0, argument2, argument3, argument4, argument5, argument6, argument7, -1);
                    }
                    else if (argument2 == 2)
                    {
                        randomEnemyMove(argument0, argument1, argument3, argument4, argument5, argument6, argument7, -1);
                    }
                    else if (argument3 == 2)
                    {
                        randomEnemyMove(argument0, argument1, argument2, argument4, argument5, argument6, argument7, -1);
                    }
                    else if (argument4 == 2)
                    {
                        randomEnemyMove(argument0, argument1, argument2, argument3, argument5, argument6, argument7, -1);
                    }
                    else if (argument5 == 2)
                    {
                        randomEnemyMove(argument0, argument1, argument2, argument3, argument4, argument6, argument7, -1);
                    }
                    else if (argument6 == 2)
                    {
                        randomEnemyMove(argument0, argument1, argument2, argument3, argument4, argument5, argument7, -1);
                    }
                    else
                    {
                        randomEnemyMove(argument0, argument1, argument2, argument3, argument4, argument5, argument6, -1);
                    }
                    break;
            }
        }
    }
    else
    {
        switch(num)
        {
            case 1:
                moved = true;
                global.move +=1;
                break;
            case 2:
                if (argument0 == 2)
                {
                    randomEnemyMove(argument1, -1, -1, -1, -1, -1, -1, -1);
                }
                else
                {
                    randomEnemyMove(argument0, -1, -1, -1, -1, -1, -1, -1);
                }
                break;
            case 3:
                if (argument0 == 2)
                {
                    randomEnemyMove(argument1, argument2, -1, -1, -1, -1, -1, -1);
                }
                else if (argument1 == 2)
                {
                    randomEnemyMove(argument0, argument2, -1, -1, -1, -1, -1, -1);
                }
                else
                {
                    randomEnemyMove(argument0, argument1, -1, -1, -1, -1, -1, -1);
                }
                break;
            case 4:
                if (argument0 == 2)
                {
                    randomEnemyMove(argument1, argument2, argument3, -1, -1, -1, -1, -1);
                }
                else if (argument1 == 2)
                {
                    randomEnemyMove(argument0, argument2, argument3, -1, -1, -1, -1, -1);
                }
                else if (argument2 == 2)
                {
                    randomEnemyMove(argument0, argument1, argument3, -1, -1, -1, -1, -1);
                }
                else
                {
                    randomEnemyMove(argument0, argument1, argument2, -1, -1, -1, -1, -1);
                }
                break;
            case 5:
                if (argument0 == 2)
                {
                    randomEnemyMove(argument1, argument2, argument3, argument4, -1, -1, -1, -1);
                }
                else if (argument1 == 2)
                {
                    randomEnemyMove(argument0, argument2, argument3, argument4, -1, -1, -1, -1);
                }
                else if (argument2 == 2)
                {
                    randomEnemyMove(argument0, argument1, argument3, argument4, -1, -1, -1, -1);
                }
                else if (argument3 == 2)
                {
                    randomEnemyMove(argument0, argument1, argument2, argument4, -1, -1, -1, -1);
                }
                else
                {
                    randomEnemyMove(argument0, argument1, argument2, argument3, -1, -1, -1, -1);
                }
                break;
            case 6:
                if (argument0 == 2)
                {
                    randomEnemyMove(argument1, argument2, argument3, argument4, argument5, -1, -1, -1);
                }
                else if (argument1 == 2)
                {
                    randomEnemyMove(argument0, argument2, argument3, argument4, argument5, -1, -1, -1);
                }
                else if (argument2 == 2)
                {
                    randomEnemyMove(argument0, argument1, argument3, argument4, argument5, -1, -1, -1);
                }
                else if (argument3 == 2)
                {
                    randomEnemyMove(argument0, argument1, argument2, argument4, argument5, -1, -1, -1);
                }
                else if (argument4 == 2)
                {
                    randomEnemyMove(argument0, argument1, argument2, argument3, argument5, -1, -1, -1);
                }
                else
                {
                    randomEnemyMove(argument0, argument1, argument2, argument3, argument4, -1, -1, -1);
                }
                break;
            case 7:
                if (argument0 == 2)
                {
                    randomEnemyMove(argument1, argument2, argument3, argument4, argument5, argument6, -1, -1);
                }
                else if (argument1 == 2)
                {
                    randomEnemyMove(argument0, argument2, argument3, argument4, argument5, argument6, -1, -1);
                }
                else if (argument2 == 2)
                {
                    randomEnemyMove(argument0, argument1, argument3, argument4, argument5, argument6, -1, -1);
                }
                else if (argument3 == 2)
                {
                    randomEnemyMove(argument0, argument1, argument2, argument4, argument5, argument6, -1, -1);
                }
                else if (argument4 == 2)
                {
                    randomEnemyMove(argument0, argument1, argument2, argument3, argument5, argument6, -1, -1);
                }
                else if (argument5 == 2)
                {
                    randomEnemyMove(argument0, argument1, argument2, argument3, argument4, argument6, -1, -1);
                }
                else
                {
                    randomEnemyMove(argument0, argument1, argument2, argument3, argument4, argument5, -1, -1);
                }
                break;
            case 8:
                if (argument0 == 2)
                {
                    randomEnemyMove(argument1, argument2, argument3, argument4, argument5, argument6, argument7, -1);
                }
                else if (argument1 == 2)
                {
                    randomEnemyMove(argument0, argument2, argument3, argument4, argument5, argument6, argument7, -1);
                }
                else if (argument2 == 2)
                {
                    randomEnemyMove(argument0, argument1, argument3, argument4, argument5, argument6, argument7, -1);
                }
                else if (argument3 == 2)
                {
                    randomEnemyMove(argument0, argument1, argument2, argument4, argument5, argument6, argument7, -1);
                }
                else if (argument4 == 2)
                {
                    randomEnemyMove(argument0, argument1, argument2, argument3, argument5, argument6, argument7, -1);
                }
                else if (argument5 == 2)
                {
                    randomEnemyMove(argument0, argument1, argument2, argument3, argument4, argument6, argument7, -1);
                }
                else if (argument6 == 2)
                {
                    randomEnemyMove(argument0, argument1, argument2, argument3, argument4, argument5, argument7, -1);
                }
                else
                {
                    randomEnemyMove(argument0, argument1, argument2, argument3, argument4, argument5, argument6, -1);
                }
                break;
        }
    }
}
else if(dir == 3)
{
    if (!place_meeting(x + movespeed, y + movespeed, obj_entity))
    {
        if (!place_meeting(x + movespeed, y + movespeed, obj_wall))
        {
            x += movespeed;
            y += movespeed;
            moved = true;
            global.move += 1;
        }
        else
        {
            switch(num)
            {
                case 1:
                    moved = true;
                    global.move +=1;
                    break;
                case 2:
                    if (argument0 == 3)
                    {
                        randomEnemyMove(argument1, -1, -1, -1, -1, -1, -1, -1);
                    }
                    else
                    {
                        randomEnemyMove(argument0, -1, -1, -1, -1, -1, -1, -1);
                    }
                    break;
                case 3:
                    if (argument0 == 3)
                    {
                        randomEnemyMove(argument1, argument2, -1, -1, -1, -1, -1, -1);
                    }
                    else if (argument1 == 3)
                    {
                        randomEnemyMove(argument0, argument2, -1, -1, -1, -1, -1, -1);
                    }
                    else
                    {
                        randomEnemyMove(argument0, argument1, -1, -1, -1, -1, -1, -1);
                    }
                    break;
                case 4:
                    if (argument0 == 3)
                    {
                        randomEnemyMove(argument1, argument2, argument3, -1, -1, -1, -1, -1);
                    }
                    else if (argument1 == 3)
                    {
                        randomEnemyMove(argument0, argument2, argument3, -1, -1, -1, -1, -1);
                    }
                    else if (argument2 == 3)
                    {
                        randomEnemyMove(argument0, argument1, argument3, -1, -1, -1, -1, -1);
                    }
                    else
                    {
                        randomEnemyMove(argument0, argument1, argument2, -1, -1, -1, -1, -1);
                    }
                    break;
                case 5:
                    if (argument0 == 3)
                    {
                        randomEnemyMove(argument1, argument2, argument3, argument4, -1, -1, -1, -1);
                    }
                    else if (argument1 == 3)
                    {
                        randomEnemyMove(argument0, argument2, argument3, argument4, -1, -1, -1, -1);
                    }
                    else if (argument2 == 3)
                    {
                        randomEnemyMove(argument0, argument1, argument3, argument4, -1, -1, -1, -1);
                    }
                    else if (argument3 == 3)
                    {
                        randomEnemyMove(argument0, argument1, argument2, argument4, -1, -1, -1, -1);
                    }
                    else
                    {
                        randomEnemyMove(argument0, argument1, argument2, argument3, -1, -1, -1, -1);
                    }
                    break;
                case 6:
                    if (argument0 == 3)
                    {
                        randomEnemyMove(argument1, argument2, argument3, argument4, argument5, -1, -1, -1);
                    }
                    else if (argument1 == 3)
                    {
                        randomEnemyMove(argument0, argument2, argument3, argument4, argument5, -1, -1, -1);
                    }
                    else if (argument2 == 3)
                    {
                        randomEnemyMove(argument0, argument1, argument3, argument4, argument5, -1, -1, -1);
                    }
                    else if (argument3 == 3)
                    {
                        randomEnemyMove(argument0, argument1, argument2, argument4, argument5, -1, -1, -1);
                    }
                    else if (argument4 == 3)
                    {
                        randomEnemyMove(argument0, argument1, argument2, argument3, argument5, -1, -1, -1);
                    }
                    else
                    {
                        randomEnemyMove(argument0, argument1, argument2, argument3, argument4, -1, -1, -1);
                    }
                    break;
                case 7:
                    if (argument0 == 3)
                    {
                        randomEnemyMove(argument1, argument2, argument3, argument4, argument5, argument6, -1, -1);
                    }
                    else if (argument1 == 3)
                    {
                        randomEnemyMove(argument0, argument2, argument3, argument4, argument5, argument6, -1, -1);
                    }
                    else if (argument2 == 3)
                    {
                        randomEnemyMove(argument0, argument1, argument3, argument4, argument5, argument6, -1, -1);
                    }
                    else if (argument3 == 3)
                    {
                        randomEnemyMove(argument0, argument1, argument2, argument4, argument5, argument6, -1, -1);
                    }
                    else if (argument4 == 3)
                    {
                        randomEnemyMove(argument0, argument1, argument2, argument3, argument5, argument6, -1, -1);
                    }
                    else if (argument5 == 3)
                    {
                        randomEnemyMove(argument0, argument1, argument2, argument3, argument4, argument6, -1, -1);
                    }
                    else
                    {
                        randomEnemyMove(argument0, argument1, argument2, argument3, argument4, argument5, -1, -1);
                    }
                    break;
                case 8:
                    if (argument0 == 3)
                    {
                        randomEnemyMove(argument1, argument2, argument3, argument4, argument5, argument6, argument7, -1);
                    }
                    else if (argument1 == 3)
                    {
                        randomEnemyMove(argument0, argument2, argument3, argument4, argument5, argument6, argument7, -1);
                    }
                    else if (argument2 == 3)
                    {
                        randomEnemyMove(argument0, argument1, argument3, argument4, argument5, argument6, argument7, -1);
                    }
                    else if (argument3 == 3)
                    {
                        randomEnemyMove(argument0, argument1, argument2, argument4, argument5, argument6, argument7, -1);
                    }
                    else if (argument4 == 3)
                    {
                        randomEnemyMove(argument0, argument1, argument2, argument3, argument5, argument6, argument7, -1);
                    }
                    else if (argument5 == 3)
                    {
                        randomEnemyMove(argument0, argument1, argument2, argument3, argument4, argument6, argument7, -1);
                    }
                    else if (argument6 == 3)
                    {
                        randomEnemyMove(argument0, argument1, argument2, argument3, argument4, argument5, argument7, -1);
                    }
                    else
                    {
                        randomEnemyMove(argument0, argument1, argument2, argument3, argument4, argument5, argument6, -1);
                    }
                    break;
            }
        }
    }
    else
    {
        switch(num)
        {
            case 1:
                moved = true;
                global.move +=1;
                break;
            case 2:
                if (argument0 == 3)
                {
                    randomEnemyMove(argument1, -1, -1, -1, -1, -1, -1, -1);
                }
                else
                {
                    randomEnemyMove(argument0, -1, -1, -1, -1, -1, -1, -1);
                }
                break;
            case 3:
                if (argument0 == 3)
                {
                    randomEnemyMove(argument1, argument2, -1, -1, -1, -1, -1, -1);
                }
                else if (argument1 == 3)
                {
                    randomEnemyMove(argument0, argument2, -1, -1, -1, -1, -1, -1);
                }
                else
                {
                    randomEnemyMove(argument0, argument1, -1, -1, -1, -1, -1, -1);
                }
                break;
            case 4:
                if (argument0 == 3)
                {
                    randomEnemyMove(argument1, argument2, argument3, -1, -1, -1, -1, -1);
                }
                else if (argument1 == 3)
                {
                    randomEnemyMove(argument0, argument2, argument3, -1, -1, -1, -1, -1);
                }
                else if (argument2 == 3)
                {
                    randomEnemyMove(argument0, argument1, argument3, -1, -1, -1, -1, -1);
                }
                else
                {
                    randomEnemyMove(argument0, argument1, argument2, -1, -1, -1, -1, -1);
                }
                break;
            case 5:
                if (argument0 == 3)
                {
                    randomEnemyMove(argument1, argument2, argument3, argument4, -1, -1, -1, -1);
                }
                else if (argument1 == 3)
                {
                    randomEnemyMove(argument0, argument2, argument3, argument4, -1, -1, -1, -1);
                }
                else if (argument2 == 3)
                {
                    randomEnemyMove(argument0, argument1, argument3, argument4, -1, -1, -1, -1);
                }
                else if (argument3 == 3)
                {
                    randomEnemyMove(argument0, argument1, argument2, argument4, -1, -1, -1, -1);
                }
                else
                {
                    randomEnemyMove(argument0, argument1, argument2, argument3, -1, -1, -1, -1);
                }
                break;
            case 6:
                if (argument0 == 3)
                {
                    randomEnemyMove(argument1, argument2, argument3, argument4, argument5, -1, -1, -1);
                }
                else if (argument1 == 3)
                {
                    randomEnemyMove(argument0, argument2, argument3, argument4, argument5, -1, -1, -1);
                }
                else if (argument2 == 3)
                {
                    randomEnemyMove(argument0, argument1, argument3, argument4, argument5, -1, -1, -1);
                }
                else if (argument3 == 3)
                {
                    randomEnemyMove(argument0, argument1, argument2, argument4, argument5, -1, -1, -1);
                }
                else if (argument4 == 3)
                {
                    randomEnemyMove(argument0, argument1, argument2, argument3, argument5, -1, -1, -1);
                }
                else
                {
                    randomEnemyMove(argument0, argument1, argument2, argument3, argument4, -1, -1, -1);
                }
                break;
            case 7:
                if (argument0 == 3)
                {
                    randomEnemyMove(argument1, argument2, argument3, argument4, argument5, argument6, -1, -1);
                }
                else if (argument1 == 3)
                {
                    randomEnemyMove(argument0, argument2, argument3, argument4, argument5, argument6, -1, -1);
                }
                else if (argument2 == 3)
                {
                    randomEnemyMove(argument0, argument1, argument3, argument4, argument5, argument6, -1, -1);
                }
                else if (argument3 == 3)
                {
                    randomEnemyMove(argument0, argument1, argument2, argument4, argument5, argument6, -1, -1);
                }
                else if (argument4 == 3)
                {
                    randomEnemyMove(argument0, argument1, argument2, argument3, argument5, argument6, -1, -1);
                }
                else if (argument5 == 3)
                {
                    randomEnemyMove(argument0, argument1, argument2, argument3, argument4, argument6, -1, -1);
                }
                else
                {
                    randomEnemyMove(argument0, argument1, argument2, argument3, argument4, argument5, -1, -1);
                }
                break;
            case 8:
                if (argument0 == 3)
                {
                    randomEnemyMove(argument1, argument2, argument3, argument4, argument5, argument6, argument7, -1);
                }
                else if (argument1 == 3)
                {
                    randomEnemyMove(argument0, argument2, argument3, argument4, argument5, argument6, argument7, -1);
                }
                else if (argument2 == 3)
                {
                    randomEnemyMove(argument0, argument1, argument3, argument4, argument5, argument6, argument7, -1);
                }
                else if (argument3 == 3)
                {
                    randomEnemyMove(argument0, argument1, argument2, argument4, argument5, argument6, argument7, -1);
                }
                else if (argument4 == 3)
                {
                    randomEnemyMove(argument0, argument1, argument2, argument3, argument5, argument6, argument7, -1);
                }
                else if (argument5 == 3)
                {
                    randomEnemyMove(argument0, argument1, argument2, argument3, argument4, argument6, argument7, -1);
                }
                else if (argument6 == 3)
                {
                    randomEnemyMove(argument0, argument1, argument2, argument3, argument4, argument5, argument7, -1);
                }
                else
                {
                    randomEnemyMove(argument0, argument1, argument2, argument3, argument4, argument5, argument6, -1);
                }
                break;
        }
    }
}
else if(dir == 4)
{
    if (!place_meeting(x - movespeed, y, obj_entity))
    {
        if (!place_meeting(x - movespeed, y, obj_wall))
        {
            x -= movespeed;
            moved = true;
            global.move += 1;
        }
        else
        {
            switch(num)
            {
                case 1:
                    moved = true;
                    global.move +=1;
                    break;
                case 2:
                    if (argument0 == 4)
                    {
                        randomEnemyMove(argument1, -1, -1, -1, -1, -1, -1, -1);
                    }
                    else
                    {
                        randomEnemyMove(argument0, -1, -1, -1, -1, -1, -1, -1);
                    }
                    break;
                case 3:
                    if (argument0 == 4)
                    {
                        randomEnemyMove(argument1, argument2, -1, -1, -1, -1, -1, -1);
                    }
                    else if (argument1 == 4)
                    {
                        randomEnemyMove(argument0, argument2, -1, -1, -1, -1, -1, -1);
                    }
                    else
                    {
                        randomEnemyMove(argument0, argument1, -1, -1, -1, -1, -1, -1);
                    }
                    break;
                case 4:
                    if (argument0 == 4)
                    {
                        randomEnemyMove(argument1, argument2, argument3, -1, -1, -1, -1, -1);
                    }
                    else if (argument1 == 4)
                    {
                        randomEnemyMove(argument0, argument2, argument3, -1, -1, -1, -1, -1);
                    }
                    else if (argument2 == 4)
                    {
                        randomEnemyMove(argument0, argument1, argument3, -1, -1, -1, -1, -1);
                    }
                    else
                    {
                        randomEnemyMove(argument0, argument1, argument2, -1, -1, -1, -1, -1);
                    }
                    break;
                case 5:
                    if (argument0 == 4)
                    {
                        randomEnemyMove(argument1, argument2, argument3, argument4, -1, -1, -1, -1);
                    }
                    else if (argument1 == 4)
                    {
                        randomEnemyMove(argument0, argument2, argument3, argument4, -1, -1, -1, -1);
                    }
                    else if (argument2 == 4)
                    {
                        randomEnemyMove(argument0, argument1, argument3, argument4, -1, -1, -1, -1);
                    }
                    else if (argument3 == 4)
                    {
                        randomEnemyMove(argument0, argument1, argument2, argument4, -1, -1, -1, -1);
                    }
                    else
                    {
                        randomEnemyMove(argument0, argument1, argument2, argument3, -1, -1, -1, -1);
                    }
                    break;
                case 6:
                    if (argument0 == 4)
                    {
                        randomEnemyMove(argument1, argument2, argument3, argument4, argument5, -1, -1, -1);
                    }
                    else if (argument1 == 4)
                    {
                        randomEnemyMove(argument0, argument2, argument3, argument4, argument5, -1, -1, -1);
                    }
                    else if (argument2 == 4)
                    {
                        randomEnemyMove(argument0, argument1, argument3, argument4, argument5, -1, -1, -1);
                    }
                    else if (argument3 == 4)
                    {
                        randomEnemyMove(argument0, argument1, argument2, argument4, argument5, -1, -1, -1);
                    }
                    else if (argument4 == 4)
                    {
                        randomEnemyMove(argument0, argument1, argument2, argument3, argument5, -1, -1, -1);
                    }
                    else
                    {
                        randomEnemyMove(argument0, argument1, argument2, argument3, argument4, -1, -1, -1);
                    }
                    break;
                case 7:
                    if (argument0 == 4)
                    {
                        randomEnemyMove(argument1, argument2, argument3, argument4, argument5, argument6, -1, -1);
                    }
                    else if (argument1 == 4)
                    {
                        randomEnemyMove(argument0, argument2, argument3, argument4, argument5, argument6, -1, -1);
                    }
                    else if (argument2 == 4)
                    {
                        randomEnemyMove(argument0, argument1, argument3, argument4, argument5, argument6, -1, -1);
                    }
                    else if (argument3 == 4)
                    {
                        randomEnemyMove(argument0, argument1, argument2, argument4, argument5, argument6, -1, -1);
                    }
                    else if (argument4 == 4)
                    {
                        randomEnemyMove(argument0, argument1, argument2, argument3, argument5, argument6, -1, -1);
                    }
                    else if (argument5 == 4)
                    {
                        randomEnemyMove(argument0, argument1, argument2, argument3, argument4, argument6, -1, -1);
                    }
                    else
                    {
                        randomEnemyMove(argument0, argument1, argument2, argument3, argument4, argument5, -1, -1);
                    }
                    break;
                case 8:
                    if (argument0 == 4)
                    {
                        randomEnemyMove(argument1, argument2, argument3, argument4, argument5, argument6, argument7, -1);
                    }
                    else if (argument1 == 4)
                    {
                        randomEnemyMove(argument0, argument2, argument3, argument4, argument5, argument6, argument7, -1);
                    }
                    else if (argument2 == 4)
                    {
                        randomEnemyMove(argument0, argument1, argument3, argument4, argument5, argument6, argument7, -1);
                    }
                    else if (argument3 == 4)
                    {
                        randomEnemyMove(argument0, argument1, argument2, argument4, argument5, argument6, argument7, -1);
                    }
                    else if (argument4 == 4)
                    {
                        randomEnemyMove(argument0, argument1, argument2, argument3, argument5, argument6, argument7, -1);
                    }
                    else if (argument5 == 4)
                    {
                        randomEnemyMove(argument0, argument1, argument2, argument3, argument4, argument6, argument7, -1);
                    }
                    else if (argument6 == 4)
                    {
                        randomEnemyMove(argument0, argument1, argument2, argument3, argument4, argument5, argument7, -1);
                    }
                    else
                    {
                        randomEnemyMove(argument0, argument1, argument2, argument3, argument4, argument5, argument6, -1);
                    }
                    break;
            }        
        }
    }
    else
    {
        switch(num)
        {
            case 1:
                moved = true;
                global.move +=1;
                break;
            case 2:
                if (argument0 == 4)
                {
                    randomEnemyMove(argument1, -1, -1, -1, -1, -1, -1, -1);
                }
                else
                {
                    randomEnemyMove(argument0, -1, -1, -1, -1, -1, -1, -1);
                }
                break;
            case 3:
                if (argument0 == 4)
                {
                    randomEnemyMove(argument1, argument2, -1, -1, -1, -1, -1, -1);
                }
                else if (argument1 == 4)
                {
                    randomEnemyMove(argument0, argument2, -1, -1, -1, -1, -1, -1);
                }
                else
                {
                    randomEnemyMove(argument0, argument1, -1, -1, -1, -1, -1, -1);
                }
                break;
            case 4:
                if (argument0 == 4)
                {
                    randomEnemyMove(argument1, argument2, argument3, -1, -1, -1, -1, -1);
                }
                else if (argument1 == 4)
                {
                    randomEnemyMove(argument0, argument2, argument3, -1, -1, -1, -1, -1);
                }
                else if (argument2 == 4)
                {
                    randomEnemyMove(argument0, argument1, argument3, -1, -1, -1, -1, -1);
                }
                else
                {
                    randomEnemyMove(argument0, argument1, argument2, -1, -1, -1, -1, -1);
                }
                break;
            case 5:
                if (argument0 == 4)
                {
                    randomEnemyMove(argument1, argument2, argument3, argument4, -1, -1, -1, -1);
                }
                else if (argument1 == 4)
                {
                    randomEnemyMove(argument0, argument2, argument3, argument4, -1, -1, -1, -1);
                }
                else if (argument2 == 4)
                {
                    randomEnemyMove(argument0, argument1, argument3, argument4, -1, -1, -1, -1);
                }
                else if (argument3 == 4)
                {
                    randomEnemyMove(argument0, argument1, argument2, argument4, -1, -1, -1, -1);
                }
                else
                {
                    randomEnemyMove(argument0, argument1, argument2, argument3, -1, -1, -1, -1);
                }
                break;
            case 6:
                if (argument0 == 4)
                {
                    randomEnemyMove(argument1, argument2, argument3, argument4, argument5, -1, -1, -1);
                }
                else if (argument1 == 4)
                {
                    randomEnemyMove(argument0, argument2, argument3, argument4, argument5, -1, -1, -1);
                }
                else if (argument2 == 4)
                {
                    randomEnemyMove(argument0, argument1, argument3, argument4, argument5, -1, -1, -1);
                }
                else if (argument3 == 4)
                {
                    randomEnemyMove(argument0, argument1, argument2, argument4, argument5, -1, -1, -1);
                }
                else if (argument4 == 4)
                {
                    randomEnemyMove(argument0, argument1, argument2, argument3, argument5, -1, -1, -1);
                }
                else
                {
                    randomEnemyMove(argument0, argument1, argument2, argument3, argument4, -1, -1, -1);
                }
                break;
            case 7:
                if (argument0 == 4)
                {
                    randomEnemyMove(argument1, argument2, argument3, argument4, argument5, argument6, -1, -1);
                }
                else if (argument1 == 4)
                {
                    randomEnemyMove(argument0, argument2, argument3, argument4, argument5, argument6, -1, -1);
                }
                else if (argument2 == 4)
                {
                    randomEnemyMove(argument0, argument1, argument3, argument4, argument5, argument6, -1, -1);
                }
                else if (argument3 == 4)
                {
                    randomEnemyMove(argument0, argument1, argument2, argument4, argument5, argument6, -1, -1);
                }
                else if (argument4 == 4)
                {
                    randomEnemyMove(argument0, argument1, argument2, argument3, argument5, argument6, -1, -1);
                }
                else if (argument5 == 4)
                {
                    randomEnemyMove(argument0, argument1, argument2, argument3, argument4, argument6, -1, -1);
                }
                else
                {
                    randomEnemyMove(argument0, argument1, argument2, argument3, argument4, argument5, -1, -1);
                }
                break;
            case 8:
                if (argument0 == 4)
                {
                    randomEnemyMove(argument1, argument2, argument3, argument4, argument5, argument6, argument7, -1);
                }
                else if (argument1 == 4)
                {
                    randomEnemyMove(argument0, argument2, argument3, argument4, argument5, argument6, argument7, -1);
                }
                else if (argument2 == 4)
                {
                    randomEnemyMove(argument0, argument1, argument3, argument4, argument5, argument6, argument7, -1);
                }
                else if (argument3 == 4)
                {
                    randomEnemyMove(argument0, argument1, argument2, argument4, argument5, argument6, argument7, -1);
                }
                else if (argument4 == 4)
                {
                    randomEnemyMove(argument0, argument1, argument2, argument3, argument5, argument6, argument7, -1);
                }
                else if (argument5 == 4)
                {
                    randomEnemyMove(argument0, argument1, argument2, argument3, argument4, argument6, argument7, -1);
                }
                else if (argument6 == 4)
                {
                    randomEnemyMove(argument0, argument1, argument2, argument3, argument4, argument5, argument7, -1);
                }
                else
                {
                    randomEnemyMove(argument0, argument1, argument2, argument3, argument4, argument5, argument6, -1);
                }
                break;
        }
    }
}
else if(dir == 6)
{
    if (!place_meeting(x + movespeed, y, obj_entity))
    {
        if (!place_meeting(x + movespeed, y, obj_wall))
        {
            x += movespeed;
            moved = true;
            global.move += 1;
        }
        else
        {
            switch(num)
            {
                case 1:
                    moved = true;
                    global.move +=1;
                    break;
                case 2:
                    if (argument0 == 6)
                    {
                        randomEnemyMove(argument1, -1, -1, -1, -1, -1, -1, -1);
                    }
                    else
                    {
                        randomEnemyMove(argument0, -1, -1, -1, -1, -1, -1, -1);
                    }
                    break;
                case 3:
                    if (argument0 == 6)
                    {
                        randomEnemyMove(argument1, argument2, -1, -1, -1, -1, -1, -1);
                    }
                    else if (argument1 == 6)
                    {
                        randomEnemyMove(argument0, argument2, -1, -1, -1, -1, -1, -1);
                    }
                    else
                    {
                        randomEnemyMove(argument0, argument1, -1, -1, -1, -1, -1, -1);
                    }
                    break;
                case 4:
                    if (argument0 == 6)
                    {
                        randomEnemyMove(argument1, argument2, argument3, -1, -1, -1, -1, -1);
                    }
                    else if (argument1 == 6)
                    {
                        randomEnemyMove(argument0, argument2, argument3, -1, -1, -1, -1, -1);
                    }
                    else if (argument2 == 6)
                    {
                        randomEnemyMove(argument0, argument1, argument3, -1, -1, -1, -1, -1);
                    }
                    else
                    {
                        randomEnemyMove(argument0, argument1, argument2, -1, -1, -1, -1, -1);
                    }
                    break;
                case 5:
                    if (argument0 == 6)
                    {
                        randomEnemyMove(argument1, argument2, argument3, argument4, -1, -1, -1, -1);
                    }
                    else if (argument1 == 6)
                    {
                        randomEnemyMove(argument0, argument2, argument3, argument4, -1, -1, -1, -1);
                    }
                    else if (argument2 == 6)
                    {
                        randomEnemyMove(argument0, argument1, argument3, argument4, -1, -1, -1, -1);
                    }
                    else if (argument3 == 6)
                    {
                        randomEnemyMove(argument0, argument1, argument2, argument4, -1, -1, -1, -1);
                    }
                    else
                    {
                        randomEnemyMove(argument0, argument1, argument2, argument3, -1, -1, -1, -1);
                    }
                    break;
                case 6:
                    if (argument0 == 6)
                    {
                        randomEnemyMove(argument1, argument2, argument3, argument4, argument5, -1, -1, -1);
                    }
                    else if (argument1 == 6)
                    {
                        randomEnemyMove(argument0, argument2, argument3, argument4, argument5, -1, -1, -1);
                    }
                    else if (argument2 == 6)
                    {
                        randomEnemyMove(argument0, argument1, argument3, argument4, argument5, -1, -1, -1);
                    }
                    else if (argument3 == 6)
                    {
                        randomEnemyMove(argument0, argument1, argument2, argument4, argument5, -1, -1, -1);
                    }
                    else if (argument4 == 6)
                    {
                        randomEnemyMove(argument0, argument1, argument2, argument3, argument5, -1, -1, -1);
                    }
                    else
                    {
                        randomEnemyMove(argument0, argument1, argument2, argument3, argument4, -1, -1, -1);
                    }
                    break;
                case 7:
                    if (argument0 == 6)
                    {
                        randomEnemyMove(argument1, argument2, argument3, argument4, argument5, argument6, -1, -1);
                    }
                    else if (argument1 == 6)
                    {
                        randomEnemyMove(argument0, argument2, argument3, argument4, argument5, argument6, -1, -1);
                    }
                    else if (argument2 == 6)
                    {
                        randomEnemyMove(argument0, argument1, argument3, argument4, argument5, argument6, -1, -1);
                    }
                    else if (argument3 == 6)
                    {
                        randomEnemyMove(argument0, argument1, argument2, argument4, argument5, argument6, -1, -1);
                    }
                    else if (argument4 == 6)
                    {
                        randomEnemyMove(argument0, argument1, argument2, argument3, argument5, argument6, -1, -1);
                    }
                    else if (argument5 == 6)
                    {
                        randomEnemyMove(argument0, argument1, argument2, argument3, argument4, argument6, -1, -1);
                    }
                    else
                    {
                        randomEnemyMove(argument0, argument1, argument2, argument3, argument4, argument5, -1, -1);
                    }
                    break;
                case 8:
                    if (argument0 == 6)
                    {
                        randomEnemyMove(argument1, argument2, argument3, argument4, argument5, argument6, argument7, -1);
                    }
                    else if (argument1 == 6)
                    {
                        randomEnemyMove(argument0, argument2, argument3, argument4, argument5, argument6, argument7, -1);
                    }
                    else if (argument2 == 6)
                    {
                        randomEnemyMove(argument0, argument1, argument3, argument4, argument5, argument6, argument7, -1);
                    }
                    else if (argument3 == 6)
                    {
                        randomEnemyMove(argument0, argument1, argument2, argument4, argument5, argument6, argument7, -1);
                    }
                    else if (argument4 == 6)
                    {
                        randomEnemyMove(argument0, argument1, argument2, argument3, argument5, argument6, argument7, -1);
                    }
                    else if (argument5 == 6)
                    {
                        randomEnemyMove(argument0, argument1, argument2, argument3, argument4, argument6, argument7, -1);
                    }
                    else if (argument6 == 6)
                    {
                        randomEnemyMove(argument0, argument1, argument2, argument3, argument4, argument5, argument7, -1);
                    }
                    else
                    {
                        randomEnemyMove(argument0, argument1, argument2, argument3, argument4, argument5, argument6, -1);
                    }
                    break;
            }
        }
    }
    else
    {
        switch(num)
        {
            case 1:
                moved = true;
                global.move +=1;
                break;
            case 2:
                if (argument0 == 6)
                {
                    randomEnemyMove(argument1, -1, -1, -1, -1, -1, -1, -1);
                }
                else
                {
                    randomEnemyMove(argument0, -1, -1, -1, -1, -1, -1, -1);
                }
                break;
            case 3:
                if (argument0 == 6)
                {
                    randomEnemyMove(argument1, argument2, -1, -1, -1, -1, -1, -1);
                }
                else if (argument1 == 6)
                {
                    randomEnemyMove(argument0, argument2, -1, -1, -1, -1, -1, -1);
                }
                else
                {
                    randomEnemyMove(argument0, argument1, -1, -1, -1, -1, -1, -1);
                }
                break;
            case 4:
                if (argument0 == 6)
                {
                    randomEnemyMove(argument1, argument2, argument3, -1, -1, -1, -1, -1);
                }
                else if (argument1 == 6)
                {
                    randomEnemyMove(argument0, argument2, argument3, -1, -1, -1, -1, -1);
                }
                else if (argument2 == 6)
                {
                    randomEnemyMove(argument0, argument1, argument3, -1, -1, -1, -1, -1);
                }
                else
                {
                    randomEnemyMove(argument0, argument1, argument2, -1, -1, -1, -1, -1);
                }
                break;
            case 5:
                if (argument0 == 6)
                {
                    randomEnemyMove(argument1, argument2, argument3, argument4, -1, -1, -1, -1);
                }
                else if (argument1 == 6)
                {
                    randomEnemyMove(argument0, argument2, argument3, argument4, -1, -1, -1, -1);
                }
                else if (argument2 == 6)
                {
                    randomEnemyMove(argument0, argument1, argument3, argument4, -1, -1, -1, -1);
                }
                else if (argument3 == 6)
                {
                    randomEnemyMove(argument0, argument1, argument2, argument4, -1, -1, -1, -1);
                }
                else
                {
                    randomEnemyMove(argument0, argument1, argument2, argument3, -1, -1, -1, -1);
                }
                break;
            case 6:
                if (argument0 == 6)
                {
                    randomEnemyMove(argument1, argument2, argument3, argument4, argument5, -1, -1, -1);
                }
                else if (argument1 == 6)
                {
                    randomEnemyMove(argument0, argument2, argument3, argument4, argument5, -1, -1, -1);
                }
                else if (argument2 == 6)
                {
                    randomEnemyMove(argument0, argument1, argument3, argument4, argument5, -1, -1, -1);
                }
                else if (argument3 == 6)
                {
                    randomEnemyMove(argument0, argument1, argument2, argument4, argument5, -1, -1, -1);
                }
                else if (argument4 == 6)
                {
                    randomEnemyMove(argument0, argument1, argument2, argument3, argument5, -1, -1, -1);
                }
                else
                {
                    randomEnemyMove(argument0, argument1, argument2, argument3, argument4, -1, -1, -1);
                }
                break;
            case 7:
                if (argument0 == 6)
                {
                    randomEnemyMove(argument1, argument2, argument3, argument4, argument5, argument6, -1, -1);
                }
                else if (argument1 == 6)
                {
                    randomEnemyMove(argument0, argument2, argument3, argument4, argument5, argument6, -1, -1);
                }
                else if (argument2 == 6)
                {
                    randomEnemyMove(argument0, argument1, argument3, argument4, argument5, argument6, -1, -1);
                }
                else if (argument3 == 6)
                {
                    randomEnemyMove(argument0, argument1, argument2, argument4, argument5, argument6, -1, -1);
                }
                else if (argument4 == 6)
                {
                    randomEnemyMove(argument0, argument1, argument2, argument3, argument5, argument6, -1, -1);
                }
                else if (argument5 == 6)
                {
                    randomEnemyMove(argument0, argument1, argument2, argument3, argument4, argument6, -1, -1);
                }
                else
                {
                    randomEnemyMove(argument0, argument1, argument2, argument3, argument4, argument5, -1, -1);
                }
                break;
            case 8:
                if (argument0 == 6)
                {
                    randomEnemyMove(argument1, argument2, argument3, argument4, argument5, argument6, argument7, -1);
                }
                else if (argument1 == 6)
                {
                    randomEnemyMove(argument0, argument2, argument3, argument4, argument5, argument6, argument7, -1);
                }
                else if (argument2 == 6)
                {
                    randomEnemyMove(argument0, argument1, argument3, argument4, argument5, argument6, argument7, -1);
                }
                else if (argument3 == 6)
                {
                    randomEnemyMove(argument0, argument1, argument2, argument4, argument5, argument6, argument7, -1);
                }
                else if (argument4 == 6)
                {
                    randomEnemyMove(argument0, argument1, argument2, argument3, argument5, argument6, argument7, -1);
                }
                else if (argument5 == 6)
                {
                    randomEnemyMove(argument0, argument1, argument2, argument3, argument4, argument6, argument7, -1);
                }
                else if (argument6 == 6)
                {
                    randomEnemyMove(argument0, argument1, argument2, argument3, argument4, argument5, argument7, -1);
                }
                else
                {
                    randomEnemyMove(argument0, argument1, argument2, argument3, argument4, argument5, argument6, -1);
                }
                break;
        }
    }
}
else if(dir == 7)
{
    if (!place_meeting(x - movespeed, y - movespeed, obj_entity))
    {
        if (!place_meeting(x - movespeed, y - movespeed, obj_wall))
        {
            x -= movespeed;
            y -= movespeed;
            moved = true;
            global.move += 1;
        }
        else
        {
            switch(num)
            {
                case 1:
                    moved = true;
                    global.move +=1;
                    break;
                case 2:
                    if (argument0 == 7)
                    {
                        randomEnemyMove(argument1, -1, -1, -1, -1, -1, -1, -1);
                    }
                    else
                    {
                        randomEnemyMove(argument0, -1, -1, -1, -1, -1, -1, -1);
                    }
                    break;
                case 3:
                    if (argument0 == 7)
                    {
                        randomEnemyMove(argument1, argument2, -1, -1, -1, -1, -1, -1);
                    }
                    else if (argument1 == 7)
                    {
                        randomEnemyMove(argument0, argument2, -1, -1, -1, -1, -1, -1);
                    }
                    else
                    {
                        randomEnemyMove(argument0, argument1, -1, -1, -1, -1, -1, -1);
                    }
                    break;
                case 4:
                    if (argument0 == 7)
                    {
                        randomEnemyMove(argument1, argument2, argument3, -1, -1, -1, -1, -1);
                    }
                    else if (argument1 == 7)
                    {
                        randomEnemyMove(argument0, argument2, argument3, -1, -1, -1, -1, -1);
                    }
                    else if (argument2 == 7)
                    {
                        randomEnemyMove(argument0, argument1, argument3, -1, -1, -1, -1, -1);
                    }
                    else
                    {
                        randomEnemyMove(argument0, argument1, argument2, -1, -1, -1, -1, -1);
                    }
                    break;
                case 5:
                    if (argument0 == 7)
                    {
                        randomEnemyMove(argument1, argument2, argument3, argument4, -1, -1, -1, -1);
                    }
                    else if (argument1 == 7)
                    {
                        randomEnemyMove(argument0, argument2, argument3, argument4, -1, -1, -1, -1);
                    }
                    else if (argument2 == 7)
                    {
                        randomEnemyMove(argument0, argument1, argument3, argument4, -1, -1, -1, -1);
                    }
                    else if (argument3 == 7)
                    {
                        randomEnemyMove(argument0, argument1, argument2, argument4, -1, -1, -1, -1);
                    }
                    else
                    {
                        randomEnemyMove(argument0, argument1, argument2, argument3, -1, -1, -1, -1);
                    }
                    break;
                case 6:
                    if (argument0 == 7)
                    {
                        randomEnemyMove(argument1, argument2, argument3, argument4, argument5, -1, -1, -1);
                    }
                    else if (argument1 == 7)
                    {
                        randomEnemyMove(argument0, argument2, argument3, argument4, argument5, -1, -1, -1);
                    }
                    else if (argument2 == 7)
                    {
                        randomEnemyMove(argument0, argument1, argument3, argument4, argument5, -1, -1, -1);
                    }
                    else if (argument3 == 7)
                    {
                        randomEnemyMove(argument0, argument1, argument2, argument4, argument5, -1, -1, -1);
                    }
                    else if (argument4 == 7)
                    {
                        randomEnemyMove(argument0, argument1, argument2, argument3, argument5, -1, -1, -1);
                    }
                    else
                    {
                        randomEnemyMove(argument0, argument1, argument2, argument3, argument4, -1, -1, -1);
                    }
                    break;
                case 7:
                    if (argument0 == 7)
                    {
                        randomEnemyMove(argument1, argument2, argument3, argument4, argument5, argument6, -1, -1);
                    }
                    else if (argument1 == 7)
                    {
                        randomEnemyMove(argument0, argument2, argument3, argument4, argument5, argument6, -1, -1);
                    }
                    else if (argument2 == 7)
                    {
                        randomEnemyMove(argument0, argument1, argument3, argument4, argument5, argument6, -1, -1);
                    }
                    else if (argument3 == 7)
                    {
                        randomEnemyMove(argument0, argument1, argument2, argument4, argument5, argument6, -1, -1);
                    }
                    else if (argument4 == 7)
                    {
                        randomEnemyMove(argument0, argument1, argument2, argument3, argument5, argument6, -1, -1);
                    }
                    else if (argument5 == 7)
                    {
                        randomEnemyMove(argument0, argument1, argument2, argument3, argument4, argument6, -1, -1);
                    }
                    else
                    {
                        randomEnemyMove(argument0, argument1, argument2, argument3, argument4, argument5, -1, -1);
                    }
                    break;
                case 8:
                    if (argument0 == 7)
                    {
                        randomEnemyMove(argument1, argument2, argument3, argument4, argument5, argument6, argument7, -1);
                    }
                    else if (argument1 == 7)
                    {
                        randomEnemyMove(argument0, argument2, argument3, argument4, argument5, argument6, argument7, -1);
                    }
                    else if (argument2 == 7)
                    {
                        randomEnemyMove(argument0, argument1, argument3, argument4, argument5, argument6, argument7, -1);
                    }
                    else if (argument3 == 7)
                    {
                        randomEnemyMove(argument0, argument1, argument2, argument4, argument5, argument6, argument7, -1);
                    }
                    else if (argument4 == 7)
                    {
                        randomEnemyMove(argument0, argument1, argument2, argument3, argument5, argument6, argument7, -1);
                    }
                    else if (argument5 == 7)
                    {
                        randomEnemyMove(argument0, argument1, argument2, argument3, argument4, argument6, argument7, -1);
                    }
                    else if (argument6 == 7)
                    {
                        randomEnemyMove(argument0, argument1, argument2, argument3, argument4, argument5, argument7, -1);
                    }
                    else
                    {
                        randomEnemyMove(argument0, argument1, argument2, argument3, argument4, argument5, argument6, -1);
                    }
                    break;
            }
        }
    }
    else
    {
        switch(num)
        {
            case 1:
                moved = true;
                global.move +=1;
                break;
            case 2:
                if (argument0 == 7)
                {
                    randomEnemyMove(argument1, -1, -1, -1, -1, -1, -1, -1);
                }
                else
                {
                    randomEnemyMove(argument0, -1, -1, -1, -1, -1, -1, -1);
                }
                break;
            case 3:
                if (argument0 == 7)
                {
                    randomEnemyMove(argument1, argument2, -1, -1, -1, -1, -1, -1);
                }
                else if (argument1 == 7)
                {
                    randomEnemyMove(argument0, argument2, -1, -1, -1, -1, -1, -1);
                }
                else
                {
                    randomEnemyMove(argument0, argument1, -1, -1, -1, -1, -1, -1);
                }
                break;
            case 4:
                if (argument0 == 7)
                {
                    randomEnemyMove(argument1, argument2, argument3, -1, -1, -1, -1, -1);
                }
                else if (argument1 == 7)
                {
                    randomEnemyMove(argument0, argument2, argument3, -1, -1, -1, -1, -1);
                }
                else if (argument2 == 7)
                {
                    randomEnemyMove(argument0, argument1, argument3, -1, -1, -1, -1, -1);
                }
                else
                {
                    randomEnemyMove(argument0, argument1, argument2, -1, -1, -1, -1, -1);
                }
                break;
            case 5:
                if (argument0 == 7)
                {
                    randomEnemyMove(argument1, argument2, argument3, argument4, -1, -1, -1, -1);
                }
                else if (argument1 == 7)
                {
                    randomEnemyMove(argument0, argument2, argument3, argument4, -1, -1, -1, -1);
                }
                else if (argument2 == 7)
                {
                    randomEnemyMove(argument0, argument1, argument3, argument4, -1, -1, -1, -1);
                }
                else if (argument3 == 7)
                {
                    randomEnemyMove(argument0, argument1, argument2, argument4, -1, -1, -1, -1);
                }
                else
                {
                    randomEnemyMove(argument0, argument1, argument2, argument3, -1, -1, -1, -1);
                }
                break;
            case 6:
                if (argument0 == 7)
                {
                    randomEnemyMove(argument1, argument2, argument3, argument4, argument5, -1, -1, -1);
                }
                else if (argument1 == 7)
                {
                    randomEnemyMove(argument0, argument2, argument3, argument4, argument5, -1, -1, -1);
                }
                else if (argument2 == 7)
                {
                    randomEnemyMove(argument0, argument1, argument3, argument4, argument5, -1, -1, -1);
                }
                else if (argument3 == 7)
                {
                    randomEnemyMove(argument0, argument1, argument2, argument4, argument5, -1, -1, -1);
                }
                else if (argument4 == 7)
                {
                    randomEnemyMove(argument0, argument1, argument2, argument3, argument5, -1, -1, -1);
                }
                else
                {
                    randomEnemyMove(argument0, argument1, argument2, argument3, argument4, -1, -1, -1);
                }
                break;
            case 7:
                if (argument0 == 7)
                {
                    randomEnemyMove(argument1, argument2, argument3, argument4, argument5, argument6, -1, -1);
                }
                else if (argument1 == 7)
                {
                    randomEnemyMove(argument0, argument2, argument3, argument4, argument5, argument6, -1, -1);
                }
                else if (argument2 == 7)
                {
                    randomEnemyMove(argument0, argument1, argument3, argument4, argument5, argument6, -1, -1);
                }
                else if (argument3 == 7)
                {
                    randomEnemyMove(argument0, argument1, argument2, argument4, argument5, argument6, -1, -1);
                }
                else if (argument4 == 7)
                {
                    randomEnemyMove(argument0, argument1, argument2, argument3, argument5, argument6, -1, -1);
                }
                else if (argument5 == 7)
                {
                    randomEnemyMove(argument0, argument1, argument2, argument3, argument4, argument6, -1, -1);
                }
                else
                {
                    randomEnemyMove(argument0, argument1, argument2, argument3, argument4, argument5, -1, -1);
                }
                break;
            case 8:
                if (argument0 == 7)
                {
                    randomEnemyMove(argument1, argument2, argument3, argument4, argument5, argument6, argument7, -1);
                }
                else if (argument1 == 7)
                {
                    randomEnemyMove(argument0, argument2, argument3, argument4, argument5, argument6, argument7, -1);
                }
                else if (argument2 == 7)
                {
                    randomEnemyMove(argument0, argument1, argument3, argument4, argument5, argument6, argument7, -1);
                }
                else if (argument3 == 7)
                {
                    randomEnemyMove(argument0, argument1, argument2, argument4, argument5, argument6, argument7, -1);
                }
                else if (argument4 == 7)
                {
                    randomEnemyMove(argument0, argument1, argument2, argument3, argument5, argument6, argument7, -1);
                }
                else if (argument5 == 7)
                {
                    randomEnemyMove(argument0, argument1, argument2, argument3, argument4, argument6, argument7, -1);
                }
                else if (argument6 == 7)
                {
                    randomEnemyMove(argument0, argument1, argument2, argument3, argument4, argument5, argument7, -1);
                }
                else
                {
                    randomEnemyMove(argument0, argument1, argument2, argument3, argument4, argument5, argument6, -1);
                }
                break;
        }
    }
}
else if(dir == 8)
{
    if (!place_meeting(x, y - movespeed, obj_entity))
    {
        if (!place_meeting(x, y - movespeed, obj_wall))
        {
            y -= movespeed;
            moved = true;
            global.move += 1;
        }
        else
        {
            switch(num)
            {
                case 1:
                    moved = true;
                    global.move +=1;
                    break;
                case 2:
                    if (argument0 == 8)
                    {
                        randomEnemyMove(argument1, -1, -1, -1, -1, -1, -1, -1);
                    }
                    else
                    {
                        randomEnemyMove(argument0, -1, -1, -1, -1, -1, -1, -1);
                    }
                    break;
                case 3:
                    if (argument0 == 8)
                    {
                        randomEnemyMove(argument1, argument2, -1, -1, -1, -1, -1, -1);
                    }
                    else if (argument1 == 8)
                    {
                        randomEnemyMove(argument0, argument2, -1, -1, -1, -1, -1, -1);
                    }
                    else
                    {
                        randomEnemyMove(argument0, argument1, -1, -1, -1, -1, -1, -1);
                    }
                    break;
                case 4:
                    if (argument0 == 8)
                    {
                        randomEnemyMove(argument1, argument2, argument3, -1, -1, -1, -1, -1);
                    }
                    else if (argument1 == 8)
                    {
                        randomEnemyMove(argument0, argument2, argument3, -1, -1, -1, -1, -1);
                    }
                    else if (argument2 == 8)
                    {
                        randomEnemyMove(argument0, argument1, argument3, -1, -1, -1, -1, -1);
                    }
                    else
                    {
                        randomEnemyMove(argument0, argument1, argument2, -1, -1, -1, -1, -1);
                    }
                    break;
                case 5:
                    if (argument0 == 8)
                    {
                        randomEnemyMove(argument1, argument2, argument3, argument4, -1, -1, -1, -1);
                    }
                    else if (argument1 == 8)
                    {
                        randomEnemyMove(argument0, argument2, argument3, argument4, -1, -1, -1, -1);
                    }
                    else if (argument2 == 8)
                    {
                        randomEnemyMove(argument0, argument1, argument3, argument4, -1, -1, -1, -1);
                    }
                    else if (argument3 == 8)
                    {
                        randomEnemyMove(argument0, argument1, argument2, argument4, -1, -1, -1, -1);
                    }
                    else
                    {
                        randomEnemyMove(argument0, argument1, argument2, argument3, -1, -1, -1, -1);
                    }
                    break;
                case 6:
                    if (argument0 == 8)
                    {
                        randomEnemyMove(argument1, argument2, argument3, argument4, argument5, -1, -1, -1);
                    }
                    else if (argument1 == 8)
                    {
                        randomEnemyMove(argument0, argument2, argument3, argument4, argument5, -1, -1, -1);
                    }
                    else if (argument2 == 8)
                    {
                        randomEnemyMove(argument0, argument1, argument3, argument4, argument5, -1, -1, -1);
                    }
                    else if (argument3 == 8)
                    {
                        randomEnemyMove(argument0, argument1, argument2, argument4, argument5, -1, -1, -1);
                    }
                    else if (argument4 == 8)
                    {
                        randomEnemyMove(argument0, argument1, argument2, argument3, argument5, -1, -1, -1);
                    }
                    else
                    {
                        randomEnemyMove(argument0, argument1, argument2, argument3, argument4, -1, -1, -1);
                    }
                    break;
                case 7:
                    if (argument0 == 8)
                    {
                        randomEnemyMove(argument1, argument2, argument3, argument4, argument5, argument6, -1, -1);
                    }
                    else if (argument1 == 8)
                    {
                        randomEnemyMove(argument0, argument2, argument3, argument4, argument5, argument6, -1, -1);
                    }
                    else if (argument2 == 8)
                    {
                        randomEnemyMove(argument0, argument1, argument3, argument4, argument5, argument6, -1, -1);
                    }
                    else if (argument3 == 8)
                    {
                        randomEnemyMove(argument0, argument1, argument2, argument4, argument5, argument6, -1, -1);
                    }
                    else if (argument4 == 8)
                    {
                        randomEnemyMove(argument0, argument1, argument2, argument3, argument5, argument6, -1, -1);
                    }
                    else if (argument5 == 8)
                    {
                        randomEnemyMove(argument0, argument1, argument2, argument3, argument4, argument6, -1, -1);
                    }
                    else
                    {
                        randomEnemyMove(argument0, argument1, argument2, argument3, argument4, argument5, -1, -1);
                    }
                    break;
                case 8:
                    if (argument0 == 8)
                    {
                        randomEnemyMove(argument1, argument2, argument3, argument4, argument5, argument6, argument7, -1);
                    }
                    else if (argument1 == 8)
                    {
                        randomEnemyMove(argument0, argument2, argument3, argument4, argument5, argument6, argument7, -1);
                    }
                    else if (argument2 == 8)
                    {
                        randomEnemyMove(argument0, argument1, argument3, argument4, argument5, argument6, argument7, -1);
                    }
                    else if (argument3 == 8)
                    {
                        randomEnemyMove(argument0, argument1, argument2, argument4, argument5, argument6, argument7, -1);
                    }
                    else if (argument4 == 8)
                    {
                        randomEnemyMove(argument0, argument1, argument2, argument3, argument5, argument6, argument7, -1);
                    }
                    else if (argument5 == 8)
                    {
                        randomEnemyMove(argument0, argument1, argument2, argument3, argument4, argument6, argument7, -1);
                    }
                    else if (argument6 == 8)
                    {
                        randomEnemyMove(argument0, argument1, argument2, argument3, argument4, argument5, argument7, -1);
                    }
                    else
                    {
                        randomEnemyMove(argument0, argument1, argument2, argument3, argument4, argument5, argument6, -1);
                    }
                    break;
            }
        }
    }
    else
    {
        switch(num)
        {
            case 1:
                moved = true;
                global.move +=1;
                break;
            case 2:
                if (argument0 == 8)
                {
                    randomEnemyMove(argument1, -1, -1, -1, -1, -1, -1, -1);
                }
                else
                {
                    randomEnemyMove(argument0, -1, -1, -1, -1, -1, -1, -1);
                }
                break;
            case 3:
                if (argument0 == 8)
                {
                    randomEnemyMove(argument1, argument2, -1, -1, -1, -1, -1, -1);
                }
                else if (argument1 == 8)
                {
                    randomEnemyMove(argument0, argument2, -1, -1, -1, -1, -1, -1);
                }
                else
                {
                    randomEnemyMove(argument0, argument1, -1, -1, -1, -1, -1, -1);
                }
                break;
            case 4:
                if (argument0 == 8)
                {
                    randomEnemyMove(argument1, argument2, argument3, -1, -1, -1, -1, -1);
                }
                else if (argument1 == 8)
                {
                    randomEnemyMove(argument0, argument2, argument3, -1, -1, -1, -1, -1);
                }
                else if (argument2 == 8)
                {
                    randomEnemyMove(argument0, argument1, argument3, -1, -1, -1, -1, -1);
                }
                else
                {
                    randomEnemyMove(argument0, argument1, argument2, -1, -1, -1, -1, -1);
                }
                break;
            case 5:
                if (argument0 == 8)
                {
                    randomEnemyMove(argument1, argument2, argument3, argument4, -1, -1, -1, -1);
                }
                else if (argument1 == 8)
                {
                    randomEnemyMove(argument0, argument2, argument3, argument4, -1, -1, -1, -1);
                }
                else if (argument2 == 8)
                {
                    randomEnemyMove(argument0, argument1, argument3, argument4, -1, -1, -1, -1);
                }
                else if (argument3 == 8)
                {
                    randomEnemyMove(argument0, argument1, argument2, argument4, -1, -1, -1, -1);
                }
                else
                {
                    randomEnemyMove(argument0, argument1, argument2, argument3, -1, -1, -1, -1);
                }
                break;
            case 6:
                if (argument0 == 8)
                {
                    randomEnemyMove(argument1, argument2, argument3, argument4, argument5, -1, -1, -1);
                }
                else if (argument1 == 8)
                {
                    randomEnemyMove(argument0, argument2, argument3, argument4, argument5, -1, -1, -1);
                }
                else if (argument2 == 8)
                {
                    randomEnemyMove(argument0, argument1, argument3, argument4, argument5, -1, -1, -1);
                }
                else if (argument3 == 8)
                {
                    randomEnemyMove(argument0, argument1, argument2, argument4, argument5, -1, -1, -1);
                }
                else if (argument4 == 8)
                {
                    randomEnemyMove(argument0, argument1, argument2, argument3, argument5, -1, -1, -1);
                }
                else
                {
                    randomEnemyMove(argument0, argument1, argument2, argument3, argument4, -1, -1, -1);
                }
                break;
            case 7:
                if (argument0 == 8)
                {
                    randomEnemyMove(argument1, argument2, argument3, argument4, argument5, argument6, -1, -1);
                }
                else if (argument1 == 8)
                {
                    randomEnemyMove(argument0, argument2, argument3, argument4, argument5, argument6, -1, -1);
                }
                else if (argument2 == 8)
                {
                    randomEnemyMove(argument0, argument1, argument3, argument4, argument5, argument6, -1, -1);
                }
                else if (argument3 == 8)
                {
                    randomEnemyMove(argument0, argument1, argument2, argument4, argument5, argument6, -1, -1);
                }
                else if (argument4 == 8)
                {
                    randomEnemyMove(argument0, argument1, argument2, argument3, argument5, argument6, -1, -1);
                }
                else if (argument5 == 8)
                {
                    randomEnemyMove(argument0, argument1, argument2, argument3, argument4, argument6, -1, -1);
                }
                else
                {
                    randomEnemyMove(argument0, argument1, argument2, argument3, argument4, argument5, -1, -1);
                }
                break;
            case 8:
                if (argument0 == 8)
                {
                    randomEnemyMove(argument1, argument2, argument3, argument4, argument5, argument6, argument7, -1);
                }
                else if (argument1 == 8)
                {
                    randomEnemyMove(argument0, argument2, argument3, argument4, argument5, argument6, argument7, -1);
                }
                else if (argument2 == 8)
                {
                    randomEnemyMove(argument0, argument1, argument3, argument4, argument5, argument6, argument7, -1);
                }
                else if (argument3 == 8)
                {
                    randomEnemyMove(argument0, argument1, argument2, argument4, argument5, argument6, argument7, -1);
                }
                else if (argument4 == 8)
                {
                    randomEnemyMove(argument0, argument1, argument2, argument3, argument5, argument6, argument7, -1);
                }
                else if (argument5 == 8)
                {
                    randomEnemyMove(argument0, argument1, argument2, argument3, argument4, argument6, argument7, -1);
                }
                else if (argument6 == 8)
                {
                    randomEnemyMove(argument0, argument1, argument2, argument3, argument4, argument5, argument7, -1);
                }
                else
                {
                    randomEnemyMove(argument0, argument1, argument2, argument3, argument4, argument5, argument6, -1);
                }
                break;
        }
    }
}
else if(dir == 9)
{
    if (!place_meeting(x + movespeed, y - movespeed, obj_entity))
    {
        if (!place_meeting(x + movespeed, y - movespeed, obj_wall))
        {
            x += movespeed;
            y -= movespeed;
            moved = true;
            global.move += 1;
        }
        else
        {
            switch(num)
            {
                case 1:
                    moved = true;
                    global.move +=1;
                    break;
                case 2:
                    if (argument0 == 9)
                    {
                        randomEnemyMove(argument1, -1, -1, -1, -1, -1, -1, -1);
                    }
                    else
                    {
                        randomEnemyMove(argument0, -1, -1, -1, -1, -1, -1, -1);
                    }
                    break;
                case 3:
                    if (argument0 == 9)
                    {
                        randomEnemyMove(argument1, argument2, -1, -1, -1, -1, -1, -1);
                    }
                    else if (argument1 == 9)
                    {
                        randomEnemyMove(argument0, argument2, -1, -1, -1, -1, -1, -1);
                    }
                    else
                    {
                        randomEnemyMove(argument0, argument1, -1, -1, -1, -1, -1, -1);
                    }
                    break;
                case 4:
                    if (argument0 == 9)
                    {
                        randomEnemyMove(argument1, argument2, argument3, -1, -1, -1, -1, -1);
                    }
                    else if (argument1 == 9)
                    {
                        randomEnemyMove(argument0, argument2, argument3, -1, -1, -1, -1, -1);
                    }
                    else if (argument2 == 9)
                    {
                        randomEnemyMove(argument0, argument1, argument3, -1, -1, -1, -1, -1);
                    }
                    else
                    {
                        randomEnemyMove(argument0, argument1, argument2, -1, -1, -1, -1, -1);
                    }
                    break;
                case 5:
                    if (argument0 == 9)
                    {
                        randomEnemyMove(argument1, argument2, argument3, argument4, -1, -1, -1, -1);
                    }
                    else if (argument1 == 9)
                    {
                        randomEnemyMove(argument0, argument2, argument3, argument4, -1, -1, -1, -1);
                    }
                    else if (argument2 == 9)
                    {
                        randomEnemyMove(argument0, argument1, argument3, argument4, -1, -1, -1, -1);
                    }
                    else if (argument3 == 9)
                    {
                        randomEnemyMove(argument0, argument1, argument2, argument4, -1, -1, -1, -1);
                    }
                    else
                    {
                        randomEnemyMove(argument0, argument1, argument2, argument3, -1, -1, -1, -1);
                    }
                    break;
                case 6:
                    if (argument0 == 9)
                    {
                        randomEnemyMove(argument1, argument2, argument3, argument4, argument5, -1, -1, -1);
                    }
                    else if (argument1 == 9)
                    {
                        randomEnemyMove(argument0, argument2, argument3, argument4, argument5, -1, -1, -1);
                    }
                    else if (argument2 == 9)
                    {
                        randomEnemyMove(argument0, argument1, argument3, argument4, argument5, -1, -1, -1);
                    }
                    else if (argument3 == 9)
                    {
                        randomEnemyMove(argument0, argument1, argument2, argument4, argument5, -1, -1, -1);
                    }
                    else if (argument4 == 9)
                    {
                        randomEnemyMove(argument0, argument1, argument2, argument3, argument5, -1, -1, -1);
                    }
                    else
                    {
                        randomEnemyMove(argument0, argument1, argument2, argument3, argument4, -1, -1, -1);
                    }
                    break;
                case 7:
                    if (argument0 == 9)
                    {
                        randomEnemyMove(argument1, argument2, argument3, argument4, argument5, argument6, -1, -1);
                    }
                    else if (argument1 == 9)
                    {
                        randomEnemyMove(argument0, argument2, argument3, argument4, argument5, argument6, -1, -1);
                    }
                    else if (argument2 == 9)
                    {
                        randomEnemyMove(argument0, argument1, argument3, argument4, argument5, argument6, -1, -1);
                    }
                    else if (argument3 == 9)
                    {
                        randomEnemyMove(argument0, argument1, argument2, argument4, argument5, argument6, -1, -1);
                    }
                    else if (argument4 == 9)
                    {
                        randomEnemyMove(argument0, argument1, argument2, argument3, argument5, argument6, -1, -1);
                    }
                    else if (argument5 == 9)
                    {
                        randomEnemyMove(argument0, argument1, argument2, argument3, argument4, argument6, -1, -1);
                    }
                    else
                    {
                        randomEnemyMove(argument0, argument1, argument2, argument3, argument4, argument5, -1, -1);
                    }
                    break;
                case 8:
                    if (argument0 == 9)
                    {
                        randomEnemyMove(argument1, argument2, argument3, argument4, argument5, argument6, argument7, -1);
                    }
                    else if (argument1 == 9)
                    {
                        randomEnemyMove(argument0, argument2, argument3, argument4, argument5, argument6, argument7, -1);
                    }
                    else if (argument2 == 9)
                    {
                        randomEnemyMove(argument0, argument1, argument3, argument4, argument5, argument6, argument7, -1);
                    }
                    else if (argument3 == 9)
                    {
                        randomEnemyMove(argument0, argument1, argument2, argument4, argument5, argument6, argument7, -1);
                    }
                    else if (argument4 == 9)
                    {
                        randomEnemyMove(argument0, argument1, argument2, argument3, argument5, argument6, argument7, -1);
                    }
                    else if (argument5 == 9)
                    {
                        randomEnemyMove(argument0, argument1, argument2, argument3, argument4, argument6, argument7, -1);
                    }
                    else if (argument6 == 9)
                    {
                        randomEnemyMove(argument0, argument1, argument2, argument3, argument4, argument5, argument7, -1);
                    }
                    else
                    {
                        randomEnemyMove(argument0, argument1, argument2, argument3, argument4, argument5, argument6, -1);
                    }
                    break;
            }
        }
    }
    else
    {
        switch(num)
        {
            case 1:
                moved = true;
                global.move +=1;
                break;
            case 2:
                if (argument0 == 9)
                {
                    randomEnemyMove(argument1, -1, -1, -1, -1, -1, -1, -1);
                }
                else
                {
                    randomEnemyMove(argument0, -1, -1, -1, -1, -1, -1, -1);
                }
                break;
            case 3:
                if (argument0 == 9)
                {
                    randomEnemyMove(argument1, argument2, -1, -1, -1, -1, -1, -1);
                }
                else if (argument1 == 9)
                {
                    randomEnemyMove(argument0, argument2, -1, -1, -1, -1, -1, -1);
                }
                else
                {
                    randomEnemyMove(argument0, argument1, -1, -1, -1, -1, -1, -1);
                }
                break;
            case 4:
                if (argument0 == 9)
                {
                    randomEnemyMove(argument1, argument2, argument3, -1, -1, -1, -1, -1);
                }
                else if (argument1 == 9)
                {
                    randomEnemyMove(argument0, argument2, argument3, -1, -1, -1, -1, -1);
                }
                else if (argument2 == 9)
                {
                    randomEnemyMove(argument0, argument1, argument3, -1, -1, -1, -1, -1);
                }
                else
                {
                    randomEnemyMove(argument0, argument1, argument2, -1, -1, -1, -1, -1);
                }
                break;
            case 5:
                if (argument0 == 9)
                {
                    randomEnemyMove(argument1, argument2, argument3, argument4, -1, -1, -1, -1);
                }
                else if (argument1 == 9)
                {
                    randomEnemyMove(argument0, argument2, argument3, argument4, -1, -1, -1, -1);
                }
                else if (argument2 == 9)
                {
                    randomEnemyMove(argument0, argument1, argument3, argument4, -1, -1, -1, -1);
                }
                else if (argument3 == 9)
                {
                    randomEnemyMove(argument0, argument1, argument2, argument4, -1, -1, -1, -1);
                }
                else
                {
                    randomEnemyMove(argument0, argument1, argument2, argument3, -1, -1, -1, -1);
                }
                break;
            case 6:
                if (argument0 == 9)
                {
                    randomEnemyMove(argument1, argument2, argument3, argument4, argument5, -1, -1, -1);
                }
                else if (argument1 == 9)
                {
                    randomEnemyMove(argument0, argument2, argument3, argument4, argument5, -1, -1, -1);
                }
                else if (argument2 == 9)
                {
                    randomEnemyMove(argument0, argument1, argument3, argument4, argument5, -1, -1, -1);
                }
                else if (argument3 == 9)
                {
                    randomEnemyMove(argument0, argument1, argument2, argument4, argument5, -1, -1, -1);
                }
                else if (argument4 == 9)
                {
                    randomEnemyMove(argument0, argument1, argument2, argument3, argument5, -1, -1, -1);
                }
                else
                {
                    randomEnemyMove(argument0, argument1, argument2, argument3, argument4, -1, -1, -1);
                }
                break;
            case 7:
                if (argument0 == 9)
                {
                    randomEnemyMove(argument1, argument2, argument3, argument4, argument5, argument6, -1, -1);
                }
                else if (argument1 == 9)
                {
                    randomEnemyMove(argument0, argument2, argument3, argument4, argument5, argument6, -1, -1);
                }
                else if (argument2 == 9)
                {
                    randomEnemyMove(argument0, argument1, argument3, argument4, argument5, argument6, -1, -1);
                }
                else if (argument3 == 9)
                {
                    randomEnemyMove(argument0, argument1, argument2, argument4, argument5, argument6, -1, -1);
                }
                else if (argument4 == 9)
                {
                    randomEnemyMove(argument0, argument1, argument2, argument3, argument5, argument6, -1, -1);
                }
                else if (argument5 == 9)
                {
                    randomEnemyMove(argument0, argument1, argument2, argument3, argument4, argument6, -1, -1);
                }
                else
                {
                    randomEnemyMove(argument0, argument1, argument2, argument3, argument4, argument5, -1, -1);
                }
                break;
            case 8:
                if (argument0 == 9)
                {
                    randomEnemyMove(argument1, argument2, argument3, argument4, argument5, argument6, argument7, -1);
                }
                else if (argument1 == 9)
                {
                    randomEnemyMove(argument0, argument2, argument3, argument4, argument5, argument6, argument7, -1);
                }
                else if (argument2 == 9)
                {
                    randomEnemyMove(argument0, argument1, argument3, argument4, argument5, argument6, argument7, -1);
                }
                else if (argument3 == 9)
                {
                    randomEnemyMove(argument0, argument1, argument2, argument4, argument5, argument6, argument7, -1);
                }
                else if (argument4 == 9)
                {
                    randomEnemyMove(argument0, argument1, argument2, argument3, argument5, argument6, argument7, -1);
                }
                else if (argument5 == 9)
                {
                    randomEnemyMove(argument0, argument1, argument2, argument3, argument4, argument6, argument7, -1);
                }
                else if (argument6 == 9)
                {
                    randomEnemyMove(argument0, argument1, argument2, argument3, argument4, argument5, argument7, -1);
                }
                else
                {
                    randomEnemyMove(argument0, argument1, argument2, argument3, argument4, argument5, argument6, -1);
                }
                break;
        }
    }
}
