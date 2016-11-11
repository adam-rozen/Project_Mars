if (obj_player.xp > 20 && obj_player.level == 1)
{
    obj_player.level = 2;
    if (global.class == "Wizard")
    {
        obj_player.maxHp += irandom_range(1,8);
    }
    print("Welcome to level 2");
}
