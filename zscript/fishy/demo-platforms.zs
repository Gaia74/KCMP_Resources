
class DemoGenericPlat : FishyPlatform abstract
{
	//$Category "Fishy's 3D Platforms"
	//$Color 9
	States
	{
	Spawn:
		MODL A -1;
		Stop;
	}
}

class DemoPlatWithSnd : FishyPlatform abstract
{
	//$Category "Fishy's 3D Platforms"
	//$Color 9
	bool wasMoving;
	Name sndSeq;
	Property Seq: sndSeq;

	States
	{
	Spawn:
		MODL A 1 NoDelay { wasMoving = false; }
		MODL A 1
		{
			bool isMoving = HasMoved();
			if (isMoving == wasMoving)
				return;

			if (wasMoving = isMoving)
				StartSoundSequence(sndSeq, 0);
			else
				StopSoundSequence();
		}
		Wait;
	}
}

//
//
//

class DemoCavePlat : DemoGenericPlat
{
	Default
	{
		//$Category "Fishy's 3D Platforms"
		//$Color 9
		Radius 32;
		Height 24;
	}
}

class DemoTwistingLift : DemoPlatWithSnd
{
	Default
	{
		//$Category "Fishy's 3D Platforms"
		//$Color 9
		Radius 64;
		Height 128;
		DemoPlatWithSnd.Seq 'Platform';
	}
}

class DemoSpinningSegment1 : DemoGenericPlat
{
	Default
	{
		//$Category "Fishy's 3D Platforms"
		//$Color 9
		Radius 40;
		Height 136;
	}
}

class DemoSpinningSegment2 : DemoGenericPlat
{
	Default
	{
		//$Category "Fishy's 3D Platforms"
		//$Color 9
		Radius 32;
		Height 128;
	}
}

class DemoSlidingFloor : DemoPlatWithSnd
{
	Default
	{
		//$Category "Fishy's 3D Platforms"
		//$Color 9
		Radius 32;
		Height 16;
		DemoPlatWithSnd.Seq 'Floor';
	}
}

class DemoWobblyMeatFloor : FishyPlatform
{
	Default
	{
		//$Category "Fishy's 3D Platforms"
		//$Color 9
		Radius 96;
		Height 248;
	}

	States
	{
	Spawn:
		MODL A random(40, 70); //Eyes open.
		MODL B random(3, 15);  //Eyes closed.
		Loop;
	}
}

class DemoWobblyMeatFloorNoEyes : DemoGenericPlat
{
	Default
	{
		//$Category "Fishy's 3D Platforms"
		//$Color 9
		Radius 96;
		Height 248;
	}
}

class DemoFirebluSegment : DemoGenericPlat
{
	Default
	{
		//$Category "Fishy's 3D Platforms"
		//$Color 9
		Radius 30;
		Height 16;
	}
}

class DemoFirebluSegmentTiny : DemoGenericPlat
{
	Default
	{
		//$Category "Fishy's 3D Platforms"
		//$Color 9
		Scale 0.2;
		Radius 6;
		Height 3.2;
	}
}

class DemoDiabolicalCube : FishyPlatform //This one isn't a model user. Oooh!
{
	Default
	{
		//$Category "Fishy's 3D Platforms"
		//$Color 9
		Radius 32;
		Height 24;
		+FORCEXYBILLBOARD;
	}

	States
	{
	Spawn:
		BOSF ABCD 5;
		Loop;
	}
}