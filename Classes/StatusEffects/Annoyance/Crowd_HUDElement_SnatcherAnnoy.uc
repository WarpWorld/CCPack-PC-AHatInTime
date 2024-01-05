class Crowd_HUDElement_SnatcherAnnoy extends Hat_HUDElement;

var Surface SnatcherFace;
var Surface SnatcherArm;
var Surface SnatcherArm2;

var MaterialInstanceTimeVarying SnatcherFaceMat;
var MaterialInstanceTimeVarying SnatcherArmMat;
var MaterialInstanceTimeVarying SnatcherArmMat2;

var Material SnatcherLeftArmMat;
var MaterialInstanceTimeVarying SnatcherRightArmMat;
var Material SnatcherHeadMat;

defaultproperties
{
	SharedInCoop = true

	// Credit to Moumekie for these wonderful animations!
    SnatcherHeadMat = Material'Crowd_Content.SnatcherFlipbookAnnoy';
    SnatcherLeftArmMat = Material'Crowd_Content.HandsFlipbookAnnoy';
    SnatcherRightArmMat = MaterialInstanceTimeVarying'Crowd_Content.HandsFlipbookAnnoy_Flipped';
}

function OnOpenHUD(HUD H, optional String command)
{
	Super.OnOpenHUD(H, command);

    if (SnatcherFaceMat == None)
	{
		SnatcherFaceMat = new class'materialInstanceTimeVarying';
		SnatcherFaceMat.SetParent(SnatcherHeadMat);
	}
	if (SnatcherFaceMat == None) return;
    TransitionMaterialParameter(SnatcherFaceMat, 'AppearAnim', 0, 1.0, 1.0);
    
    if (SnatcherArmMat == None)
	{
		SnatcherArmMat = new class'materialInstanceTimeVarying';
		SnatcherArmMat.SetParent(SnatcherLeftArmMat);
	}
	if (SnatcherArmMat == None) return;
    TransitionMaterialParameter(SnatcherArmMat, 'AppearAnim', 0, 1.0, 1.0);

    if (SnatcherArmMat2 == None)
	{
		SnatcherArmMat2 = new class'materialInstanceTimeVarying';
		SnatcherArmMat2.SetParent(SnatcherRightArmMat);
	}
	if (SnatcherArmMat2 == None) return;
    TransitionMaterialParameter(SnatcherArmMat2, 'AppearAnim', 0, 1.0, 1.0);
}

function bool OnPreCloseHUD(HUD H)
{
    SetTimer(H, 1.1f, false, NameOf(DoClose));
    TransitionMaterialParameter(SnatcherFaceMat, 'AppearAnim', 1.0, 0.0, 1.0);
    TransitionMaterialParameter(SnatcherArmMat, 'AppearAnim', 1.0, 0.0, 1.0);
    TransitionMaterialParameter(SnatcherArmMat2, 'AppearAnim', 1.0, 0.0, 1.0);
	return true;
}

function DoClose(HUD H)
{
    CloseHUD(H, Class, true);
}

function bool Render(HUD H)
{   
    DrawCenterMat(H, H.Canvas.ClipX*0.5f, H.Canvas.ClipY*0.4f, H.Canvas.ClipX * 0.6, H.Canvas.ClipY * 1.2, SnatcherFaceMat);
    DrawCenterMat(H, H.Canvas.ClipX*0.15f, H.Canvas.ClipY*0.4f, H.Canvas.ClipX * 0.6, H.Canvas.ClipY * 1.2, SnatcherArmMat);
    DrawCenterMat(H, H.Canvas.ClipX*0.85f, H.Canvas.ClipY*0.4f, H.Canvas.ClipX * 0.6, H.Canvas.ClipY * 1.2, SnatcherArmMat2);
	return true;
}