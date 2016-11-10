counter++;
turn++;
if (turn mod 10 == 0)
{
    if (obj_player.hp < obj_player.maxHP)
    {
        obj_player.hp += 1;
    }
    counter = 0;
}
if (global.class == "wizard")
{
    if (turn mod 18 == 0)
    {
       if (obj_player.mana < obj_player.maxMana)
       {
           obj_player.mana += 1;
       }
    }
}
else
{
    if (turn mod 24 == 0)
    {
       if (obj_player.mana < obj_player.maxMana)
       {
           obj_player.mana += 1;
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
