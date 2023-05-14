class TAWOD_PawnHuman_Versus extends KFPawn_Human_Versus;

public function ThrowWeaponOnDeath()
{
	class'TAWODMut'.static.DropAllWeapons(Self);
}

defaultproperties
{

}
