target = instance_position(argument0 + obj_player.x, argument1 + obj_player.y, obj_enemy)
if (target != noone)
{
    temp = instance_position(600, 600, obj_boomerang)
    if (temp.name == "boomerang")
    {
        target.hp -= irandom_range(1, 9);
        if (target.hp > 0)
        {
            print("!");
        }
        else 
        {
            print("You kill the " + target.name + "!")
            xp += target.xp;
            levelUp();
        }
    } 
    if (temp.name == "dagger")
    {
        if (target.size == "small")
        {
            target.hp -= irandom_range(1, 4)
        }
        else
        {
            target.hp -= irandom_range(1, 3)
        }
        
        if (target.hp > 0)
        {
            print("!");
        }
        else 
        {
            print("You kill the " + target.name + "!")
            xp += target.xp;
            levelUp();
        }
    }
    if (temp.name == "dart")
    {
        if (target.size == "small")
        {
            target.hp -= irandom_range(1, 3)
        }
        else
        {
            target.hp -= irandom_range(1, 2)
        }
        
        if (target.hp > 0)
        {
            print("!");
        }
        else 
        {
            print("You kill the " + target.name + "!")
            xp += target.xp;
            levelUp();
        }
    }
    if (temp.name == "javelin")
    {
        target.hp -= irandom_range(1, 6)
        if (target.hp > 0)
        {
            print("!");
        }
        else 
        {
            print("You kill the " + target.name + "!")
            xp += target.xp;
            levelUp();
        }
    }
    if (temp.name == "knife")
    {
        if (target.size == "small")
        {
            target.hp -= irandom_range(1, 3)
        }
        else
        {
            target.hp -= irandom_range(1, 2)
        }
        
        if (target.hp > 0)
        {
            print("!");
        }
        else 
        {
            print("You kill the " + target.name + "!")
            xp += target.xp;
            levelUp();
        }
    }
    if (temp.name == "shuriken")
    {
        if (target.size == "small")
        {
            target.hp -= irandom_range(1, 8)
        }
        else
        {
            target.hp -= irandom_range(1, 6)
        }
        
        if (target.hp > 0)
        {
            print("!");
        }
        else 
        {
            print("You kill the " + target.name + "!")
            xp += target.xp;
            levelUp();
        }
    }
    if (temp.name == "spear")
    {
        if (target.size = "small")
        {
            target.hp -= irandom_range(1, 6)
        }
        else
        {
            target.hp -= irandom_range(1, 8)
        }
        
        if (target.hp > 0)
        {
            print("!");
        }
        else 
        {
            print("You kill the " + target.name + "!")
            xp += target.xp;
            levelUp();
        }   
    }
    if (temp.name == "arrow")
    {
        target.hp -= irandom_range(1, 6)
        if (target.hp > 0)
        {
            print("!");
        }
        else 
        {
            print("You kill the " + target.name + "!")
            xp += target.xp;
            levelUp();
        }
    }
    if (temp.name == "elven arrow")
    {
        if (temp.size == "small")
        {
            target.hp -= irandom_range(1, 7)
        }
        else
        {
            target.hp -= irandom_range(1, 6)
        }
        
        if (target.hp > 0)
        {
            print("!");
        }
        else 
        {
            print("You kill the " + target.name + "!")
            xp += target.xp;
            levelUp();
        }
    }
    if (temp.name == "orcish arrow")
    {
        if (temp.size == "small")
        {
            target.hp -= irandom_range(1, 5)
        }
        else
        {
            target.hp -= irandom_range(1, 6)
        }
        
        if (target.hp > 0)
        {
            print("!");
        }
        else 
        {
            print("You kill the " + target.name + "!")
            xp += target.xp;
            levelUp();
        }
    }
    if (temp.name == "silver arrow")
    {
        target.hp -= irandom_range(1, 6) + irandom_range(1, 20)
        if (target.hp > 0)
        {
            print("!");
        }
        else 
        {
            print("You kill the " + target.name + "!")
            xp += target.xp;
            levelUp();
        }
    }
    if (temp.name == "ya")
    {
        target.hp -= irandom_range(1, 7)
        if (target.hp > 0)
        {
            print("!");
        }
        else 
        {
            print("You kill the " + target.name + "!")
            xp += target.xp;
            levelUp();
        }
    }
    if (temp.name == "crossbow bolt")
    {
        if (temp.size == "small")
        {
            target.hp -= irandom_range(1, 4) + 1
        }
        else
        {
            target.hp -= irandom_range(1, 6) + 1
        }
        
        if (target.hp > 0)
        {
            print("!");
        }
        else 
        {
            print("You kill the " + target.name + "!")
            xp += target.xp;
            levelUp();
        }
    }
}    
endPlayerTurn();
