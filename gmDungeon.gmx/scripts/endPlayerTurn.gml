obj_player.turn++;
if (obj_player.turn mod 10 == 0)
{
    if (obj_player.hp < obj_player.maxHP)
    {
        obj_player.hp += 1;
    }
}
else if instance_place(600, 600, obj_ring).name == "ring of regeneration"
    if (obj_player.hp < obj_player.maxHP)
    {
        obj_player.hp += 1;
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
if instance_place(600, 600, obj_ring).name == "ring of hunger" and obj_player.turn mod 2 == 0
    obj_player.playerNutrition--;
if instance_place(600, 600, obj_ring).name == "ring of regeneration" and obj_player.turn mod 2 == 1
    obj_player.playerNutrition--;
if instance_place(650, 650, obj_ring).name == "ring of hunger" and obj_player.turn mod 2 == 0
    obj_player.playerNutrition--;
if instance_place(650, 650, obj_ring).name == "ring of regeneration" and obj_player.turn mod 2 == 1
    obj_player.playerNutrition--;
if place_meeting(600, 600, obj_ring) and obj_player.turn mod 20 == 0
    obj_player.playerNutrition--;
if place_meeting(650, 650, obj_ring) and obj_player.turn mod 20 == 0
    obj_player.playerNutrition--;
if (place_meeting(600, 600, obj_amulet) and obj_player.turn mod 20 == 0)
    obj_player.playerNutrition--;
obj_player.playerNutrition--;
if obj_player.playerNutrition <= -30
global.p_turn = false;
