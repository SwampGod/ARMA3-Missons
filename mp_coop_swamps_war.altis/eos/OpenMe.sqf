EOS_Spawn = compile preprocessfilelinenumbers "eos\core\eos_launch.sqf";Bastion_Spawn=compile preprocessfilelinenumbers "eos\core\b_launch.sqf";null=[] execVM "eos\core\spawn_fnc.sqf";onplayerConnected {[] execVM "eos\Functions\EOS_Markers.sqf";};
/* EOS 1.98 by BangaBob 
GROUP SIZES
 0 = 1
 1 = 2,4
 2 = 4,8
 3 = 8,12
 4 = 12,16
 5 = 16,20

EXAMPLE CALL - EOS
 null = [["MARKERNAME","MARKERNAME2"],[2,1,70],[0,1],[1,2,30],[2,60],[2],[1,0,10],[1,0,250,WEST]] call EOS_Spawn;
 null=[["M1","M2","M3"],[HOUSE GROUPS,SIZE OF GROUPS,PROBABILITY],[PATROL GROUPS,SIZE OF GROUPS,PROBABILITY],[LIGHT VEHICLES,SIZE OF CARGO,PROBABILITY],[ARMOURED VEHICLES,PROBABILITY], [STATIC VEHICLES,PROBABILITY],[HELICOPTERS,SIZE OF HELICOPTER CARGO,PROBABILITY],[FACTION,MARKERTYPE,DISTANCE,SIDE,HEIGHTLIMIT,DEBUG]] call EOS_Spawn;

EXAMPLE CALL - BASTION
 null = [["BAS_zone_1"],[3,1],[2,1],[2],[0,0],[0,0,EAST,false,false],[10,2,120,TRUE,TRUE]] call Bastion_Spawn;
 null=[["M1","M2","M3"],[PATROL GROUPS,SIZE OF GROUPS],[LIGHT VEHICLES,SIZE OF CARGO],[ARMOURED VEHICLES],[HELICOPTERS,SIZE OF HELICOPTER CARGO],[FACTION,MARKERTYPE,SIDE,HEIGHTLIMIT,DEBUG],[INITIAL PAUSE, NUMBER OF WAVES, DELAY BETWEEN WAVES, INTEGRATE EOS, SHOW HINTS]] call Bastion_Spawn;
*/
VictoryColor="colorGreen";	// Colour of marker after completion
hostileColor="colorRed";	// Default colour when enemies active
bastionColor="colorOrange";	// Colour for bastion marker
EOS_DAMAGE_MULTIPLIER=1;	// 1 is default
EOS_KILLCOUNTER=true;		// Counts killed units

null = [["EOSinf_1","EOSinf_2","EOS"],[5,3,75],[5,5,75],[2,2,75],[1,25],[2,11],[0,0],[0,0,350,EAST,FALSE]] call EOS_Spawn;
null = [["EOSmot_1","EOSmot_2"],[4,4],[0,0],[3,1,90],[2,60],[0],[1,0,90],[0,0,350,EAST,FALSE]] call EOS_Spawn;
//null = [["BAS_zone_1"],[0,1],[0,2],[0],[1,2],[0,0,EAST,TRUE],[0,2,120,TRUE,FALSE]] call Bastion_Spawn;
null = [["BAS_zone_1"],[5,3,75],[5,3,75],[2,2,75],[2,60],[2],[1,1,33],[0,0,450,EAST,FALSE]] call EOS_Spawn;

null = [["EOSinf_Kavala_North","EOSinf_Kavala_South"],[5,3,75],[5,5,75],[2,2,75],[1],[1],[1,1],[0,0,350,EAST,TRUE]] call EOS_Spawn;


null = [["EOS_1","EOS_2","EOS_3","EOS_4","EOS_5","EOS_6","EOS_7","EOS_8","EOS_9","EOS_10"],[5,3,75],[5,3,75],[2,2,75],[2,60],[2],[1,0,10],[0,0,450,EAST,FALSE]] call EOS_Spawn;

null = [["EOS_11","EOS_12","EOS_13","EOS_14","EOS_15","EOS_16","EOS_17","EOS_18","EOS_19","EOS_20"],[5,3,75],[5,3,75],[2,2,75],[2,60],[2],[1,1,33],[0,0,450,EAST,FALSE]] call EOS_Spawn;

null = [["EOS_21","EOS_22","EOS_23","EOS_24","EOS_25","EOS_26","EOS_27","EOS_28","EOS_29","EOS_30"],[5,3,75],[5,3,75],[2,2,75],[2,60],[2],[1,1,33],[0,0,450,EAST,FALSE]] call EOS_Spawn;

null = [["EOS_31","EOS_32","EOS_33","EOS_34","EOS_35","EOS_36","EOS_37","EOS_38","EOS_39","EOS_40"],[5,3,75],[5,3,75],[2,2,75],[2,60],[2],[1,1,33],[0,0,450,EAST,FALSE]] call EOS_Spawn;

null = [["EOS_41","EOS_42","EOS_43","EOS_44","EOS_45","EOS_46","EOS_47","EOS_48","EOS_49","EOS_50"],[5,3,75],[5,3,75],[2,2,75],[2,60],[2],[1,1,33],[0,0,450,EAST,FALSE]] call EOS_Spawn;

null = [["EOS_51","EOS_52","EOS_53","EOS_54","EOS_55","EOS_56","EOS_57","EOS_58","EOS_59","EOS_60"],[5,3,75],[5,3,75],[2,2,75],[2,60],[2],[1,1,33],[0,0,450,EAST,FALSE]] call EOS_Spawn;

null = [["EOS_61","EOS_62","EOS_63","EOS_64","EOS_65","EOS_66","EOS_67","EOS_68","EOS_69","EOS_70"],[5,3,75],[5,3,75],[2,2,75],[2,60],[2],[1,1,33],[0,0,450,EAST,FALSE]] call EOS_Spawn;

//null = [["EOS_71","EOS_72"],[0,1],[0,2],[0],[1,2],[0,0,EAST,TRUE],[0,2,120,TRUE,FALSE]] call Bastion_Spawn;
null = [["EOS_71","EOS_72","EOS_1010","EOS_1011","EOS_1012"],[5,3,75],[5,3,75],[2,2,75],[2,60],[2],[1,1,33],[0,0,450,EAST,FALSE]] call EOS_Spawn;