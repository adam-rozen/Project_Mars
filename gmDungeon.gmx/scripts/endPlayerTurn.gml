turn++;
if (turn mod 10 == 0)
{
    if (obj_player.hp < obj_player.maxHP)
    {
        obj_player.hp += 1;
    }
}
if (global.class == "Wizard")
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
if (obj_player.playerNutrition > 0)
    obj_player.playerNutrition--;
else
{
    print("Your hunger damages you.");
    obj_player.HP--;
}
global.p_turn = false;
