//EOS SYSTEM
[]execVM "eos\OpenMe.sqf";

enableSaving [false, false];

CHHQ_showMarkers = true;

// Set Units current Loadout
    Fnc_Set_Loadout =
    {
    _unit = _this select 0;
    _unit setVariable ["Saved_Loadout",getUnitLoadout _unit];
    };

// Get Units current Loadout
    Fnc_Get_Loadout =
    {
    _unit = _this select 0;
    _unit setUnitLoadout (_unit getVariable ["Saved_Loadout",[]]);
    };

// GF Cleanup Script 

[] execVM "GF_Cleanup\Credits.sqf";
[] execVM "GF_Cleanup\GF_Cleanup.sqf";


//This will put a random image on a billboards.

if (395180 in getDLCs 1) then {
	bill5 setObjectTexture [0, "jon-billboard.jpg"];
	bill6 setObjectTexture [0, "dweezle.jpg"];
	SIGN_Tele setObjectTexture [0, "SIGN_Tele.jpg"];
};

_randomPic = [
"polite.jpg",
"speeding.jpg",
"dweezle.jpg",
"godzilla.jpg",
"jon-billboard.jpg",
"no_we_wont.jpg",
"speeding.jpg"] call BIS_fnc_selectRandom;

_randomPic2 = [
"polite.jpg",
"speeding.jpg",
"dweezle.jpg",
"godzilla.jpg",
"jon-billboard.jpg",
"no_we_wont.jpg",
"speeding.jpg"] call BIS_fnc_selectRandom;

_randomPic3 = [
"polite.jpg",
"speeding.jpg",
"dweezle.jpg",
"godzilla.jpg",
"jon-billboard.jpg",
"no_we_wont.jpg",
"speeding.jpg"] call BIS_fnc_selectRandom;

_randomPic4 = [
"polite.jpg",
"speeding.jpg",
"dweezle.jpg",
"godzilla.jpg",
"jon-billboard.jpg",
"no_we_wont.jpg",
"speeding.jpg"] call BIS_fnc_selectRandom;
 
_iff = [units group player] execVM "a3\missions_f_exp\campaign\functions\fn_exp_camp_iff.sqf";
 
if (395180 in getDLCs 1) then {
	bill1 setObjectTexture [0, _randomPic];
} else {
	bill1 setObjectTexture [0, "\a3\Missions_F_EPA\data\img\B_skirmish02_overview_CA.paa"];
};
if (395180 in getDLCs 1) then {
	bill2 setObjectTexture [0, _randomPic2];
} else {
	bill2 setObjectTexture [0, "\a3\Missions_F_EPA\data\img\B_skirmish02_overview_CA.paa"];
};
if (395180 in getDLCs 1) then {
	bill3 setObjectTexture [0, _randomPic3];
} else {
	bill3 setObjectTexture [0, "\a3\Missions_F_EPA\data\img\B_skirmish02_overview_CA.paa"];
};
if (395180 in getDLCs 1) then {
	bill4 setObjectTexture [0, _randomPic4];
} else {
	bill4 setObjectTexture [0, "\a3\Missions_F_EPA\data\img\B_skirmish02_overview_CA.paa"];
};

