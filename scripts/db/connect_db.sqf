/*******************************************************************************
                          Realizado por |ArgA|MandI
*******************************************************************************/

// Llamamos a la db
call compile preprocessFileLineNumbers "scripts\db\source\oo_extdb3.sqf";

sleep 2;

private _extdb3 = "new" call OO_EXTDB3;
["setIniSectionDatabase", "Database"] call _extdb3;
["setDatabaseName", "arga-log"] call _extdb3;
["setQueryType", "SQL"] call _extdb3;
_result = "connect" call _extdb3;
[format ["connection: %1", str _result]] call BIS_fnc_logFormat;
/////////////////////

_extdb3;

/*******************************************************************************
                          Realizado por |ArgA|MandI
*******************************************************************************/