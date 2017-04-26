bad = argument0;
if (irandom_range(1, 10) == 1)
{
    if (!bad)
    {
        return "cursed";
    }
    else
    {
        return "uncursed";
    }
}
else
{
    if (!bad)
    {
        return "uncursed";
    }
    else
    {
        return "cursed";
    }
}
