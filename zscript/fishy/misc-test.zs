class TestSplash : Actor
{
	Default
	{
		//$Category "Fishy's 3D Platforms"
		+NOINTERACTION;
		+NOBLOCKMAP;
	}

	States
	{
	Spawn:
		SKUL FGHIJK 6;
		Stop;
	}
}

class TESTPushable1 : ExplosiveBarrel
{
	Default
	{
		//$Category "Fishy's 3D Platforms"
		//$Color 9
		+PUSHABLE;
		PushSound "pain/pain";
		PushFactor 3;
	}
}

class TESTPushable2 : BurningBarrel
{
	Default
	{
		//$Category "Fishy's 3D Platforms"
		//$Color 9
		+PUSHABLE;
		PushSound "*usefail";
	}
}

class TESTNoDeathSeq : ZombieMan
{
	Default
	{
		//$Title TESTNoDeathSeq
		//$Category "Fishy's 3D Platforms"
		//$Color 9
		+NOICEDEATH;
	}

	States
	{
	Death:
	XDeath:
		Stop;
	}
}
