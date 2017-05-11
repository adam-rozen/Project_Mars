obj_player.turn++;
if (obj_player.turn mod 10 == 0)
{
    if (obj_player.hp < obj_player.maxHP)
    {
        obj_player.hp += 1;
    }
}
else if (place_meeting(600, 600, obj_ring) and instance_place(600, 600, obj_ring).name == "ring of regeneration") or (place_meeting(650, 650, obj_ring) and instance_place(650, 650, obj_ring).name == "ring of regeneration")
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
if place_meeting(600, 600, obj_ring) and instance_place(600, 600, obj_ring).name == "ring of teleportation" and irandom_range(1,85) == 1
{
    _x = 32 * irandom_range(0, 31)
    _y = 32 * irandom_range(0, 31)
    while (place_meeting(_x, _y, obj_entity) or place_meeting(_x, _y, obj_wall))
    {
        _x = 32 * irandom_range(0, 31)
        _y = 32 * irandom_range(0, 31)
    }
    obj_player.x = _x
    obj_player.y = _y
}
if place_meeting(650, 650, obj_ring) and instance_place(650, 650, obj_ring).name == "ring of teleportation" and irandom_range(1,85) == 1
{
    _x = 32 * irandom_range(0, 31)
    _y = 32 * irandom_range(0, 31)
    while (place_meeting(_x, _y, obj_entity) or place_meeting(_x, _y, obj_wall))
    {
        _x = 32 * irandom_range(0, 31)
        _y = 32 * irandom_range(0, 31)
    }
    obj_player.x = _x
    obj_player.y = _y
}
if (obj_player.confused > 0)
{
    obj_player.confused -= 1;
}
if place_meeting(600, 600, obj_ring) and instance_place(600, 600, obj_ring).name == "ring of hunger" and obj_player.turn mod 2 == 0
    obj_player.playerNutrition--;
if place_meeting(600, 600, obj_ring) and instance_place(600, 600, obj_ring).name == "ring of regeneration" and obj_player.turn mod 2 == 1
    obj_player.playerNutrition--;
if place_meeting(650, 650, obj_ring) and instance_place(650, 650, obj_ring).name == "ring of hunger" and obj_player.turn mod 2 == 0
    obj_player.playerNutrition--;
if place_meeting(650, 650, obj_ring) and instance_place(650, 650, obj_ring).name == "ring of regeneration" and obj_player.turn mod 2 == 1
    obj_player.playerNutrition--;
if place_meeting(600, 600, obj_ring) and obj_player.turn mod 20 == 0
    obj_player.playerNutrition--;
if place_meeting(650, 650, obj_ring) and obj_player.turn mod 20 == 0
    obj_player.playerNutrition--;
if (place_meeting(600, 600, obj_amulet) and obj_player.turn mod 20 == 0)
    obj_player.playerNutrition--;
obj_player.playerNutrition--;
if obj_player.playerNutrition <= -30
    obj_player.hp -= 1;
global.p_turn = false;
