/*******************************************************************************
                             Realizado por |ArgA|MIV
*******************************************************************************/
// El nombre de _functionName debe ser el nombre de la funcion completo (MIV_fnc_setInsignia). 
// Si es script el camino completo ("core\scripts\init_intro.sqf")

params ["_playerUnit","_functionName"];

if (isNil "MIV_CALLED_FUNCTIONS") exitWith { ["WPC0:",_playerUnit,_functionName,"MIV_CALLED_FUNCTIONS es Nil"] call MIV_fnc_Log; };

private _playerUID      = getPlayerUID _playerUnit;
private _searchForUID   = MIV_CALLED_FUNCTIONS select {_playerUID in _x};

["WPC1:",_playerUnit,_functionName,_searchForUID] call MIV_fnc_Log;

if (isNil "_searchForUID" || count _searchForUID == 0) exitWith {false};

private _functionSearch = _searchForUID select {_functionName in (_x select 1)};
["WPC2:",_playerUnit,_functionName,_functionSearch] call MIV_fnc_Log;

if (!isNil "_functionSearch" && count _functionSearch > 0) exitWith {true};

false

/*******************************************************************************
                             Realizado por |ArgA|MIV
*******************************************************************************/
//["WPC:",_playerUnit,_functionName,ZZZ] call MIV_fnc_Log;
