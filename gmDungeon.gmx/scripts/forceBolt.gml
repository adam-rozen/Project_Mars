zap = false;
mana -= 5;
range = irandom_range(6, 13);
damage = irandom_range(1, 12) + irandom_range(1, 12);
for(i = 1; i < range; i++)
{
    target = instance_place(x + (i * xMovespeed), y + (i * yMovespeed), obj_entity);
    if (target != noone)
    {
        target.hp -= damage;
        print("Kapow!");
    }
    target2 = instance_place(x + (i * xMovespeed), y + (i * yMovespeed), obj_wall);
    if (target2 != noone)
    {
        break;
    }
}
endPlayerTurn();
