class TAWODMut extends KFMutator;

var const E_LogLevel LogLevel;

var private TAWOD TAWOD;

public simulated function bool SafeDestroy()
{
	`Log_Trace();
	
	return (bPendingDelete || bDeleteMe || Destroy());
}

public event PreBeginPlay()
{
	`Log_Trace();
	
	Super.PreBeginPlay();
	
	if (WorldInfo.Game.DefaultPawnClass != WorldInfo.Game.default.DefaultPawnClass)
	{
		`Log_Warn("Custom 'DefaultPawnClass' (" $ WorldInfo.Game.DefaultPawnClass $ ") detected, possible compatibility issues. Turn off TAWOD if there are problems");
	}
	
	if (ClassIsChildOf(WorldInfo.Game.DefaultPawnClass, class'KFGameInfo_VersusSurvival'.default.DefaultPawnClass))
	{
		WorldInfo.Game.DefaultPawnClass = class'TAWOD_PawnHuman_Versus';
		`Log_Info("TAWOD_PawnHuman_Versus");
	}
	else
	{
		WorldInfo.Game.DefaultPawnClass = class'TAWOD_PawnHuman';
		`Log_Info("TAWOD_PawnHuman");
	}
	
	`Log_Info("Loaded.");
}

public function AddMutator(Mutator Mut)
{
	`Log_Trace();
	
	if (Mut == Self) return;
	
	if (Mut.Class == Class)
		Mut.Destroy();
	else
		Super.AddMutator(Mut);
}

public function bool PreventDeath(Pawn Killed, Controller Killer, class<DamageType> damageType, vector HitLocation)
{
	`Log_Trace();
	
	if (Role >= ROLE_Authority)
	{
		DropAllWeapons(KFPawn_Human(Killed));
	}

	return Super.PreventDeath(Killed, Killer, damageType, HitLocation);
}

public static function DropAllWeapons(KFPawn_Human KFP)
{
	local KFWeapon KFW;
	
	if (KFP != None && KFP.InvManager != None)
	{
		foreach KFP.InvManager.InventoryActors(class'KFWeapon', KFW)
		{
			if (KFW != None && KFW.bDropOnDeath && KFW.CanThrow())
			{
				KFP.TossInventory(KFW);
			}
		}
	}
}

defaultproperties
{
	LogLevel = LL_Info
}
