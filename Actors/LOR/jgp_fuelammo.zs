class JGP_FuelAmmoSmall : Ammo
{
	Default
	{
		//$Category Ammunition
		Inventory.Amount 10;
		Inventory.MaxAmount 150;
		Ammo.BackpackAmount 10;
		Ammo.BackpackMaxAmount 300;
		Inventory.Icon "FCPUA0";
		Inventory.PickupMessage "$ID24_GOTFUELCAN";
		Tag "Fuel can";
	}
	States
	{
	Spawn:
		FCPU A -1;
		Stop;
	}
}

class JGP_FuelAmmoLarge : JGP_FuelAmmoSmall
{
	Default
	{
		//$Category Ammunition
		Inventory.Amount 50;
		Inventory.PickupMessage "$ID24_GOTFUELTANK";
		Tag "Fuel Tank";
	}
	States
	{
	Spawn:
		FTNK A -1;
		Stop;
	}
}