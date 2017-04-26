bad = argument0;
genBUC = random_range(1, 100);
if (bad)
{
    if (genBUC <= 9)
    {
        return "uncursed";
    }
    else if (genBUC <= 9.5)
    {
        return "blessed";
    }
    else
    {
        return "cursed";
    }
}
else
{
    if (genBUC <= 5)
    {
        return "blessed";
    }
    else if (genBUC <= 10)
    {
        return "cursed";
    }
    else
    {
        return "uncursed";
    }
}
