class TAWODPawn_Human extends KFPawn_Human;

function ThrowActiveWeapon( optional bool bDestroyWeap )
{
	local KFWeapon TempWeapon;
	
	if( Role < ROLE_Authority )
	{
		return;
	}

	if (Health <= 0)
	{
		if (InvManager != none)
			foreach InvManager.InventoryActors(class'KFWeapon', TempWeapon)
				if (TempWeapon.bDropOnDeath && TempWeapon.CanThrow())
					if (TempWeapon != none)
						TossInventory(TempWeapon);
	}
	else
	{
		super.ThrowActiveWeapon( bDestroyWeap );
	}
}

defaultproperties
{
}
