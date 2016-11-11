if (level == 1 && xp > 20)
{
    level = 2;
    Hp = 0;
    switch(global.class)
    {
        case "Wizard":
            Hp = irandom_range(1,8);
            maxHP += Hp;
            hp += Hp;
            break;
        case "Fighter":
            Hp = irandom_range(1,10);
            maxHP += Hp;
            hp += Hp;
            break;
        case "Rogue":
            Hp = irandom_range(1,8);
            break;
    }
    maxHP += Hp;
    hp += Hp;
    print("Welcome to level 2");
}
