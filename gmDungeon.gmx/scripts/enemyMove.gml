if(!global.p_turn && !moved)
{
    target = instance_place(x + xMovespeed, y + yMovespeed, obj_wall);
    target2 = instance_place(x + xMovespeed, y + yMovespeed, obj_player);
    _i = 1;
    _z = 0;
    if (target == noone)
    {
        _z = 1;
    }
    else
    {
        _z = 0;
    }
    while(_z == 1)
    {
        if(target2 != noone)
        {
            if (!place_meeting(x + xMovespeed, y + yMovespeed, obj_entity))
            {
                x += xMovespeed;
                y += yMovespeed;
                instance_create(x - xMovespeed, y + yMovespeed, obj_floor);
                moved = true;
                global.move += 1;
            }
            else if (place_meeting(x + xMovespeed, y + yMovespeed, obj_player))
            {
                target = instance_place(x + xMovespeed, y + yMovespeed, obj_player);
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
                    print("The " + name + " hits!");
                    target.hp -= irandom_range(1, attack);
                }
                else
                {
                    print("The " + name + " misses!");
                }
                moved = true;
                global.move += 1;
            }
            _z = 0;
        }
        else
        {
            _i += 1;
            target = instance_place(x + (xMovespeed * _i), y + (yMovespeed * _i), obj_wall);
            target2 = instance_place(x + (xMovespeed * _i), y + (yMovespeed * _i), obj_player);
            if (target == noone)
            {
                _z = 1;
            }
            else
            {
                _z = 0;
            }
        }
    }
}
