obj_player.turn++;
if (obj_player.turn mod 10 == 0)
{
    if (obj_player.hp < obj_player.maxHP)
    {
        obj_player.hp += 1;
    }
}
if (global.class == "wizard")
{
    if (obj_player.turn mod 18 == 0)
    {
       if (obj_player.pw < obj_player.maxPW)
       {
           obj_player.pw += 1;
       }
    }
}
else
{
    if (obj_player.turn mod 24 == 0)
    {
       if (obj_player.pw < obj_player.maxPW)
       {
           obj_player.pw += 1;
       }
    }
}
if (obj_player.confused > 0)
{
    obj_player.confused -= 1;
}
if (place_meeting(600, 600, obj_amulet))
    obj_player.playerNutrition--;
if (obj_player.playerNutrition > 0)
    obj_player.playerNutrition--;
else
{
    print("Your hunger damages you.");
    obj_player.hp--;
}
global.p_turn = false;
