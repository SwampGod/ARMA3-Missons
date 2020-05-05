/*
    Author: Revo

    Description:
    Reveals units which are not on the player's side

    Parameter(s):
        0: number - Size of the area
        1: object - Center of the area to search in
        2: number - Delay between creation and deletion of markers
        3: number - Tolerance of positions in meters
    Returns:
    -
*/

_radius = param [0,50];
_center = param [1,player];
_deleteTime = param [2,100];
//_posTolerance = param [3,0];
_posTolerance = 0;

// _nearestUnits = nearestObjects [_center, ["Man"], _radius];

_nearestUnits = nearestObjects [player, ["man"], 200];

systemChat "Scanning in progress...";

for "_i" from 0 to (count _nearestUnits) - 1 do
{
    _unit = _nearestUnits select _i;
//	if (side _unit isEqualTo EAST) then
	if (side _unit == EAST) then
//    if (side _unit != playerSide) then
    {
        _marker = createMarker [format ["tempMarker_%1",_i], [_unit, _posTolerance, random(360)] call BIS_fnc_relPos];
        format ["tempMarker_%1",_i] setMarkerType "o_unknown";
        format ["tempMarker_%1",_i] setMarkerColor "ColorUNKNOWN";
        format ["tempMarker_%1",_i] setMarkerSize [0.5, 0.5];

    };
    sleep 1;
};

systemChat "Scanning complete.";
//systemChat format ["%1 hostile Entities found.",count _nearestUnits];
//systemChat format ["Position tolerance: %1 m",_posTolerance];
//sleep _deleteTime;
sleep 30;

for "_i" from 0 to (count _nearestUnits) - 1 do
{
    deleteMarker format ["tempMarker_%1",_i];
    sleep 1;
};