counter++;
turn++;
if (playerNutrition > 0)
    playerNutrition--;
else
{
    print("Your hunger damages you.");
    hp--;
}
global.p_turn = false;
