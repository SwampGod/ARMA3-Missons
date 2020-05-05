// Create new spawn area on destruction of object.
// Usage: 0 = ["MARKERNAME", "west", TARGETVARIABLENAME] execVM "createSpawnMarkers.sqf";

private ["_markername", "_respawn_side", "_pos", "_newmarkername", "_newmarker", "_target"];


_markername = [_this, 0] call BIS_fnc_param;
_respawn_side = [_this, 1] call BIS_fnc_param;
_target = [_this, 2] call BIS_fnc_param;


//_markername = "Tower_242";
//_respawn_side = "west";
//_target = XXXXXX;

_pos = getMarkerPos _markername;

waitUntil {sleep 5; not alive _target};

	_newmarkername = "respawn_" + _respawn_side + "_" + _markername;
	_newmarker = createMarker [_newmarkername, _pos];
	_newmarker setMarkerType "Empty";
//	_newmarker setMarkerType "mil_warning";

	deleteMarker _markername;

	systemchat "New respawn point available.";
	hint "New respawn point available.";
