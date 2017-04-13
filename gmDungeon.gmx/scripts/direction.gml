xMovespeed = -1;
yMovespeed = -1;
while (xMovespeed == -1 and yMovespeed == -1)
{
    if (keyboard_check_pressed(vk_numpad8) || keyboard_check_pressed(ord('8')))
    {
        if (confused == 0 or (0 == choose(0,0,0,0,1)))
        {
            xMovespeed = 0;
            yMovespeed = -32;
        }
        else
        {
            xMovespeed = choose(0,32,-32)
            yMovespeed = choose(0,32,-32)
        }
    }
    if (keyboard_check_pressed(vk_numpad6) || keyboard_check_pressed(ord('6')))
    {
        if (confused == 0 or (0 == choose(0,0,0,0,1)))
        {
            xMovespeed = 32;
            yMovespeed = 0;
        }
        else
        {
            xMovespeed = choose(0,32,-32)
            yMovespeed = choose(0,32,-32)
        }
    }
    if (keyboard_check_pressed(vk_numpad4) || keyboard_check_pressed(ord('4')))
    {
        if (confused == 0 or (0 == choose(0,0,0,0,1)))
        {
            xMovespeed = -32;
            yMovespeed = 0;
        }
        else
        {
            xMovespeed = choose(0,32,-32)
            yMovespeed = choose(0,32,-32)
        }
    }
    if (keyboard_check_pressed(vk_numpad2) || keyboard_check_pressed(ord('2')) && global.p_turn == true)
    {
        if (confused == 0 or (0 == choose(0,0,0,0,1)))
        {
            xMovespeed = 0;
            yMovespeed = 32;
        }
        else
        {
            xMovespeed = choose(0,32,-32)
            yMovespeed = choose(0,32,-32)
        }
    }
    if (keyboard_check_pressed(vk_numpad1) || keyboard_check_pressed(ord('1')))
    {
        if (confused == 0 or (0 == choose(0,0,0,0,1)))
        {
            xMovespeed = -32;
            yMovespeed = 32;
        }
        else
        {
            xMovespeed = choose(0,32,-32)
            yMovespeed = choose(0,32,-32)
        }
    }
    if (keyboard_check_pressed(vk_numpad3) || keyboard_check_pressed(ord('3')))
    {
        if (confused == 0 or (0 == choose(0,0,0,0,1)))
        {
            xMovespeed = 32;
            yMovespeed = 32;
        }
        else
        {
            xMovespeed = choose(0,32,-32)
            yMovespeed = choose(0,32,-32)
        }
    }
    if (keyboard_check_pressed(vk_numpad7) || keyboard_check_pressed(ord('7')))
    {
        if (confused == 0 or (0 == choose(0,0,0,0,1)))
        {
            xMovespeed = -32;
            yMovespeed = -32;
        }
        else
        {
            xMovespeed = choose(0,32,-32)
            yMovespeed = choose(0,32,-32)
        }
    }
    if (keyboard_check_pressed(vk_numpad9) || keyboard_check_pressed(ord('9')))
    {
        if (confused == 0 or (0 == choose(0,0,0,0,1)))
        {
            xMovespeed = 32;
            yMovespeed = -32;
        }
        else
        {
            xMovespeed = choose(0,32,-32)
            yMovespeed = choose(0,32,-32)
        }
    }
}
array[0] = xMovespeed
array[1] = yMovespeed
return array;
