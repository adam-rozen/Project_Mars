if (level == 1 && xp > 20)
{
    level = 2;
    Hp = 0;
    Mana = 0;
    switch(global.class)
    {
        case "Wizard":
            Hp = irandom_range(1,8);
            break;
        case "Fighter":
            Hp = irandom_range(1,10);
            break;
        case "Rogue":
            Hp = irandom_range(1,8);
            break;
    }
    maxHP += Hp;
    hp += Hp;
    print("Welcome to experience level 2");
}
else if (level == 2 && xp > 40)
{
    level = 3;
    Hp = 0;
    switch(global.class)
    {
        case "Wizard":
            Hp = irandom_range(1,8);
            break;
        case "Fighter":
            Hp = irandom_range(1,10);
\            break;
        case "Rogue":
            Hp = irandom_range(1,8);
            break;
    }
    maxHP += Hp;
    hp += Hp;
    print("Welcome to experience level 3");
}
else if (level == 3 && xp > 80)
{
    level = 4;
    Hp = 0;
    switch(global.class)
    {
        case "Wizard":
            Hp = irandom_range(1,8);
            break;
        case "Fighter":
            Hp = irandom_range(1,10);
            break;
        case "Rogue":
            Hp = irandom_range(1,8);
            break;
    }
    maxHP += Hp;
    hp += Hp;
    print("Welcome to experience level 4");
}
if (level == 4 && xp > 160)
{
    level = 5;
    Hp = 0;
    switch(global.class)
    {
        case "Wizard":
            Hp = irandom_range(1,8);
            break;
        case "Fighter":
            Hp = irandom_range(1,10);
            break;
        case "Rogue":
            Hp = irandom_range(1,8);
            break;
    }
    maxHP += Hp;
    hp += Hp;
    print("Welcome to experience level 5");
}
