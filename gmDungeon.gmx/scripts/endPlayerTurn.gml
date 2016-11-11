turn++;
if (turn mod 10 == 0)
{
    if (hp < maxHP)
    {
        hp += 1;
    }
}
if (global.class == "wizard")
{
    if (turn mod 18 == 0)
    {
       if (mana < maxMana)
       {
           mana += 1;
       }
    }
}
else
{
    if (turn mod 24 == 0)
    {
       if (mana < maxMana)
       {
           mana += 1;
       }
    }
}
if (playerNutrition > 0)
    playerNutrition--;
else
{
    print("Your hunger damages you.");
    hp--;
}
global.p_turn = false;
