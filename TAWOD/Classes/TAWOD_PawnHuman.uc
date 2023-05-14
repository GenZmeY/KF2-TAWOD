class TAWOD_PawnHuman extends KFPawn_Human;

public function ThrowWeaponOnDeath()
{
	class'TAWODMut'.static.DropAllWeapons(Self);
}

defaultproperties
{
	
}
