if (xp >= levelUpRequirement[level] && level < 30)
{
    level++;
    switch(global.class)
    {
        case "Wizard":
            hpGain = irandom_range(1,8);
            pwGain = irandom_range(1,wisdom/2 + 2)*2;
            break;
        case "Fighter":
            hpGain = irandom_range(1,10);
            pwGain = round(irandom_range(1,wisdom/2 + 1)*0.75);
            break;
        case "Rogue":
            hpGain = irandom_range(1,8);
            pwGain = irandom_range(1,wisdom/2 + 1);
            break;
    }
    maxHP += hpGain;
    hp += hpGain;
    maxPW += pwGain;
    pw += pwGain;
    print("Welcome to experience level " + string(level) + ".");
}
