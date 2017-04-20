xMovespeed = argument0;
yMovespeed = argument1;
zap = false;
pw -= 5;
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
endPlayerTurn();

