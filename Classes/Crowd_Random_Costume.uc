class Crowd_Random_Costume extends Hat_Collectible_Skin;

defaultproperties
{
	ItemName = "DefaultCostumeName"
	ItemQuality = class'Hat_ItemQuality_CoopAlternative'

	SkinBodyMesh = SkeletalMesh'HatInTime_Characters_HatKid.models.HatKidBody'
	SkinBodyPhysicsAsset = PhysicsAsset'HatInTime_Characters_HatKid.Physics.HatKidBody_Physics'
	SkinLegsMesh = SkeletalMesh'HatInTime_Characters_HatKid.models.HatKidLegs'
	SkinLegsPhysicsAsset = PhysicsAsset'HatInTime_Characters_HatKid.Physics.HatKidLegs_Physics'

	SkinBodyMeshBowKid = SkeletalMesh'HatInTime_Characters_Coop.models.bowkid_body_skm'
	SkinBodyPhysicsAssetBowKid = PhysicsAsset'HatInTime_Characters_HatKid.Physics.HatKidBody_Physics'
	SkinLegsMeshBowKid = SkeletalMesh'HatInTime_Characters_Coop.models.bowkid_legs_skm'
	SkinLegsPhysicsAssetBowKid = PhysicsAsset'HatInTime_Characters_HatKid.Physics.HatKidLegs_Physics'
}

static function Apply(Actor ply)
{
    local class<Hat_Collectible_Skin> skin;
    skin = class'Crowd_CrowdControl_Gamemod'.static.GetSkin();
    if(skin != None)
    {
        skin.static.Apply(ply);
    }
}

static function Removed(Actor ply)
{
    local class<Hat_Collectible_Skin> skin;
    skin = class'Crowd_CrowdControl_Gamemod'.static.GetSkin();
    if(skin != None)
    {
        skin.static.Removed(ply);
    }
}

