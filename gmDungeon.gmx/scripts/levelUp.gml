if (xp >= levelUpRequirement[level] && level < 30)
{
    level++;
    switch(global.class)
    {
        case "Wizard":
            hpGain = irandom_range(1,8);
            pwGain = irandom_range(1,wisdom/2 + 2)*2;
            break;
        case "Barbarian":
            hpGain = irandom_range(1,10);
            pwGain = round(irandom_range(1,wisdom/2 + 1)*0.75);
            break;
        case "Rogue":
            hpGain = irandom_range(1,8);
            pwGain = irandom_range(1,wisdom/2 + 1);
            break;
        case "Acheologist":
            hpGain = irandom_range(1,8);
            pwGain = irandom_range(1,wisdom/2 + 1);
            break;
        case "Caveman":
            hpGain = irandom_range(1,8);
            pwGain = irandom_range(1,wisdom/2 + 1);
            break;
        case "Healer":
            hpGain = irandom_range(1,8);
            pwGain = round(irandom_range(1,wisdom/2 + 1)*1.5);
            break;
        case "Knight":
            hpGain = irandom_range(1,8);
            pwGain = round(irandom_range(1,wisdom/2 + 1)*1.5);
            break;
        case "Monk":
            hpGain = irandom_range(1,8);
            pwGain = irandom_range(1,wisdom/2 + 1);
            break;
        case "Priest":
            hpGain = irandom_range(1,8);
            pwGain = (irandom_range(1,wisdom/2 + 1)*2);
            break;
        case "Ranger":
            hpGain = irandom_range(1,8);
            pwGain = irandom_range(1,wisdom/2 + 1);
            break;
        case "Tourist":
            hpGain = irandom_range(1,8);
            pwGain = irandom_range(1,wisdom/2 + 1);
            break;
        case "Valkyrie":
            hpGain = irandom_range(1,8);
            pwGain = round(irandom_range(1,wisdom/2 + 1)*.75);
            break;
    }
    maxHP += hpGain;
    hp += hpGain;
    maxPW += pwGain;
    pw += pwGain;
    print("Welcome to experience level " + string(level) + ".");
}
