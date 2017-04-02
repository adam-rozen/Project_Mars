if (irandom_range(1, 11) == 1)
{
    return "blessed";
}
else if (irandom_range(1, 10) == 1)
{
    return "cursed";
}
else if (irandom_range(1, 10) == 1)
{
    if (irandom_range(1, 2) == 1)
    {
        return "blessed";
    }
    else
    {
        return "cursed";
    }
}
return "uncursed";
