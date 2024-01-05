// Summons Snatcher to annoy the player
class Crowd_StatusEffect_Annoyance extends Crowd_StatusEffect_Persistent;

defaultproperties
{
    Duration = 30;
}

function bool Update(float delta)
{
    if (!Super.Update(delta)) return false;
    
    if (Hat_Player(Owner) != None && Hat_HUD(Hat_PlayerController(Hat_Player(Owner).Controller).MyHUD).GetHud(class'Crowd_HUDElement_SnatcherAnnoy') == None)
    {
        Hat_HUD(Hat_PlayerController(Hat_Player(Owner).Controller).MyHUD).OpenHud(class'Crowd_HUDElement_SnatcherAnnoy');
    }

    return true;
}

function OnAdded(Actor a)
{
    Super.OnAdded(a);
	
    if (Hat_Player(Owner) != None && Hat_HUD(Hat_PlayerController(Hat_Player(Owner).Controller).MyHUD).GetHud(class'Crowd_HUDElement_SnatcherAnnoy') == None)
    {
        Hat_HUD(Hat_PlayerController(Hat_Player(Owner).Controller).MyHUD).OpenHud(class'Crowd_HUDElement_SnatcherAnnoy');
    }
}

simulated function OnRemoved(Actor a)
{		
    if (Hat_Player(Owner) != None)
    {
        Hat_HUD(Hat_PlayerController(Hat_Player(Owner).Controller).MyHUD).CloseHud(class'Crowd_HUDElement_SnatcherAnnoy');
    }
    Super.OnRemoved(a);
}