//USE: null = [this] execVM "fillfuelammo.sqf";

_vehicle = (_this select 0);

_h = [_vehicle]spawn
{
	while {true} do
	{
		if ((fuel (_this select 0)) < 0.8) then
		{
			(_this select 0) setFuel 1;		//Refuel
			(_this select 0) setVehicleAmmo 1;	// Rearm
		};
		sleep 600;
	};
};
