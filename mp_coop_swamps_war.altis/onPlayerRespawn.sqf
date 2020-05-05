player setCustomAimCoef 0.24; 
player setUnitRecoilCoefficient 0.30;
player enablestamina false;
player enableFatigue false;
player setUnitTrait ["camouflageCoef",0.4];
player setUnitTrait ['loadCoef',0.1];

// Ping NMEs at interval
// []execVM "PositionMarkers.sqf";

_actionID = player addAction ["Scan for Nearby Hostiles", "nme_scan.sqf"];