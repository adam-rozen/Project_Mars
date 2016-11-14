if (level == 1 && xp > 20)
{
    level = 2;
    maxXP = 79;
    hpGain = 0;
    pwGain = 0;
    switch(global.class)
    {
        case "Wizard":
            hpGain = irandom_range(1,8);
            break;
        case "Fighter":
            hpGain = irandom_range(1,10);
            break;
        case "Rogue":
            hpGain = irandom_range(1,8);
            break;
    }
    maxHP += hpGain;
    hp += hpGain;
    print("Welcome to experience level " + string(level) + ".");
}
else if (level == 2 && xp > 40)
{
    level = 3;
    maxXP = 159;
    hpGain = 0;
    pwGain = 0;
    switch(global.class)
    {
        case "Wizard":
            hpGain = irandom_range(1,8);
            break;
        case "Fighter":
            hpGain = irandom_range(1,10);
            break;
        case "Rogue":
            hpGain = irandom_range(1,8);
            break;
    }
    maxHP += hpGain;
    hp += hpGain;
    print("Welcome to experience level " + string(level) + ".");
}
else if (level == 3 && xp > 80)
{
    level = 4;
    maxXP = 319;
    hpGain = 0;
    pwGain = 0;
    switch(global.class)
    {
        case "Wizard":
            hpGain = irandom_range(1,8);
            break;
        case "Fighter":
            hpGain = irandom_range(1,10);
            break;
        case "Rogue":
            hpGain = irandom_range(1,8);
            break;
    }
    maxHP += hpGain;
    hp += hpGain;
    print("Welcome to experience level " + string(level) + ".");
}
if (level == 4 && xp > 160)
{
    level = 5;
    maxXP = 639;
    hpGain = 0;
    pwGain = 0;
    switch(global.class)
    {
        case "Wizard":
            hpGain = irandom_range(1,8);
            break;
        case "Fighter":
            hpGain = irandom_range(1,10);
            break;
        case "Rogue":
            hpGain = irandom_range(1,8);
            break;
    }
    maxHP += hpGain;
    hp += hpGain;
    print("Welcome to experience level " + string(level) + ".");
}
