bad = argument0;
genBUC = random(100);
if (bad)
{
    if (genBUC < 90.45)
    {
        return "cursed";
    }
    else if (genBUC < 99.05)
    {
        return "uncursed";
    }
    else
    {
        return "blessed";
    }
}
else
{
    if (genBUC < 78.96)
    {
        return "uncursed";
    }
    else if (genBUC < 91.27)
    {
        return "cursed";
    }
    else
    {
        return "blessed";
    }
}
