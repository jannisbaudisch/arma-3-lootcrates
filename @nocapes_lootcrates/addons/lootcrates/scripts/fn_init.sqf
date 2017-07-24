/*
	Author: Jannis (Tschuuut)
*/
if(!isServer) exitWith {};
_time = diag_tickTime;
_cfg = execVM "\noclc\config.sqf";
waitUntil{scriptDone _cfg;};
for "_i" from 1 to (NOCLC_minCrates + floor random(NOCLC_maxCrates - NOCLC_minCrates)) do {
	_type = NOCLC_crateTypes select (floor random count NOCLC_crateTypes);
	_pos = [[15350,15350],0,21708,3,0,0.25,0,[],[0,0,-100]] call BIS_fnc_findSafePos;
	_crate = (_type select 0) createVehicle _pos;
	
	_crate setDir random 360;
	
	clearWeaponCargoGlobal _crate;
	clearMagazineCargoGlobal _crate;
	clearItemCargoGlobal _crate;
	clearBackpackCargoGlobal _crate;
	
	{
		_crate addWeaponCargoGlobal [_x select 0, (_x select 1) + floor random(((_x select 2) + 1) - (_x select 1))];
	} forEach (_type select 1);

	{
		_crate addMagazineCargoGlobal [_x select 0, (_x select 1) + floor random(((_x select 2) + 1) - (_x select 1))];
	} forEach (_type select 2);

	{
		_crate addItemCargoGlobal [_x select 0, (_x select 1) + floor random(((_x select 2) + 1) - (_x select 1))];
	} forEach (_type select 3);

	{
		_crate addBackpackCargoGlobal [_x select 0, (_x select 1) + floor random(((_x select 2) + 1) - (_x select 1))];
	} forEach (_type select 4);
	
	if(NOCLC_showCratesOnMap) then {
		_marker = createMarker [format["crate_%1",_i],_pos];
		_marker setMarkerType "hd_dot";
		_marker setMarkerColor "ColorUNKNOWN";
	};
};

diag_log 		"-------------------------------------------------------------";
diag_log format["--- Initialized Arma 3 Lootcrates | Init took %1 seconds ---",diag_tickTime - _time];
diag_log 		"-------------------------------------------------------------";