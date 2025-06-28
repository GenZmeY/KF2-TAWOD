// This file is part of Throw All Weapons On Death.
// Throw All Weapons On Death - a mutator for Killing Floor 2.
//
// Copyright (C) 2021, 2022, 2024 GenZmeY (mailto: genzmey@gmail.com)
//
// Throw All Weapons On Death is free software: you can redistribute it
// and/or modify it under the terms of the GNU General Public License
// as published by the Free Software Foundation,
// either version 3 of the License, or (at your option) any later version.
//
// Throw All Weapons On Death is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
// See the GNU General Public License for more details.
//
// You should have received a copy of the GNU General Public License along
// with Throw All Weapons On Death. If not, see <https://www.gnu.org/licenses/>.

class Mut extends KFMutator;

public simulated function bool SafeDestroy()
{
	return (bPendingDelete || bDeleteMe || Destroy());
}

public event PreBeginPlay()
{
	Super.PreBeginPlay();
	`log("Loaded.", true, 'TAWOD');
}

public function AddMutator(Mutator M)
{
	if (M == Self) return;

	if (M.Class == Class)
		Mut(M).SafeDestroy();
	else
		Super.AddMutator(M);
}

public function bool PreventDeath(Pawn Killed, Controller Killer, class<DamageType> damageType, vector HitLocation)
{
	local KFWeapon TempWeapon;
	local KFPawn_Human KFP;

	KFP = KFPawn_Human(Killed);

	if (Role >= ROLE_Authority && KFP != None && KFP.InvManager != None)
		foreach KFP.InvManager.InventoryActors(class'KFWeapon', TempWeapon)
			if (TempWeapon != None && TempWeapon.bDropOnDeath && TempWeapon.CanThrow())
				KFP.TossInventory(TempWeapon);

	return Super.PreventDeath(Killed, Killer, damageType, HitLocation);
}

defaultproperties
{

}
