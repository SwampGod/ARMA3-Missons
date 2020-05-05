// Respawn with same loadout ... I hope :)
player addEventhandler ["Killed",  {_this spawn Fnc_Set_Loadout}];
player addEventHandler ["Respawn", {_this spawn Fnc_Get_Loadout}];


if (("PlayerFatigue" call bis_fnc_getParamValue) == 0) then {
	player enableFatigue false;
	player addEventhandler ["Respawn", {player enableFatigue false}];
	hint "Fatigue Disabled";

};
// Another redundant Fatigue turn-off-er
player enableStamina false;
player enableFatigue false;
player addEventHandler ["Respawn", {player enableStamina false;player enableFatigue false;}]; 

//Allow the player to fully heal with a First Aid Kit.

player addEventHandler ["HandleHeal", {
	_this spawn {
		params ["_injured","_healer"];
		missionNamespace setVariable ['Health',getDammage _injured,FALSE];
		_damage = Health;
		if (_injured == _healer) then {
			waitUntil { damage _injured != _damage };
			if (damage _injured < _damage) then {
				titletext ["You used Bandages and Morphine.", "PLAIN DOWN"];
				_injured setDamage 0;
			};
		};
	};
}];



//player execVM "simpleEP.sqf";





// To get player icons for IFF in a multiplayer mission.
//_iff = [units group player] execVM "a3\missions_f_exp\campaign\functions\fn_exp_camp_iff.sqf";



